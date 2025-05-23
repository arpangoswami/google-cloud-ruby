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
    module Dataproc
      module V1
        # A request to create a session template.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource where this session template will be created.
        # @!attribute [rw] session_template
        #   @return [::Google::Cloud::Dataproc::V1::SessionTemplate]
        #     Required. The session template to create.
        class CreateSessionTemplateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to update a session template.
        # @!attribute [rw] session_template
        #   @return [::Google::Cloud::Dataproc::V1::SessionTemplate]
        #     Required. The updated session template.
        class UpdateSessionTemplateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to get the resource representation for a session template.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the session template to retrieve.
        class GetSessionTemplateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to list session templates in a project.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent that owns this collection of session templates.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of sessions to return in each response.
        #     The service may return fewer than this value.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A page token received from a previous `ListSessions` call.
        #     Provide this token to retrieve the subsequent page.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. A filter for the session templates to return in the response.
        #     Filters are case sensitive and have the following syntax:
        #
        #     [field = value] AND [field [= value]] ...
        class ListSessionTemplatesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A list of session templates.
        # @!attribute [r] session_templates
        #   @return [::Array<::Google::Cloud::Dataproc::V1::SessionTemplate>]
        #     Output only. Session template list
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token, which can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        class ListSessionTemplatesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to delete a session template.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the session template resource to delete.
        class DeleteSessionTemplateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A representation of a session template.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the session template.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Brief description of the template.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the template was created.
        # @!attribute [rw] jupyter_session
        #   @return [::Google::Cloud::Dataproc::V1::JupyterConfig]
        #     Optional. Jupyter session config.
        #
        #     Note: The following fields are mutually exclusive: `jupyter_session`, `spark_connect_session`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] spark_connect_session
        #   @return [::Google::Cloud::Dataproc::V1::SparkConnectConfig]
        #     Optional. Spark Connect session config.
        #
        #     Note: The following fields are mutually exclusive: `spark_connect_session`, `jupyter_session`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [r] creator
        #   @return [::String]
        #     Output only. The email address of the user who created the template.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Labels to associate with sessions created using this template.
        #     Label **keys** must contain 1 to 63 characters, and must conform to
        #     [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
        #     Label **values** can be empty, but, if present, must contain 1 to 63
        #     characters and conform to [RFC
        #     1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be
        #     associated with a session.
        # @!attribute [rw] runtime_config
        #   @return [::Google::Cloud::Dataproc::V1::RuntimeConfig]
        #     Optional. Runtime configuration for session execution.
        # @!attribute [rw] environment_config
        #   @return [::Google::Cloud::Dataproc::V1::EnvironmentConfig]
        #     Optional. Environment configuration for session execution.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the template was last updated.
        # @!attribute [r] uuid
        #   @return [::String]
        #     Output only. A session template UUID (Unique Universal Identifier). The
        #     service generates this value when it creates the session template.
        class SessionTemplate
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
        end
      end
    end
  end
end
