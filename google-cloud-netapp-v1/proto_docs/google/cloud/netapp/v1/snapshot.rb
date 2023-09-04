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


module Google
  module Cloud
    module NetApp
      module V1
        # ListSnapshotsRequest lists snapshots.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The volume for which to retrieve snapshot information,
        #     in the format
        #     `projects/{project_id}/locations/{location}/volumes/{volume_id}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The next_page_token value to use if there are additional
        #     results to retrieve for this list request.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Sort results. Supported values are "name", "name desc" or "" (unsorted).
        # @!attribute [rw] filter
        #   @return [::String]
        #     List filter.
        class ListSnapshotsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ListSnapshotsResponse is the result of ListSnapshotsRequest.
        # @!attribute [rw] snapshots
        #   @return [::Array<::Google::Cloud::NetApp::V1::Snapshot>]
        #     A list of snapshots in the project for the specified volume.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The token you can use to retrieve the next page of results. Not returned
        #     if there are no more results in the list.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListSnapshotsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # GetSnapshotRequest gets the state of a snapshot.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The snapshot resource name, in the format
        #     `projects/{project_id}/locations/{location}/volumes/{volume_id}/snapshots/{snapshot_id}`
        class GetSnapshotRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # CreateSnapshotRequest creates a snapshot.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The NetApp volume to create the snapshots of, in the format
        #     `projects/{project_id}/locations/{location}/volumes/{volume_id}`
        # @!attribute [rw] snapshot
        #   @return [::Google::Cloud::NetApp::V1::Snapshot]
        #     Required. A snapshot resource
        # @!attribute [rw] snapshot_id
        #   @return [::String]
        #     Required. ID of the snapshot to create.
        #     This value must start with a lowercase letter followed by up to 62
        #     lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
        class CreateSnapshotRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # DeleteSnapshotRequest deletes a snapshot.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The snapshot resource name, in the format
        #     `projects/*/locations/*/volumes/*/snapshots/{snapshot_id}`
        class DeleteSnapshotRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # UpdateSnapshotRequest updates description and/or labels for a snapshot.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask of fields to update.  At least one path must be supplied in
        #     this field.
        # @!attribute [rw] snapshot
        #   @return [::Google::Cloud::NetApp::V1::Snapshot]
        #     Required. A snapshot resource
        class UpdateSnapshotRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the snapshot.
        #     Format:
        #     `projects/{project_id}/locations/{location}/volumes/{volume_id}/snapshots/{snapshot_id}`.
        # @!attribute [r] state
        #   @return [::Google::Cloud::NetApp::V1::Snapshot::State]
        #     Output only. The snapshot state.
        # @!attribute [r] state_details
        #   @return [::String]
        #     Output only. State details of the storage pool
        # @!attribute [rw] description
        #   @return [::String]
        #     A description of the snapshot with 2048 characters or less.
        #     Requests with longer descriptions will be rejected.
        # @!attribute [r] used_bytes
        #   @return [::Float]
        #     Output only. Current storage usage for the snapshot in bytes.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the snapshot was created.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Resource labels to represent user provided metadata.
        class Snapshot
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The Snapshot States
          module State
            # Unspecified Snapshot State
            STATE_UNSPECIFIED = 0

            # Snapshot State is Ready
            READY = 1

            # Snapshot State is Creating
            CREATING = 2

            # Snapshot State is Deleting
            DELETING = 3

            # Snapshot State is Updating
            UPDATING = 4

            # Snapshot State is Disabled
            DISABLED = 5

            # Snapshot State is Error
            ERROR = 6
          end
        end
      end
    end
  end
end
