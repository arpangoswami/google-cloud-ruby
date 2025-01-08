# frozen_string_literal: true

# Copyright 2023 Google LLC
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
    module NetApp
      module V1
        # Message for requesting list of Volumes
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent value for ListVolumesRequest
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Requested page size. Server may return fewer items than requested.
        #     If unspecified, the server will pick an appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A token identifying a page of results the server should return.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Filtering results
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Hint for how to order the results
        class ListVolumesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for response to listing Volumes
        # @!attribute [rw] volumes
        #   @return [::Array<::Google::Cloud::NetApp::V1::Volume>]
        #     The list of Volume
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token identifying a page of results the server should return.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListVolumesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for getting a Volume
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the volume
        class GetVolumeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for creating a Volume
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Value for parent.
        # @!attribute [rw] volume_id
        #   @return [::String]
        #     Required. Id of the requesting volume. Must be unique within the parent
        #     resource. Must contain only letters, numbers and hyphen, with the first
        #     character a letter, the last a letter or a number,
        #     and a 63 character maximum.
        # @!attribute [rw] volume
        #   @return [::Google::Cloud::NetApp::V1::Volume]
        #     Required. The volume being created.
        class CreateVolumeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for updating a Volume
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Field mask is used to specify the fields to be overwritten in the
        #     Volume resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A field will be overwritten if it is in the mask. If the
        #     user does not provide a mask then all fields will be overwritten.
        # @!attribute [rw] volume
        #   @return [::Google::Cloud::NetApp::V1::Volume]
        #     Required. The volume being updated
        class UpdateVolumeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for deleting a Volume
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the volume
        # @!attribute [rw] force
        #   @return [::Boolean]
        #     If this field is set as true, CCFE will not block the volume resource
        #     deletion even if it has any snapshots resource. (Otherwise, the request
        #     will only work if the volume has no snapshots.)
        class DeleteVolumeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # RevertVolumeRequest reverts the given volume to the specified snapshot.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the volume, in the format of
        #     projects/\\{project_id}/locations/\\{location}/volumes/\\{volume_id}.
        # @!attribute [rw] snapshot_id
        #   @return [::String]
        #     Required. The snapshot resource ID, in the format 'my-snapshot', where the
        #     specified ID is the \\{snapshot_id} of the fully qualified name like
        #     projects/\\{project_id}/locations/\\{location_id}/volumes/\\{volume_id}/snapshots/\\{snapshot_id}
        class RevertVolumeRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Volume provides a filesystem that you can mount.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Name of the volume
        # @!attribute [r] state
        #   @return [::Google::Cloud::NetApp::V1::Volume::State]
        #     Output only. State of the volume
        # @!attribute [r] state_details
        #   @return [::String]
        #     Output only. State details of the volume
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Create time of the volume
        # @!attribute [rw] share_name
        #   @return [::String]
        #     Required. Share name of the volume
        # @!attribute [r] psa_range
        #   @return [::String]
        #     Output only. This field is not implemented. The values provided in this
        #     field are ignored.
        # @!attribute [rw] storage_pool
        #   @return [::String]
        #     Required. StoragePool name of the volume
        # @!attribute [r] network
        #   @return [::String]
        #     Output only. VPC Network name.
        #     Format: projects/\\{project}/global/networks/\\{network}
        # @!attribute [r] service_level
        #   @return [::Google::Cloud::NetApp::V1::ServiceLevel]
        #     Output only. Service level of the volume
        # @!attribute [rw] capacity_gib
        #   @return [::Integer]
        #     Required. Capacity in GIB of the volume
        # @!attribute [rw] export_policy
        #   @return [::Google::Cloud::NetApp::V1::ExportPolicy]
        #     Optional. Export policy of the volume
        # @!attribute [rw] protocols
        #   @return [::Array<::Google::Cloud::NetApp::V1::Protocols>]
        #     Required. Protocols required for the volume
        # @!attribute [rw] smb_settings
        #   @return [::Array<::Google::Cloud::NetApp::V1::SMBSettings>]
        #     Optional. SMB share settings for the volume.
        # @!attribute [r] mount_options
        #   @return [::Array<::Google::Cloud::NetApp::V1::MountOption>]
        #     Output only. Mount options of this volume
        # @!attribute [rw] unix_permissions
        #   @return [::String]
        #     Optional. Default unix style permission (e.g. 777) the mount point will be
        #     created with. Applicable for NFS protocol types only.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Labels as key value pairs
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Description of the volume
        # @!attribute [rw] snapshot_policy
        #   @return [::Google::Cloud::NetApp::V1::SnapshotPolicy]
        #     Optional. SnapshotPolicy for a volume.
        # @!attribute [rw] snap_reserve
        #   @return [::Float]
        #     Optional. Snap_reserve specifies percentage of volume storage reserved for
        #     snapshot storage. Default is 0 percent.
        # @!attribute [rw] snapshot_directory
        #   @return [::Boolean]
        #     Optional. Snapshot_directory if enabled (true) the volume will contain a
        #     read-only .snapshot directory which provides access to each of the volume's
        #     snapshots.
        # @!attribute [r] used_gib
        #   @return [::Integer]
        #     Output only. Used capacity in GIB of the volume. This is computed
        #     periodically and it does not represent the realtime usage.
        # @!attribute [rw] security_style
        #   @return [::Google::Cloud::NetApp::V1::SecurityStyle]
        #     Optional. Security Style of the Volume
        # @!attribute [rw] kerberos_enabled
        #   @return [::Boolean]
        #     Optional. Flag indicating if the volume is a kerberos volume or not, export
        #     policy rules control kerberos security modes (krb5, krb5i, krb5p).
        # @!attribute [r] ldap_enabled
        #   @return [::Boolean]
        #     Output only. Flag indicating if the volume is NFS LDAP enabled or not.
        # @!attribute [r] active_directory
        #   @return [::String]
        #     Output only. Specifies the ActiveDirectory name of a SMB volume.
        # @!attribute [rw] restore_parameters
        #   @return [::Google::Cloud::NetApp::V1::RestoreParameters]
        #     Optional. Specifies the source of the volume to be created from.
        # @!attribute [r] kms_config
        #   @return [::String]
        #     Output only. Specifies the KMS config to be used for volume encryption.
        # @!attribute [r] encryption_type
        #   @return [::Google::Cloud::NetApp::V1::EncryptionType]
        #     Output only. Specified the current volume encryption key source.
        # @!attribute [r] has_replication
        #   @return [::Boolean]
        #     Output only. Indicates whether the volume is part of a replication
        #     relationship.
        # @!attribute [rw] backup_config
        #   @return [::Google::Cloud::NetApp::V1::BackupConfig]
        #     BackupConfig of the volume.
        # @!attribute [rw] restricted_actions
        #   @return [::Array<::Google::Cloud::NetApp::V1::RestrictedAction>]
        #     Optional. List of actions that are restricted on this volume.
        # @!attribute [rw] large_capacity
        #   @return [::Boolean]
        #     Optional. Flag indicating if the volume will be a large capacity volume or
        #     a regular volume.
        # @!attribute [rw] multiple_endpoints
        #   @return [::Boolean]
        #     Optional. Flag indicating if the volume will have an IP address per node
        #     for volumes supporting multiple IP endpoints. Only the volume with
        #     large_capacity will be allowed to have multiple endpoints.
        # @!attribute [rw] tiering_policy
        #   @return [::Google::Cloud::NetApp::V1::TieringPolicy]
        #     Tiering policy for the volume.
        # @!attribute [r] replica_zone
        #   @return [::String]
        #     Output only. Specifies the replica zone for regional volume.
        # @!attribute [r] zone
        #   @return [::String]
        #     Output only. Specifies the active zone for regional volume.
        # @!attribute [r] cold_tier_size_gib
        #   @return [::Integer]
        #     Output only. Size of the volume cold tier data in GiB.
        # @!attribute [rw] hybrid_replication_parameters
        #   @return [::Google::Cloud::NetApp::V1::HybridReplicationParameters]
        #     Optional. The Hybrid Replication parameters for the volume.
        class Volume
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

          # The volume states
          module State
            # Unspecified Volume State
            STATE_UNSPECIFIED = 0

            # Volume State is Ready
            READY = 1

            # Volume State is Creating
            CREATING = 2

            # Volume State is Deleting
            DELETING = 3

            # Volume State is Updating
            UPDATING = 4

            # Volume State is Restoring
            RESTORING = 5

            # Volume State is Disabled
            DISABLED = 6

            # Volume State is Error
            ERROR = 7

            # Volume State is Preparing. Note that this is different from CREATING
            # where CREATING means the volume is being created, while PREPARING means
            # the volume is created and now being prepared for the replication.
            PREPARING = 8

            # Volume State is Read Only
            READ_ONLY = 9
          end
        end

        # Defines the export policy for the volume.
        # @!attribute [rw] rules
        #   @return [::Array<::Google::Cloud::NetApp::V1::SimpleExportPolicyRule>]
        #     Required. List of export policy rules
        class ExportPolicy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An export policy rule describing various export options.
        # @!attribute [rw] allowed_clients
        #   @return [::String]
        #     Comma separated list of allowed clients IP addresses
        # @!attribute [rw] has_root_access
        #   @return [::String]
        #     Whether Unix root access will be granted.
        # @!attribute [rw] access_type
        #   @return [::Google::Cloud::NetApp::V1::AccessType]
        #     Access type (ReadWrite, ReadOnly, None)
        # @!attribute [rw] nfsv3
        #   @return [::Boolean]
        #     NFS V3 protocol.
        # @!attribute [rw] nfsv4
        #   @return [::Boolean]
        #     NFS V4 protocol.
        # @!attribute [rw] kerberos_5_read_only
        #   @return [::Boolean]
        #     If enabled (true) the rule defines a read only access for clients matching
        #     the 'allowedClients' specification. It enables nfs clients to mount using
        #     'authentication' kerberos security mode.
        # @!attribute [rw] kerberos_5_read_write
        #   @return [::Boolean]
        #     If enabled (true) the rule defines read and write access for clients
        #     matching the 'allowedClients' specification. It enables nfs clients to
        #     mount using 'authentication' kerberos security mode. The
        #     'kerberos5ReadOnly' value be ignored if this is enabled.
        # @!attribute [rw] kerberos_5i_read_only
        #   @return [::Boolean]
        #     If enabled (true) the rule defines a read only access for clients matching
        #     the 'allowedClients' specification. It enables nfs clients to mount using
        #     'integrity' kerberos security mode.
        # @!attribute [rw] kerberos_5i_read_write
        #   @return [::Boolean]
        #     If enabled (true) the rule defines read and write access for clients
        #     matching the 'allowedClients' specification. It enables nfs clients to
        #     mount using 'integrity' kerberos security mode. The 'kerberos5iReadOnly'
        #     value be ignored if this is enabled.
        # @!attribute [rw] kerberos_5p_read_only
        #   @return [::Boolean]
        #     If enabled (true) the rule defines a read only access for clients matching
        #     the 'allowedClients' specification. It enables nfs clients to mount using
        #     'privacy' kerberos security mode.
        # @!attribute [rw] kerberos_5p_read_write
        #   @return [::Boolean]
        #     If enabled (true) the rule defines read and write access for clients
        #     matching the 'allowedClients' specification. It enables nfs clients to
        #     mount using 'privacy' kerberos security mode. The 'kerberos5pReadOnly'
        #     value be ignored if this is enabled.
        class SimpleExportPolicyRule
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Snapshot Policy for a volume.
        # @!attribute [rw] enabled
        #   @return [::Boolean]
        #     If enabled, make snapshots automatically according to the schedules.
        #     Default is false.
        # @!attribute [rw] hourly_schedule
        #   @return [::Google::Cloud::NetApp::V1::HourlySchedule]
        #     Hourly schedule policy.
        # @!attribute [rw] daily_schedule
        #   @return [::Google::Cloud::NetApp::V1::DailySchedule]
        #     Daily schedule policy.
        # @!attribute [rw] weekly_schedule
        #   @return [::Google::Cloud::NetApp::V1::WeeklySchedule]
        #     Weekly schedule policy.
        # @!attribute [rw] monthly_schedule
        #   @return [::Google::Cloud::NetApp::V1::MonthlySchedule]
        #     Monthly schedule policy.
        class SnapshotPolicy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Make a snapshot every hour e.g. at 04:00, 05:00, 06:00.
        # @!attribute [rw] snapshots_to_keep
        #   @return [::Float]
        #     The maximum number of Snapshots to keep for the hourly schedule
        # @!attribute [rw] minute
        #   @return [::Float]
        #     Set the minute of the hour to start the snapshot (0-59), defaults to the
        #     top of the hour (0).
        class HourlySchedule
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Make a snapshot every day e.g. at 04:00, 05:20, 23:50
        # @!attribute [rw] snapshots_to_keep
        #   @return [::Float]
        #     The maximum number of Snapshots to keep for the hourly schedule
        # @!attribute [rw] minute
        #   @return [::Float]
        #     Set the minute of the hour to start the snapshot (0-59), defaults to the
        #     top of the hour (0).
        # @!attribute [rw] hour
        #   @return [::Float]
        #     Set the hour to start the snapshot (0-23), defaults to midnight (0).
        class DailySchedule
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Make a snapshot every week e.g. at Monday 04:00, Wednesday 05:20, Sunday
        # 23:50
        # @!attribute [rw] snapshots_to_keep
        #   @return [::Float]
        #     The maximum number of Snapshots to keep for the hourly schedule
        # @!attribute [rw] minute
        #   @return [::Float]
        #     Set the minute of the hour to start the snapshot (0-59), defaults to the
        #     top of the hour (0).
        # @!attribute [rw] hour
        #   @return [::Float]
        #     Set the hour to start the snapshot (0-23), defaults to midnight (0).
        # @!attribute [rw] day
        #   @return [::String]
        #     Set the day or days of the week to make a snapshot. Accepts a comma
        #     separated days of the week. Defaults to 'Sunday'.
        class WeeklySchedule
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Make a snapshot once a month e.g. at 2nd 04:00, 7th 05:20, 24th 23:50
        # @!attribute [rw] snapshots_to_keep
        #   @return [::Float]
        #     The maximum number of Snapshots to keep for the hourly schedule
        # @!attribute [rw] minute
        #   @return [::Float]
        #     Set the minute of the hour to start the snapshot (0-59), defaults to the
        #     top of the hour (0).
        # @!attribute [rw] hour
        #   @return [::Float]
        #     Set the hour to start the snapshot (0-23), defaults to midnight (0).
        # @!attribute [rw] days_of_month
        #   @return [::String]
        #     Set the day or days of the month to make a snapshot (1-31). Accepts a
        #     comma separated number of days. Defaults to '1'.
        class MonthlySchedule
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # View only mount options for a volume.
        # @!attribute [rw] export
        #   @return [::String]
        #     Export string
        # @!attribute [rw] export_full
        #   @return [::String]
        #     Full export string
        # @!attribute [rw] protocol
        #   @return [::Google::Cloud::NetApp::V1::Protocols]
        #     Protocol to mount with.
        # @!attribute [rw] instructions
        #   @return [::String]
        #     Instructions for mounting
        class MountOption
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The RestoreParameters if volume is created from a snapshot or backup.
        # @!attribute [rw] source_snapshot
        #   @return [::String]
        #     Full name of the snapshot resource.
        #     Format:
        #     projects/\\{project}/locations/\\{location}/volumes/\\{volume}/snapshots/\\{snapshot}
        # @!attribute [rw] source_backup
        #   @return [::String]
        #     Full name of the backup resource.
        #     Format:
        #     projects/\\{project}/locations/\\{location}/backupVaults/\\{backup_vault_id}/backups/\\{backup_id}
        class RestoreParameters
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # BackupConfig contains backup related config on a volume.
        # @!attribute [rw] backup_policies
        #   @return [::Array<::String>]
        #     Optional. When specified, schedule backups will be created based on the
        #     policy configuration.
        # @!attribute [rw] backup_vault
        #   @return [::String]
        #     Optional. Name of backup vault.
        #     Format:
        #     projects/\\{project_id}/locations/\\{location}/backupVaults/\\{backup_vault_id}
        # @!attribute [rw] scheduled_backup_enabled
        #   @return [::Boolean]
        #     Optional. When set to true, scheduled backup is enabled on the volume.
        #     This field should be nil when there's no backup policy attached.
        # @!attribute [r] backup_chain_bytes
        #   @return [::Integer]
        #     Output only. Total size of all backups in a chain in bytes = baseline
        #     backup size + sum(incremental backup size).
        class BackupConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Defines tiering policy for the volume.
        # @!attribute [rw] tier_action
        #   @return [::Google::Cloud::NetApp::V1::TieringPolicy::TierAction]
        #     Optional. Flag indicating if the volume has tiering policy enable/pause.
        #     Default is PAUSED.
        # @!attribute [rw] cooling_threshold_days
        #   @return [::Integer]
        #     Optional. Time in days to mark the volume's data block as cold and make it
        #     eligible for tiering, can be range from 7-183. Default is 31.
        class TieringPolicy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Tier action for the volume.
          module TierAction
            # Unspecified.
            TIER_ACTION_UNSPECIFIED = 0

            # When tiering is enabled, new cold data will be tiered.
            ENABLED = 1

            # When paused, tiering won't be performed on new data. Existing data stays
            # tiered until accessed.
            PAUSED = 2
          end
        end

        # The Hybrid Replication parameters for the volume.
        # @!attribute [rw] replication
        #   @return [::String]
        #     Required. Desired name for the replication of this volume.
        # @!attribute [rw] peer_volume_name
        #   @return [::String]
        #     Required. Name of the user's local source volume to be peered with the
        #     destination volume.
        # @!attribute [rw] peer_cluster_name
        #   @return [::String]
        #     Required. Name of the user's local source cluster to be peered with the
        #     destination cluster.
        # @!attribute [rw] peer_svm_name
        #   @return [::String]
        #     Required. Name of the user's local source vserver svm to be peered with the
        #     destination vserver svm.
        # @!attribute [rw] peer_ip_addresses
        #   @return [::Array<::String>]
        #     Required. List of node ip addresses to be peered with.
        # @!attribute [rw] cluster_location
        #   @return [::String]
        #     Optional. Name of source cluster location associated with the Hybrid
        #     replication. This is a free-form field for the display purpose only.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Description of the replication.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Labels to be added to the replication as the key value pairs.
        class HybridReplicationParameters
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

        # Protocols is an enum of all the supported network protocols for a volume.
        module Protocols
          # Unspecified protocol
          PROTOCOLS_UNSPECIFIED = 0

          # NFS V3 protocol
          NFSV3 = 1

          # NFS V4 protocol
          NFSV4 = 2

          # SMB protocol
          SMB = 3
        end

        # AccessType is an enum of all the supported access types for a volume.
        module AccessType
          # Unspecified Access Type
          ACCESS_TYPE_UNSPECIFIED = 0

          # Read Only
          READ_ONLY = 1

          # Read Write
          READ_WRITE = 2

          # None
          READ_NONE = 3
        end

        # SMBSettings
        # Modifies the behaviour of a SMB volume.
        module SMBSettings
          # Unspecified default option
          SMB_SETTINGS_UNSPECIFIED = 0

          # SMB setting encrypt data
          ENCRYPT_DATA = 1

          # SMB setting browsable
          BROWSABLE = 2

          # SMB setting notify change
          CHANGE_NOTIFY = 3

          # SMB setting not to notify change
          NON_BROWSABLE = 4

          # SMB setting oplocks
          OPLOCKS = 5

          # SMB setting to show snapshots
          SHOW_SNAPSHOT = 6

          # SMB setting to show previous versions
          SHOW_PREVIOUS_VERSIONS = 7

          # SMB setting to access volume based on enumerartion
          ACCESS_BASED_ENUMERATION = 8

          # Continuously available enumeration
          CONTINUOUSLY_AVAILABLE = 9
        end

        # The security style of the volume, can be either UNIX or NTFS.
        module SecurityStyle
          # SecurityStyle is unspecified
          SECURITY_STYLE_UNSPECIFIED = 0

          # SecurityStyle uses NTFS
          NTFS = 1

          # SecurityStyle uses UNIX
          UNIX = 2
        end

        # Actions to be restricted for a volume.
        module RestrictedAction
          # Unspecified restricted action
          RESTRICTED_ACTION_UNSPECIFIED = 0

          # Prevent volume from being deleted when mounted.
          DELETE = 1
        end
      end
    end
  end
end
