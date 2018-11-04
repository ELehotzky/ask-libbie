# -*- coding: utf-8 -*- #
# Copyright 2018 Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
"""Provides common arguments for the Serverless command surface."""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function
from __future__ import unicode_literals

import os
import re

from googlecloudsdk.command_lib.functions.deploy import env_vars_util
from googlecloudsdk.command_lib.serverless import config_changes
from googlecloudsdk.command_lib.serverless import local_config
from googlecloudsdk.command_lib.serverless import source_ref as source_ref_util
from googlecloudsdk.core import exceptions
from googlecloudsdk.core import log
from googlecloudsdk.core import properties
from googlecloudsdk.core.console import console_io

# TODO(b/72568833): Use API to list available regions when available.
REGIONS = ['us-central1']


class ArgumentError(exceptions.Error):
  pass


def _AddSourceArg(parser):
  """Add a source resource arg."""
  parser.add_argument(
      '--source',
      # TODO(b/110538411): re-expose source arg when it's time.
      hidden=True,
      help="""\
      The app source. Defaults to the working directory. May be a GCS bucket,
      Google source code repository, or directory on the local filesystem.
      """)


def _AddImageArg(parser):
  """Add an image resource arg."""
  parser.add_argument(
      '--image',
      help='The path to the GCR container to deploy.')


def AddAsyncFlag(parser):
  """Add an async flag."""
  parser.add_argument(
      '--async', default=False, action='store_true',
      help='True to deploy asynchronously.')


def AddServiceFlag(parser):
  """Add a service resource flag."""
  parser.add_argument(
      '--service', required=False,
      help='Limit matched revisions to the given service.')


def AddSourceRefFlags(parser):
  """Add the image and source args."""
  source_ref_group = parser.add_mutually_exclusive_group()
  _AddSourceArg(source_ref_group)
  _AddImageArg(source_ref_group)


def AddRegionArg(parser):
  """Add a region arg."""
  parser.add_argument(
      '--region', help='The region in which to create the service.')


def AddFunctionArg(parser):
  """Add a function resource arg."""
  parser.add_argument(
      '--function',
      hidden=True,
      help="""\
      Specifies that the deployed object is a function. If a value is
      provided, that value is used as the entrypoint.
      """)


def AddMutexEnvVarsFlags(parser):
  """Add flags for creating updating and deleting env vars."""
  env_vars_util.AddUpdateEnvVarsFlags(parser)


def AddMemoryFlag(parser):
  parser.add_argument('--memory',
                      help='Set a memory limit. Ex: 1Gi, 512Mi.')


def AddConcurrencyFlag(parser):
  parser.add_argument('--concurrency',
                      help='Set the number of concurrent requests allowed per '
                      'instance. A concurrency of 0 indicates any number of '
                      'concurrent requests are allowed. To unset this field, '
                      'provide the special value `default`.')


def _HasEnvChanges(args):
  """True iff any of the env var flags are set."""
  env_flags = ['update_env_vars', 'set_env_vars',
               'remove_env_vars', 'clear_env_vars']
  return any(args.IsSpecified(flag) for flag in env_flags)


def _GetEnvChanges(args):
  """Return config_changes.EnvVarChanges for given args."""
  kwargs = {}

  update = args.update_env_vars or args.set_env_vars
  if update:
    kwargs['env_vars_to_update'] = update

  remove = args.remove_env_vars
  if remove:
    kwargs['env_vars_to_remove'] = remove

  if args.set_env_vars or args.clear_env_vars:
    kwargs['clear_others'] = True

  return config_changes.EnvVarChanges(**kwargs)


def GetConfigurationChanges(args):
  """Returns a list of changes to Configuration, based on the flags set."""
  changes = []
  if _HasEnvChanges(args):
    changes.append(_GetEnvChanges(args))

  if 'memory' in args and args.memory:
    changes.append(config_changes.ResourceChanges(memory=args.memory))
  if 'concurrency' in args and args.concurrency:
    try:
      c = int(args.concurrency)
    except ValueError:
      c = args.concurrency
      if c != 'default':
        log.warning('Specifying concurrency as Single or Multi is deprecated; '
                    'an integer is preferred.')
    changes.append(config_changes.ConcurrencyChanges(concurrency=c))
  return changes


def GetFunction(function_arg):
  """Returns the function name, or None if not deploying a function."""
  return function_arg


def GetService(args):
  """Get and validate the service resource from the args."""
  service_ref = args.CONCEPTS.service.Parse()
  # Valid service names comprise only alphanumeric characters and dashes. Must
  # not begin or end with a dash, and must not contain more than 63 characters.
  # Must be lowercase.
  service_re = re.compile(r'(?=^[a-z0-9-]{1,63}$)(?!^\-.*)(?!.*\-$)')
  if service_re.match(service_ref.servicesId):
    return service_ref
  raise ArgumentError(
      'Invalid service name [{}].'.format(service_ref.servicesId))


def GetSourceRef(source_arg, image_arg):
  """Return a SourceRef representing either image path or source directory."""
  if image_arg:
    return source_ref_util.SourceRef.MakeImageRef(image_arg)
  elif source_arg:
    return source_ref_util.SourceRef.MakeDirRef(source_arg)
  else:
    raise ArgumentError(
        'You must provide a container image using the --image flag.')


def GetLocalConfig(args):
  src = getattr(args, 'source', None)
  if not src:
    return None
  fname = os.path.join(src, local_config.DEFAULT_LOCAL_CONFIG_NAME)
  if not os.path.exists(fname):
    return None
  return local_config.LocalConfig.ParseFrom(fname)


def GetRegion(args, prompt=False):
  """Prompt for region if not provided.

  Region is decided in the following order:
  - region argument;
  - local config file;
  - serverless/region gcloud config;
  - compute/region gcloud config;
  - prompt user.

  Args:
    args: Namespace, The args namespace.
    prompt: bool, whether to attempt to prompt.

  Returns:
    A str representing region.
  """
  if getattr(args, 'region', None):
    return args.region
  conf = GetLocalConfig(args)
  if conf and conf.region:
    return conf.region
  if properties.VALUES.serverless.region.IsExplicitlySet():
    return properties.VALUES.serverless.region.Get()
  if properties.VALUES.compute.region.IsExplicitlySet():
    return properties.VALUES.compute.region.Get()
  if prompt and console_io.CanPrompt():
    idx = console_io.PromptChoice(
        REGIONS, message='Please specify a region:\n', cancel_option=True)
    region = REGIONS[idx]
    log.status.Print(
        'To make this the default region, run '
        '`gcloud config set serverless/region {}`.'.format(region))
    return region

