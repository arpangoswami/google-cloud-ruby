# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/run/v2/task.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/run/v2/condition_pb'
require 'google/cloud/run/v2/k8s.min_pb'
require 'google/cloud/run/v2/vendor_settings_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/run/v2/task.proto", :syntax => :proto3) do
    add_message "google.cloud.run.v2.GetTaskRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.run.v2.ListTasksRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :show_deleted, :bool, 4
    end
    add_message "google.cloud.run.v2.ListTasksResponse" do
      repeated :tasks, :message, 1, "google.cloud.run.v2.Task"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.run.v2.Task" do
      optional :name, :string, 1
      optional :uid, :string, 2
      optional :generation, :int64, 3
      map :labels, :string, :string, 4
      map :annotations, :string, :string, 5
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :start_time, :message, 27, "google.protobuf.Timestamp"
      optional :completion_time, :message, 7, "google.protobuf.Timestamp"
      optional :update_time, :message, 8, "google.protobuf.Timestamp"
      optional :delete_time, :message, 9, "google.protobuf.Timestamp"
      optional :expire_time, :message, 10, "google.protobuf.Timestamp"
      optional :job, :string, 12
      optional :execution, :string, 13
      repeated :containers, :message, 14, "google.cloud.run.v2.Container"
      repeated :volumes, :message, 15, "google.cloud.run.v2.Volume"
      optional :max_retries, :int32, 16
      optional :timeout, :message, 17, "google.protobuf.Duration"
      optional :service_account, :string, 18
      optional :execution_environment, :enum, 20, "google.cloud.run.v2.ExecutionEnvironment"
      optional :reconciling, :bool, 21
      repeated :conditions, :message, 22, "google.cloud.run.v2.Condition"
      optional :observed_generation, :int64, 23
      optional :index, :int32, 24
      optional :retried, :int32, 25
      optional :last_attempt_result, :message, 26, "google.cloud.run.v2.TaskAttemptResult"
      optional :encryption_key, :string, 28
      optional :vpc_access, :message, 29, "google.cloud.run.v2.VpcAccess"
      optional :log_uri, :string, 32
      optional :satisfies_pzs, :bool, 33
      optional :etag, :string, 99
    end
    add_message "google.cloud.run.v2.TaskAttemptResult" do
      optional :status, :message, 1, "google.rpc.Status"
      optional :exit_code, :int32, 2
    end
  end
end

module Google
  module Cloud
    module Run
      module V2
        GetTaskRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.GetTaskRequest").msgclass
        ListTasksRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ListTasksRequest").msgclass
        ListTasksResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ListTasksResponse").msgclass
        Task = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Task").msgclass
        TaskAttemptResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.TaskAttemptResult").msgclass
      end
    end
  end
end
