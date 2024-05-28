# frozen_string_literal: true

# Copyright 2024 Google LLC
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


module Google
  module Cloud
    module DiscoveryEngine
      module V1beta
        # Metadata and configurations for a Google Cloud project in the service.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. Full resource name of the project, for example
        #     `projects/{project_number}`.
        #     Note that when making requests, project number and project id are both
        #     acceptable, but the server will always respond in project number.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when this project is created.
        # @!attribute [r] provision_completion_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when this project is successfully provisioned.
        #     Empty value means this project is still provisioning and is not ready for
        #     use.
        # @!attribute [r] service_terms_map
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::DiscoveryEngine::V1beta::Project::ServiceTerms}]
        #     Output only. A map of terms of services. The key is the `id` of
        #     {::Google::Cloud::DiscoveryEngine::V1beta::Project::ServiceTerms ServiceTerms}.
        class Project
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Metadata about the terms of service.
          # @!attribute [rw] id
          #   @return [::String]
          #     The unique identifier of this terms of service.
          #     Available terms:
          #
          #     * `GA_DATA_USE_TERMS`: [Terms for data
          #     use](https://cloud.google.com/retail/data-use-terms). When using this as
          #     `id`, the acceptable
          #     {::Google::Cloud::DiscoveryEngine::V1beta::Project::ServiceTerms#version version}
          #     to provide is `2022-11-23`.
          # @!attribute [rw] version
          #   @return [::String]
          #     The version string of the terms of service.
          #     For acceptable values, see the comments for
          #     {::Google::Cloud::DiscoveryEngine::V1beta::Project::ServiceTerms#id id} above.
          # @!attribute [rw] state
          #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Project::ServiceTerms::State]
          #     Whether the project has accepted/rejected the service terms or it is
          #     still pending.
          # @!attribute [rw] accept_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The last time when the project agreed to the terms of service.
          # @!attribute [rw] decline_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The last time when the project declined or revoked the agreement to terms
          #     of service.
          class ServiceTerms
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The agreement states this terms of service.
            module State
              # The default value of the enum. This value is not actually used.
              STATE_UNSPECIFIED = 0

              # The project has given consent to the terms of service.
              TERMS_ACCEPTED = 1

              # The project is pending to review and accept the terms of service.
              TERMS_PENDING = 2

              # The project has declined or revoked the agreement to terms of service.
              TERMS_DECLINED = 3
            end
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Project::ServiceTerms]
          class ServiceTermsMapEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
