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
        # SiteSearchEngine captures DataStore level site search persisting
        # configurations. It is a singleton value per data store.
        # @!attribute [rw] name
        #   @return [::String]
        #     The fully qualified resource name of the site search engine.
        #     Format: `projects/*/locations/*/dataStores/*/siteSearchEngine`
        class SiteSearchEngine
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A target site for the SiteSearchEngine.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The fully qualified resource name of the target site.
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine/targetSites/{target_site}`
        #     The `target_site_id` is system-generated.
        # @!attribute [rw] provided_uri_pattern
        #   @return [::String]
        #     Required. Input only. The user provided URI pattern from which the
        #     `generated_uri_pattern` is generated.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::TargetSite::Type]
        #     The type of the target site, e.g., whether the site is to be included or
        #     excluded.
        # @!attribute [rw] exact_match
        #   @return [::Boolean]
        #     Input only. If set to false, a uri_pattern is generated to include all
        #     pages whose address contains the provided_uri_pattern. If set to true, an
        #     uri_pattern is generated to try to be an exact match of the
        #     provided_uri_pattern or just the specific page if the provided_uri_pattern
        #     is a specific one. provided_uri_pattern is always normalized to
        #     generate the URI pattern to be used by the search engine.
        # @!attribute [r] generated_uri_pattern
        #   @return [::String]
        #     Output only. This is system-generated based on the provided_uri_pattern.
        # @!attribute [r] root_domain_uri
        #   @return [::String]
        #     Output only. Root domain of the provided_uri_pattern.
        # @!attribute [r] site_verification_info
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::SiteVerificationInfo]
        #     Output only. Site ownership and validity verification status.
        # @!attribute [r] indexing_status
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::TargetSite::IndexingStatus]
        #     Output only. Indexing status.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The target site's last updated time.
        # @!attribute [r] failure_reason
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::TargetSite::FailureReason]
        #     Output only. Failure reason.
        class TargetSite
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Site search indexing failure reasons.
          # @!attribute [rw] quota_failure
          #   @return [::Google::Cloud::DiscoveryEngine::V1beta::TargetSite::FailureReason::QuotaFailure]
          #     Failed due to insufficient quota.
          class FailureReason
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Failed due to insufficient quota.
            # @!attribute [rw] total_required_quota
            #   @return [::Integer]
            #     This number is an estimation on how much total quota this project needs
            #     to successfully complete indexing.
            class QuotaFailure
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Possible target site types.
          module Type
            # This value is unused. In this case, server behavior defaults to
            # {::Google::Cloud::DiscoveryEngine::V1beta::TargetSite::Type::INCLUDE Type.INCLUDE}.
            TYPE_UNSPECIFIED = 0

            # Include the target site.
            INCLUDE = 1

            # Exclude the target site.
            EXCLUDE = 2
          end

          # Target site indexing status enumeration.
          module IndexingStatus
            # Defaults to SUCCEEDED.
            INDEXING_STATUS_UNSPECIFIED = 0

            # The target site is in the update queue and will be picked up by indexing
            # pipeline.
            PENDING = 1

            # The target site fails to be indexed.
            FAILED = 2

            # The target site has been indexed.
            SUCCEEDED = 3

            # The previously indexed target site has been marked to be deleted. This is
            # a transitioning state which will resulted in either:
            # 1. target site deleted if unindexing is successful;
            # 2. state reverts to SUCCEEDED if the unindexing fails.
            DELETING = 4
          end
        end

        # Verification information for target sites in advanced site search.
        # @!attribute [rw] site_verification_state
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::SiteVerificationInfo::SiteVerificationState]
        #     Site verification state indicating the ownership and validity.
        # @!attribute [rw] verify_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Latest site verification time.
        class SiteVerificationInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Site verification state.
          module SiteVerificationState
            # Defaults to VERIFIED.
            SITE_VERIFICATION_STATE_UNSPECIFIED = 0

            # Site ownership verified.
            VERIFIED = 1

            # Site ownership pending verification or verification failed.
            UNVERIFIED = 2

            # Site exempt from verification, e.g., a public website that opens to all.
            EXEMPTED = 3
          end
        end
      end
    end
  end
end
