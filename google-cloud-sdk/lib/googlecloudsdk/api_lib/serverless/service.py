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
"""Wraps a Serverless Service message, making fields more convenient."""

from __future__ import absolute_import
from __future__ import division
from __future__ import unicode_literals

from googlecloudsdk.api_lib.serverless import configuration
from googlecloudsdk.api_lib.serverless import k8s_object


class Service(k8s_object.KubernetesObject):
  """Wraps a Serverless Service message, making fields more convenient.

  Setting properties on a Service (where possible) writes through to the
  nested Kubernetes-style fields.
  """
  API_CATEGORY = 'serving.knative.dev'
  KIND = 'Service'

  @classmethod
  def New(cls, client, namespace):
    ret = super(Service, cls).New(client, namespace)
    # We're in oneOf territory, set the other to None for now.
    ret.spec.pinned = None
    # The build is also a oneOf
    # TODO(b/112662240): Remove conditional once this field is public
    if hasattr(ret.configuration.spec, 'build'):
      ret.configuration.spec.build = None
    # Unset a pile of unused things on the container.
    ret.configuration.container.lifecycle = None
    ret.configuration.container.livenessProbe = None
    ret.configuration.container.readinessProbe = None
    ret.configuration.container.resources = None
    ret.configuration.container.securityContext = None
    return ret

  @property
  def configuration(self):
    """Configuration (configuration.Configuration) of the service, if any."""
    options = (self._m.spec.pinned, self._m.spec.runLatest)
    ret = next((o.configuration for o in options if o is not None), None)
    return configuration.Configuration.SpecOnly(ret, self._messages)

  @property
  def domain(self):
    return self._m.status.domain
