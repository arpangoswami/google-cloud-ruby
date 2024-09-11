# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1beta/custom_tuning_model.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n=google/cloud/discoveryengine/v1beta/custom_tuning_model.proto\x12#google.cloud.discoveryengine.v1beta\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xbe\x07\n\x11\x43ustomTuningModel\x12\x46\n\x04name\x18\x01 \x01(\tB8\xe0\x41\x02\xfa\x41\x32\n0discoveryengine.googleapis.com/CustomTuningModel\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x15\n\rmodel_version\x18\x03 \x01(\x03\x12V\n\x0bmodel_state\x18\x04 \x01(\x0e\x32\x41.google.cloud.discoveryengine.v1beta.CustomTuningModel.ModelState\x12\x33\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x02\x18\x01\x12\x37\n\x13training_start_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12T\n\x07metrics\x18\x07 \x03(\x0b\x32\x43.google.cloud.discoveryengine.v1beta.CustomTuningModel.MetricsEntry\x1a.\n\x0cMetricsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x01:\x02\x38\x01\"\xc0\x01\n\nModelState\x12\x1b\n\x17MODEL_STATE_UNSPECIFIED\x10\x00\x12\x13\n\x0fTRAINING_PAUSED\x10\x01\x12\x0c\n\x08TRAINING\x10\x02\x12\x15\n\x11TRAINING_COMPLETE\x10\x03\x12\x15\n\x11READY_FOR_SERVING\x10\x04\x12\x13\n\x0fTRAINING_FAILED\x10\x05\x12\x12\n\x0eNO_IMPROVEMENT\x10\x06\x12\x1b\n\x17INPUT_VALIDATION_FAILED\x10\x07:\xa4\x02\xea\x41\xa0\x02\n0discoveryengine.googleapis.com/CustomTuningModel\x12hprojects/{project}/locations/{location}/dataStores/{data_store}/customTuningModels/{custom_tuning_model}\x12\x81\x01projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/customTuningModels/{custom_tuning_model}B\x9d\x02\n\'com.google.cloud.discoveryengine.v1betaB\x16\x43ustomTuningModelProtoP\x01ZQcloud.google.com/go/discoveryengine/apiv1beta/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02#Google.Cloud.DiscoveryEngine.V1Beta\xca\x02#Google\\Cloud\\DiscoveryEngine\\V1beta\xea\x02&Google::Cloud::DiscoveryEngine::V1betab\x06proto3"

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
    module DiscoveryEngine
      module V1beta
        CustomTuningModel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.CustomTuningModel").msgclass
        CustomTuningModel::ModelState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.CustomTuningModel.ModelState").enummodule
      end
    end
  end
end
