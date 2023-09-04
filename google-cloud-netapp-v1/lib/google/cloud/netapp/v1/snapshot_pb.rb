# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/netapp/v1/snapshot.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n%google/cloud/netapp/v1/snapshot.proto\x12\x16google.cloud.netapp.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x97\x01\n\x14ListSnapshotsRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \x12\x1enetapp.googleapis.com/Snapshot\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x10\n\x08order_by\x18\x04 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x05 \x01(\t\"z\n\x15ListSnapshotsResponse\x12\x33\n\tsnapshots\x18\x01 \x03(\x0b\x32 .google.cloud.netapp.v1.Snapshot\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"J\n\x12GetSnapshotRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1enetapp.googleapis.com/Snapshot\"\xa2\x01\n\x15\x43reateSnapshotRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \x12\x1enetapp.googleapis.com/Snapshot\x12\x37\n\x08snapshot\x18\x02 \x01(\x0b\x32 .google.cloud.netapp.v1.SnapshotB\x03\xe0\x41\x02\x12\x18\n\x0bsnapshot_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"M\n\x15\x44\x65leteSnapshotRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1enetapp.googleapis.com/Snapshot\"\x86\x01\n\x15UpdateSnapshotRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x37\n\x08snapshot\x18\x02 \x01(\x0b\x32 .google.cloud.netapp.v1.SnapshotB\x03\xe0\x41\x02\"\xa8\x04\n\x08Snapshot\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12:\n\x05state\x18\x02 \x01(\x0e\x32&.google.cloud.netapp.v1.Snapshot.StateB\x03\xe0\x41\x03\x12\x1a\n\rstate_details\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x13\n\x0b\x64\x65scription\x18\x04 \x01(\t\x12\x17\n\nused_bytes\x18\x05 \x01(\x01\x42\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12<\n\x06labels\x18\x07 \x03(\x0b\x32,.google.cloud.netapp.v1.Snapshot.LabelsEntry\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"l\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\t\n\x05READY\x10\x01\x12\x0c\n\x08\x43REATING\x10\x02\x12\x0c\n\x08\x44\x45LETING\x10\x03\x12\x0c\n\x08UPDATING\x10\x04\x12\x0c\n\x08\x44ISABLED\x10\x05\x12\t\n\x05\x45RROR\x10\x06:r\xea\x41o\n\x1enetapp.googleapis.com/Snapshot\x12Mprojects/{project}/locations/{location}/volumes/{volume}/snapshots/{snapshot}B\xaf\x01\n\x1a\x63om.google.cloud.netapp.v1B\rSnapshotProtoP\x01Z2cloud.google.com/go/netapp/apiv1/netapppb;netapppb\xaa\x02\x16Google.Cloud.NetApp.V1\xca\x02\x16Google\\Cloud\\NetApp\\V1\xea\x02\x19Google::Cloud::NetApp::V1b\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module NetApp
      module V1
        ListSnapshotsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.ListSnapshotsRequest").msgclass
        ListSnapshotsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.ListSnapshotsResponse").msgclass
        GetSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.GetSnapshotRequest").msgclass
        CreateSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.CreateSnapshotRequest").msgclass
        DeleteSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.DeleteSnapshotRequest").msgclass
        UpdateSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.UpdateSnapshotRequest").msgclass
        Snapshot = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.Snapshot").msgclass
        Snapshot::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.Snapshot.State").enummodule
      end
    end
  end
end
