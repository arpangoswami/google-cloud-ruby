# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/notebook_execution_job.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/job_state_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n7google/cloud/aiplatform/v1/notebook_execution_job.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a*google/cloud/aiplatform/v1/job_state.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\xcd\x0b\n\x14NotebookExecutionJob\x12o\n\x1a\x64\x61taform_repository_source\x18\x03 \x01(\x0b\x32I.google.cloud.aiplatform.v1.NotebookExecutionJob.DataformRepositorySourceH\x00\x12\x61\n\x13gcs_notebook_source\x18\x04 \x01(\x0b\x32\x42.google.cloud.aiplatform.v1.NotebookExecutionJob.GcsNotebookSourceH\x00\x12g\n\x16\x64irect_notebook_source\x18\x11 \x01(\x0b\x32\x45.google.cloud.aiplatform.v1.NotebookExecutionJob.DirectNotebookSourceH\x00\x12i\n\'notebook_runtime_template_resource_name\x18\x0e \x01(\tB6\xfa\x41\x33\n1aiplatform.googleapis.com/NotebookRuntimeTemplateH\x01\x12\x18\n\x0egcs_output_uri\x18\x08 \x01(\tH\x02\x12\x18\n\x0e\x65xecution_user\x18\t \x01(\tH\x03\x12\x19\n\x0fservice_account\x18\x12 \x01(\tH\x03\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x34\n\x11\x65xecution_timeout\x18\x05 \x01(\x0b\x32\x19.google.protobuf.Duration\x12J\n\x16schedule_resource_name\x18\x06 \x01(\tB*\xe0\x41\x03\xfa\x41$\n\"aiplatform.googleapis.com/Schedule\x12<\n\tjob_state\x18\n \x01(\x0e\x32$.google.cloud.aiplatform.v1.JobStateB\x03\xe0\x41\x03\x12\'\n\x06status\x18\x0b \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x0c \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\r \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12L\n\x06labels\x18\x13 \x03(\x0b\x32<.google.cloud.aiplatform.v1.NotebookExecutionJob.LabelsEntry\x1aY\n\x18\x44\x61taformRepositorySource\x12)\n!dataform_repository_resource_name\x18\x01 \x01(\t\x12\x12\n\ncommit_sha\x18\x02 \x01(\t\x1a\x34\n\x11GcsNotebookSource\x12\x0b\n\x03uri\x18\x01 \x01(\t\x12\x12\n\ngeneration\x18\x02 \x01(\t\x1a\'\n\x14\x44irectNotebookSource\x12\x0f\n\x07\x63ontent\x18\x01 \x01(\x0c\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\xb9\x01\xea\x41\xb5\x01\n.aiplatform.googleapis.com/NotebookExecutionJob\x12Vprojects/{project}/locations/{location}/notebookExecutionJobs/{notebook_execution_job}*\x15notebookExecutionJobs2\x14notebookExecutionJobB\x11\n\x0fnotebook_sourceB\x12\n\x10\x65nvironment_specB\x10\n\x0e\x65xecution_sinkB\x14\n\x12\x65xecution_identityB\xd7\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x19NotebookExecutionJobProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module AIPlatform
      module V1
        NotebookExecutionJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NotebookExecutionJob").msgclass
        NotebookExecutionJob::DataformRepositorySource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NotebookExecutionJob.DataformRepositorySource").msgclass
        NotebookExecutionJob::GcsNotebookSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NotebookExecutionJob.GcsNotebookSource").msgclass
        NotebookExecutionJob::DirectNotebookSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.NotebookExecutionJob.DirectNotebookSource").msgclass
      end
    end
  end
end
