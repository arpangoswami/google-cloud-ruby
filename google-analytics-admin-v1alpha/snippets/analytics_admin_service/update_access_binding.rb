# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

# [START analyticsadmin_v1alpha_generated_AnalyticsAdminService_UpdateAccessBinding_sync]
require "google/analytics/admin/v1alpha"

##
# Snippet for the update_access_binding call in the AnalyticsAdminService service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client#update_access_binding.
#
def update_access_binding
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Analytics::Admin::V1alpha::UpdateAccessBindingRequest.new

  # Call the update_access_binding method.
  result = client.update_access_binding request

  # The returned object is of type Google::Analytics::Admin::V1alpha::AccessBinding.
  p result
end
# [END analyticsadmin_v1alpha_generated_AnalyticsAdminService_UpdateAccessBinding_sync]
