# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1beta/common.proto

require 'google/protobuf'

require 'google/api/resource_pb'


descriptor_data = "\n0google/cloud/discoveryengine/v1beta/common.proto\x12#google.cloud.discoveryengine.v1beta\x1a\x19google/api/resource.proto\"x\n\x08Interval\x12\x11\n\x07minimum\x18\x01 \x01(\x01H\x00\x12\x1b\n\x11\x65xclusive_minimum\x18\x02 \x01(\x01H\x00\x12\x11\n\x07maximum\x18\x03 \x01(\x01H\x01\x12\x1b\n\x11\x65xclusive_maximum\x18\x04 \x01(\x01H\x01\x42\x05\n\x03minB\x05\n\x03max\"0\n\x0f\x43ustomAttribute\x12\x0c\n\x04text\x18\x01 \x03(\t\x12\x0f\n\x07numbers\x18\x02 \x03(\x01\"/\n\x08UserInfo\x12\x0f\n\x07user_id\x18\x01 \x01(\t\x12\x12\n\nuser_agent\x18\x02 \x01(\tB\xd2\x07\n\'com.google.cloud.discoveryengine.v1betaB\x0b\x43ommonProtoP\x01ZQcloud.google.com/go/discoveryengine/apiv1beta/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02#Google.Cloud.DiscoveryEngine.V1Beta\xca\x02#Google\\Cloud\\DiscoveryEngine\\V1beta\xea\x02&Google::Cloud::DiscoveryEngine::V1beta\xea\x41\xe6\x01\n%discoveryengine.googleapis.com/Branch\x12Qprojects/{project}/locations/{location}/dataStores/{data_store}/branches/{branch}\x12jprojects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}\xea\x41\xc5\x01\n(discoveryengine.googleapis.com/DataStore\x12?projects/{project}/locations/{location}/dataStores/{data_store}\x12Xprojects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}\xea\x41\x89\x02\n,discoveryengine.googleapis.com/ServingConfig\x12_projects/{project}/locations/{location}/dataStores/{data_store}/servingConfigs/{serving_config}\x12xprojects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/servingConfigs/{serving_config}b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
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
        Interval = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.Interval").msgclass
        CustomAttribute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.CustomAttribute").msgclass
        UserInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.UserInfo").msgclass
      end
    end
  end
end
