# -*- coding: utf-8 -*- #
# Copyright 2017 Google Inc. All Rights Reserved.
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
"""Command for listing available configurations."""

from __future__ import absolute_import
from __future__ import division
from __future__ import unicode_literals

from googlecloudsdk.calliope import base
from googlecloudsdk.command_lib.serverless import flags
from googlecloudsdk.command_lib.serverless import resource_args
from googlecloudsdk.command_lib.serverless import serverless_operations
from googlecloudsdk.command_lib.util.concepts import concept_parsers
from googlecloudsdk.command_lib.util.concepts import presentation_specs


@base.ReleaseTracks(base.ReleaseTrack.ALPHA)
class List(base.ListCommand):
  """List available Configurations.

  Every Configuration is paired with a Service of the same name.
  """

  detailed_help = {
      'DESCRIPTION': """\
          {description}
          """,
      'EXAMPLES': """\
          To list available services:

              $ {command}
          """,
  }

  @staticmethod
  def Args(parser):
    flags.AddRegionArg(parser)
    namespace_presentation = presentation_specs.ResourcePresentationSpec(
        '--namespace',
        resource_args.GetNamespaceResourceSpec(),
        'Namespace list configurations in.',
        required=True,
        prefixes=False)
    concept_parsers.ConceptParser([
        resource_args.CLUSTER_PRESENTATION,
        namespace_presentation]).AddToParser(parser)
    parser.display_info.AddFormat(
        'table(metadata.name:label=CONFIGURATION,'
        'status.latestCreatedRevisionName:label="LATEST REVISION",'
        'status.latestReadyRevisionName:label="LATEST READY REVISION")')

  def Run(self, args):
    """List available configurations."""
    cluster_ref = args.CONCEPTS.cluster.Parse()
    namespace_ref = args.CONCEPTS.namespace.Parse()
    with serverless_operations.Connect(cluster_ref) as client:
      return client.ListConfigurations(namespace_ref)
