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

# [START netapp_v1_generated_NetApp_GetActiveDirectory_sync]
require "google/cloud/netapp/v1"

##
# Snippet for the get_active_directory call in the NetApp service
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::NetApp::V1::NetApp::Client#get_active_directory. It may require
# modification in order to execute successfully.
#
def get_active_directory
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::NetApp::V1::NetApp::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::NetApp::V1::GetActiveDirectoryRequest.new

  # Call the get_active_directory method.
  result = client.get_active_directory request

  # The returned object is of type Google::Cloud::NetApp::V1::ActiveDirectory.
  p result
end
# [END netapp_v1_generated_NetApp_GetActiveDirectory_sync]
