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
    module Run
      module V2
        # TaskTemplate describes the data a task should have when created
        # from a template.
        # @!attribute [rw] containers
        #   @return [::Array<::Google::Cloud::Run::V2::Container>]
        #     Holds the single container that defines the unit of execution for this
        #     task.
        # @!attribute [rw] volumes
        #   @return [::Array<::Google::Cloud::Run::V2::Volume>]
        #     A list of Volumes to make available to containers.
        # @!attribute [rw] max_retries
        #   @return [::Integer]
        #     Number of retries allowed per Task, before marking this Task failed.
        #     Defaults to 3.
        # @!attribute [rw] timeout
        #   @return [::Google::Protobuf::Duration]
        #     Max allowed time duration the Task may be active before the system will
        #     actively try to mark it failed and kill associated containers. This applies
        #     per attempt of a task, meaning each retry can run for the full timeout.
        #     Defaults to 600 seconds.
        # @!attribute [rw] service_account
        #   @return [::String]
        #     Email address of the IAM service account associated with the Task of a
        #     Job. The service account represents the identity of the
        #     running task, and determines what permissions the task has. If
        #     not provided, the task will use the project's default service account.
        # @!attribute [rw] execution_environment
        #   @return [::Google::Cloud::Run::V2::ExecutionEnvironment]
        #     The execution environment being used to host this Task.
        # @!attribute [rw] encryption_key
        #   @return [::String]
        #     A reference to a customer managed encryption key (CMEK) to use to encrypt
        #     this container image. For more information, go to
        #     https://cloud.google.com/run/docs/securing/using-cmek
        # @!attribute [rw] vpc_access
        #   @return [::Google::Cloud::Run::V2::VpcAccess]
        #     VPC Access configuration to use for this Task. For more information,
        #     visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
        class TaskTemplate
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
