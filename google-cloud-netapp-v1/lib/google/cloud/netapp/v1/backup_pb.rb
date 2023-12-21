# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/netapp/v1/backup.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n#google/cloud/netapp/v1/backup.proto\x12\x16google.cloud.netapp.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xd2\x06\n\x06\x42\x61\x63kup\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x38\n\x05state\x18\x02 \x01(\x0e\x32$.google.cloud.netapp.v1.Backup.StateB\x03\xe0\x41\x03\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12\x1f\n\x12volume_usage_bytes\x18\x04 \x01(\x03\x42\x03\xe0\x41\x03\x12=\n\x0b\x62\x61\x63kup_type\x18\x05 \x01(\x0e\x32#.google.cloud.netapp.v1.Backup.TypeB\x03\xe0\x41\x03\x12\x38\n\rsource_volume\x18\x06 \x01(\tB!\xfa\x41\x1e\n\x1cnetapp.googleapis.com/Volume\x12\x41\n\x0fsource_snapshot\x18\x07 \x01(\tB#\xfa\x41 \n\x1enetapp.googleapis.com/SnapshotH\x00\x88\x01\x01\x12\x34\n\x0b\x63reate_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12:\n\x06labels\x18\t \x03(\x0b\x32*.google.cloud.netapp.v1.Backup.LabelsEntry\x12 \n\x13\x63hain_storage_bytes\x18\n \x01(\x03\x42\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"m\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\r\n\tUPLOADING\x10\x02\x12\t\n\x05READY\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\x12\t\n\x05\x45RROR\x10\x05\x12\x0c\n\x08UPDATING\x10\x06\"7\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06MANUAL\x10\x01\x12\r\n\tSCHEDULED\x10\x02:\x89\x01\xea\x41\x85\x01\n\x1cnetapp.googleapis.com/Backup\x12Tprojects/{project}/locations/{location}/backupVaults/{backup_vault}/backups/{backup}*\x07\x62\x61\x63kups2\x06\x62\x61\x63kupB\x12\n\x10_source_snapshot\"\x93\x01\n\x12ListBackupsRequest\x12\x34\n\x06parent\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\x12\x1cnetapp.googleapis.com/Backup\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x10\n\x08order_by\x18\x04 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x05 \x01(\t\"t\n\x13ListBackupsResponse\x12/\n\x07\x62\x61\x63kups\x18\x01 \x03(\x0b\x32\x1e.google.cloud.netapp.v1.Backup\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"F\n\x10GetBackupRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1cnetapp.googleapis.com/Backup\"\x98\x01\n\x13\x43reateBackupRequest\x12\x34\n\x06parent\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\x12\x1cnetapp.googleapis.com/Backup\x12\x16\n\tbackup_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x33\n\x06\x62\x61\x63kup\x18\x03 \x01(\x0b\x32\x1e.google.cloud.netapp.v1.BackupB\x03\xe0\x41\x02\"I\n\x13\x44\x65leteBackupRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe0\x41\x02\xfa\x41\x1e\n\x1cnetapp.googleapis.com/Backup\"\x80\x01\n\x13UpdateBackupRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x33\n\x06\x62\x61\x63kup\x18\x02 \x01(\x0b\x32\x1e.google.cloud.netapp.v1.BackupB\x03\xe0\x41\x02\x42\xad\x01\n\x1a\x63om.google.cloud.netapp.v1B\x0b\x42\x61\x63kupProtoP\x01Z2cloud.google.com/go/netapp/apiv1/netapppb;netapppb\xaa\x02\x16Google.Cloud.NetApp.V1\xca\x02\x16Google\\Cloud\\NetApp\\V1\xea\x02\x19Google::Cloud::NetApp::V1b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
        Backup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.Backup").msgclass
        Backup::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.Backup.State").enummodule
        Backup::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.Backup.Type").enummodule
        ListBackupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.ListBackupsRequest").msgclass
        ListBackupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.ListBackupsResponse").msgclass
        GetBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.GetBackupRequest").msgclass
        CreateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.CreateBackupRequest").msgclass
        DeleteBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.DeleteBackupRequest").msgclass
        UpdateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.UpdateBackupRequest").msgclass
      end
    end
  end
end
