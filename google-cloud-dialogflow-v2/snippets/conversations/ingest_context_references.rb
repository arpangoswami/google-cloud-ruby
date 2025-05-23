# frozen_string_literal: true

# Copyright 2025 Google LLC
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

# [START dialogflow_v2_generated_Conversations_IngestContextReferences_sync]
require "google/cloud/dialogflow/v2"

##
# Snippet for the ingest_context_references call in the Conversations service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Dialogflow::V2::Conversations::Client#ingest_context_references.
#
def ingest_context_references
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Dialogflow::V2::Conversations::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Dialogflow::V2::IngestContextReferencesRequest.new

  # Call the ingest_context_references method.
  result = client.ingest_context_references request

  # The returned object is of type Google::Cloud::Dialogflow::V2::IngestContextReferencesResponse.
  p result
end
# [END dialogflow_v2_generated_Conversations_IngestContextReferences_sync]
