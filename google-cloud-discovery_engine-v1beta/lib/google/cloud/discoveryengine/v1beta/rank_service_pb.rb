# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1beta/rank_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n6google/cloud/discoveryengine/v1beta/rank_service.proto\x12#google.cloud.discoveryengine.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"J\n\rRankingRecord\x12\n\n\x02id\x18\x01 \x01(\t\x12\r\n\x05title\x18\x02 \x01(\t\x12\x0f\n\x07\x63ontent\x18\x03 \x01(\t\x12\r\n\x05score\x18\x04 \x01(\x02\"\x87\x03\n\x0bRankRequest\x12L\n\x0eranking_config\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\n,discoveryengine.googleapis.com/RankingConfig\x12\r\n\x05model\x18\x02 \x01(\t\x12\r\n\x05top_n\x18\x03 \x01(\x05\x12\r\n\x05query\x18\x04 \x01(\t\x12H\n\x07records\x18\x05 \x03(\x0b\x32\x32.google.cloud.discoveryengine.v1beta.RankingRecordB\x03\xe0\x41\x02\x12)\n!ignore_record_details_in_response\x18\x06 \x01(\x08\x12U\n\x0buser_labels\x18\x07 \x03(\x0b\x32@.google.cloud.discoveryengine.v1beta.RankRequest.UserLabelsEntry\x1a\x31\n\x0fUserLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"S\n\x0cRankResponse\x12\x43\n\x07records\x18\x05 \x03(\x0b\x32\x32.google.cloud.discoveryengine.v1beta.RankingRecord2\xa1\x02\n\x0bRankService\x12\xbd\x01\n\x04Rank\x12\x30.google.cloud.discoveryengine.v1beta.RankRequest\x1a\x31.google.cloud.discoveryengine.v1beta.RankResponse\"P\x82\xd3\xe4\x93\x02J\"E/v1beta/{ranking_config=projects/*/locations/*/rankingConfigs/*}:rank:\x01*\x1aR\xca\x41\x1e\x64iscoveryengine.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x97\x02\n\'com.google.cloud.discoveryengine.v1betaB\x10RankServiceProtoP\x01ZQcloud.google.com/go/discoveryengine/apiv1beta/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02#Google.Cloud.DiscoveryEngine.V1Beta\xca\x02#Google\\Cloud\\DiscoveryEngine\\V1beta\xea\x02&Google::Cloud::DiscoveryEngine::V1betab\x06proto3"

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
        RankingRecord = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.RankingRecord").msgclass
        RankRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.RankRequest").msgclass
        RankResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.RankResponse").msgclass
      end
    end
  end
end
