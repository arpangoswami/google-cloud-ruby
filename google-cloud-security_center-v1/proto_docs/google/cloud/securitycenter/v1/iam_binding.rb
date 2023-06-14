# frozen_string_literal: true

# Copyright 2022 Google LLC
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
    module SecurityCenter
      module V1
        # Represents a particular IAM binding, which captures a member's role addition,
        # removal, or state.
        # @!attribute [rw] action
        #   @return [::Google::Cloud::SecurityCenter::V1::IamBinding::Action]
        #     The action that was performed on a Binding.
        # @!attribute [rw] role
        #   @return [::String]
        #     Role that is assigned to "members".
        #     For example, "roles/viewer", "roles/editor", or "roles/owner".
        # @!attribute [rw] member
        #   @return [::String]
        #     A single identity requesting access for a Cloud Platform resource, for
        #     example, "foo@google.com".
        class IamBinding
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The type of action performed on a Binding in a policy.
          module Action
            # Unspecified.
            ACTION_UNSPECIFIED = 0

            # Addition of a Binding.
            ADD = 1

            # Removal of a Binding.
            REMOVE = 2
          end
        end
      end
    end
  end
end
