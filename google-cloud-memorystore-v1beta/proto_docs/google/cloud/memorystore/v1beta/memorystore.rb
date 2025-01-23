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
    module Memorystore
      module V1beta
        # A Memorystore instance.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Unique name of the instance.
        #     Format: projects/\\{project}/locations/\\{location}/instances/\\{instance}
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Creation timestamp of the instance.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Latest update timestamp of the instance.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Labels to represent user-provided metadata.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Memorystore::V1beta::Instance::State]
        #     Output only. Current state of the instance.
        # @!attribute [r] state_info
        #   @return [::Google::Cloud::Memorystore::V1beta::Instance::StateInfo]
        #     Output only. Additional information about the state of the instance.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. System assigned, unique identifier for the instance.
        # @!attribute [rw] replica_count
        #   @return [::Integer]
        #     Optional. Number of replica nodes per shard. If omitted the default is 0
        #     replicas.
        # @!attribute [rw] authorization_mode
        #   @return [::Google::Cloud::Memorystore::V1beta::Instance::AuthorizationMode]
        #     Optional. Immutable. Authorization mode of the instance.
        # @!attribute [rw] transit_encryption_mode
        #   @return [::Google::Cloud::Memorystore::V1beta::Instance::TransitEncryptionMode]
        #     Optional. Immutable. In-transit encryption mode of the instance.
        # @!attribute [rw] shard_count
        #   @return [::Integer]
        #     Optional. Number of shards for the instance.
        # @!attribute [r] discovery_endpoints
        #   @return [::Array<::Google::Cloud::Memorystore::V1beta::DiscoveryEndpoint>]
        #     Output only. Endpoints clients can connect to the instance through.
        #     Currently only one discovery endpoint is supported.
        # @!attribute [rw] node_type
        #   @return [::Google::Cloud::Memorystore::V1beta::Instance::NodeType]
        #     Optional. Immutable. Machine type for individual nodes of the instance.
        # @!attribute [rw] persistence_config
        #   @return [::Google::Cloud::Memorystore::V1beta::PersistenceConfig]
        #     Optional. Persistence configuration of the instance.
        # @!attribute [rw] engine_version
        #   @return [::String]
        #     Optional. Immutable. Engine version of the instance.
        # @!attribute [rw] engine_configs
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. User-provided engine configurations for the instance.
        # @!attribute [r] node_config
        #   @return [::Google::Cloud::Memorystore::V1beta::NodeConfig]
        #     Output only. Configuration of individual nodes of the instance.
        # @!attribute [rw] zone_distribution_config
        #   @return [::Google::Cloud::Memorystore::V1beta::ZoneDistributionConfig]
        #     Optional. Immutable. Zone distribution configuration of the instance for
        #     node allocation.
        # @!attribute [rw] deletion_protection_enabled
        #   @return [::Boolean]
        #     Optional. If set to true deletion of the instance will fail.
        # @!attribute [rw] psc_auto_connections
        #   @return [::Array<::Google::Cloud::Memorystore::V1beta::PscAutoConnection>]
        #     Required. Immutable. User inputs and resource details of the auto-created
        #     PSC connections.
        # @!attribute [rw] endpoints
        #   @return [::Array<::Google::Cloud::Memorystore::V1beta::Instance::InstanceEndpoint>]
        #     Optional. Endpoints for the instance.
        # @!attribute [rw] mode
        #   @return [::Google::Cloud::Memorystore::V1beta::Instance::Mode]
        #     Optional. The mode config for the instance.
        class Instance
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Additional information about the state of the instance.
          # @!attribute [r] update_info
          #   @return [::Google::Cloud::Memorystore::V1beta::Instance::StateInfo::UpdateInfo]
          #     Output only. Describes ongoing update when instance state is UPDATING.
          class StateInfo
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Represents information about instance with state UPDATING.
            # @!attribute [r] target_shard_count
            #   @return [::Integer]
            #     Output only. Target number of shards for the instance.
            # @!attribute [r] target_replica_count
            #   @return [::Integer]
            #     Output only. Target number of replica nodes per shard for the instance.
            class UpdateInfo
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # InstanceEndpoint consists of PSC connections that are created
          # as a group in each VPC network for accessing the instance. In each group,
          # there shall be one connection for each service attachment in the cluster.
          # @!attribute [rw] connections
          #   @return [::Array<::Google::Cloud::Memorystore::V1beta::Instance::ConnectionDetail>]
          #     Optional. A group of PSC connections. They are created in the same VPC
          #     network, one for each service attachment in the cluster.
          class InstanceEndpoint
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Information of each PSC connection.
          # @!attribute [rw] psc_auto_connection
          #   @return [::Google::Cloud::Memorystore::V1beta::PscAutoConnection]
          #     Detailed information of a PSC connection that is created through
          #     service connectivity automation.
          #
          #     Note: The following fields are mutually exclusive: `psc_auto_connection`, `psc_connection`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] psc_connection
          #   @return [::Google::Cloud::Memorystore::V1beta::PscConnection]
          #     Detailed information of a PSC connection that is created by the user.
          #
          #     Note: The following fields are mutually exclusive: `psc_connection`, `psc_auto_connection`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          class ConnectionDetail
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class EngineConfigsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Possible states of the instance.
          module State
            # Not set.
            STATE_UNSPECIFIED = 0

            # Instance is being created.
            CREATING = 1

            # Instance has been created and is usable.
            ACTIVE = 2

            # Instance is being updated.
            UPDATING = 3

            # Instance is being deleted.
            DELETING = 4
          end

          # Possible authorization modes of the instance.
          module AuthorizationMode
            # Not set.
            AUTHORIZATION_MODE_UNSPECIFIED = 0

            # Authorization disabled.
            AUTH_DISABLED = 1

            # IAM basic authorization.
            IAM_AUTH = 2
          end

          # Possible in-transit encryption modes of the instance.
          module TransitEncryptionMode
            # Not set.
            TRANSIT_ENCRYPTION_MODE_UNSPECIFIED = 0

            # In-transit encryption is disabled.
            TRANSIT_ENCRYPTION_DISABLED = 1

            # Server-managed encryption is used for in-transit encryption.
            SERVER_AUTHENTICATION = 2
          end

          # Possible node types of the instance. See
          # https://cloud.google.com/memorystore/docs/valkey/instance-node-specification
          # for more information.
          module NodeType
            # Not set.
            NODE_TYPE_UNSPECIFIED = 0

            # Shared core nano.
            SHARED_CORE_NANO = 1

            # High memory medium.
            HIGHMEM_MEDIUM = 2

            # High memory extra large.
            HIGHMEM_XLARGE = 3

            # Standard small.
            STANDARD_SMALL = 4
          end

          # The mode config, which is used to enable/disable cluster mode.
          module Mode
            # Mode is not specified.
            MODE_UNSPECIFIED = 0

            # Instance is in standalone mode.
            STANDALONE = 1

            # Instance is in cluster mode.
            CLUSTER = 2
          end
        end

        # Details of consumer resources in a PSC connection.
        # @!attribute [r] port
        #   @return [::Integer]
        #     Optional. Output only. port will only be set for Primary/Reader or
        #     Discovery endpoint.
        # @!attribute [r] psc_connection_id
        #   @return [::String]
        #     Output only. The PSC connection id of the forwarding rule connected to the
        #     service attachment.
        # @!attribute [r] ip_address
        #   @return [::String]
        #     Output only. The IP allocated on the consumer network for the PSC
        #     forwarding rule.
        # @!attribute [r] forwarding_rule
        #   @return [::String]
        #     Output only. The URI of the consumer side forwarding rule.
        #     Format:
        #     projects/\\{project}/regions/\\{region}/forwardingRules/\\{forwarding_rule}
        # @!attribute [rw] project_id
        #   @return [::String]
        #     Required. The consumer project_id where PSC connections are established.
        #     This should be the same project_id that the instance is being created in.
        # @!attribute [rw] network
        #   @return [::String]
        #     Required. The network where the PSC endpoints are created, in the form of
        #     projects/\\{project_id}/global/networks/\\{network_id}.
        # @!attribute [r] service_attachment
        #   @return [::String]
        #     Output only. The service attachment which is the target of the PSC
        #     connection, in the form of
        #     projects/\\{project-id}/regions/\\{region}/serviceAttachments/\\{service-attachment-id}.
        # @!attribute [r] psc_connection_status
        #   @return [::Google::Cloud::Memorystore::V1beta::PscConnectionStatus]
        #     Output only. The status of the PSC connection: whether a connection exists
        #     and ACTIVE or it no longer exists. Please note that this value is updated
        #     periodically. Please use Private Service Connect APIs for the latest
        #     status.
        # @!attribute [r] connection_type
        #   @return [::Google::Cloud::Memorystore::V1beta::ConnectionType]
        #     Output only. Type of the PSC connection.
        class PscAutoConnection
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # User created Psc connection configuration.
        # @!attribute [r] psc_connection_id
        #   @return [::String]
        #     Output only. The PSC connection id of the forwarding rule connected to the
        #     service attachment.
        # @!attribute [rw] ip_address
        #   @return [::String]
        #     Required. The IP allocated on the consumer network for the PSC forwarding
        #     rule.
        # @!attribute [rw] forwarding_rule
        #   @return [::String]
        #     Required. The URI of the consumer side forwarding rule.
        #     Format:
        #     projects/\\{project}/regions/\\{region}/forwardingRules/\\{forwarding_rule}
        # @!attribute [r] project_id
        #   @return [::String]
        #     Output only. The consumer project_id where the forwarding rule is created
        #     from.
        # @!attribute [rw] network
        #   @return [::String]
        #     Required. The consumer network where the IP address resides, in the form of
        #     projects/\\{project_id}/global/networks/\\{network_id}.
        # @!attribute [rw] service_attachment
        #   @return [::String]
        #     Required. The service attachment which is the target of the PSC connection,
        #     in the form of
        #     projects/\\{project-id}/regions/\\{region}/serviceAttachments/\\{service-attachment-id}.
        # @!attribute [r] psc_connection_status
        #   @return [::Google::Cloud::Memorystore::V1beta::PscConnectionStatus]
        #     Output only. The status of the PSC connection: whether a connection exists
        #     and ACTIVE or it no longer exists. Please note that this value is updated
        #     periodically. Please use Private Service Connect APIs for the latest
        #     status.
        # @!attribute [r] connection_type
        #   @return [::Google::Cloud::Memorystore::V1beta::ConnectionType]
        #     Output only. Type of the PSC connection.
        class PscConnection
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents an endpoint for clients to connect to the instance.
        # @!attribute [r] address
        #   @return [::String]
        #     Output only. IP address of the exposed endpoint clients connect to.
        # @!attribute [r] port
        #   @return [::Integer]
        #     Output only. The port number of the exposed endpoint.
        # @!attribute [r] network
        #   @return [::String]
        #     Output only. The network where the IP address of the discovery endpoint
        #     will be reserved, in the form of
        #     projects/\\{network_project}/global/networks/\\{network_id}.
        class DiscoveryEndpoint
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents persistence configuration for a instance.
        # @!attribute [rw] mode
        #   @return [::Google::Cloud::Memorystore::V1beta::PersistenceConfig::PersistenceMode]
        #     Optional. Current persistence mode.
        # @!attribute [rw] rdb_config
        #   @return [::Google::Cloud::Memorystore::V1beta::PersistenceConfig::RDBConfig]
        #     Optional. RDB configuration. This field will be ignored if mode is not RDB.
        # @!attribute [rw] aof_config
        #   @return [::Google::Cloud::Memorystore::V1beta::PersistenceConfig::AOFConfig]
        #     Optional. AOF configuration. This field will be ignored if mode is not AOF.
        class PersistenceConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Configuration for RDB based persistence.
          # @!attribute [rw] rdb_snapshot_period
          #   @return [::Google::Cloud::Memorystore::V1beta::PersistenceConfig::RDBConfig::SnapshotPeriod]
          #     Optional. Period between RDB snapshots.
          # @!attribute [rw] rdb_snapshot_start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Optional. Time that the first snapshot was/will be attempted, and to
          #     which future snapshots will be aligned. If not provided, the current time
          #     will be used.
          class RDBConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Possible snapshot periods.
            module SnapshotPeriod
              # Not set.
              SNAPSHOT_PERIOD_UNSPECIFIED = 0

              # One hour.
              ONE_HOUR = 1

              # Six hours.
              SIX_HOURS = 2

              # Twelve hours.
              TWELVE_HOURS = 3

              # Twenty four hours.
              TWENTY_FOUR_HOURS = 4
            end
          end

          # Configuration for AOF based persistence.
          # @!attribute [rw] append_fsync
          #   @return [::Google::Cloud::Memorystore::V1beta::PersistenceConfig::AOFConfig::AppendFsync]
          #     Optional. The fsync mode.
          class AOFConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Possible fsync modes.
            module AppendFsync
              # Not set. Default: EVERY_SEC
              APPEND_FSYNC_UNSPECIFIED = 0

              # Never fsync. Normally Linux will flush data every 30 seconds with this
              # configuration, but it's up to the kernel's exact tuning.
              NEVER = 1

              # Fsync every second. You may lose 1 second of data if there is a
              # disaster.
              EVERY_SEC = 2

              # Fsync every time new write commands are appended to the AOF. The best
              # data loss protection at the cost of performance.
              ALWAYS = 3
            end
          end

          # Possible persistence modes.
          module PersistenceMode
            # Not set.
            PERSISTENCE_MODE_UNSPECIFIED = 0

            # Persistence is disabled, and any snapshot data is deleted.
            DISABLED = 1

            # RDB based persistence is enabled.
            RDB = 2

            # AOF based persistence is enabled.
            AOF = 3
          end
        end

        # Represents configuration for nodes of the instance.
        # @!attribute [r] size_gb
        #   @return [::Float]
        #     Output only. Memory size in GB of the node.
        class NodeConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Zone distribution configuration for allocation of instance resources.
        # @!attribute [rw] zone
        #   @return [::String]
        #     Optional. Defines zone where all resources will be allocated with
        #     SINGLE_ZONE mode. Ignored for MULTI_ZONE mode.
        # @!attribute [rw] mode
        #   @return [::Google::Cloud::Memorystore::V1beta::ZoneDistributionConfig::ZoneDistributionMode]
        #     Optional. Current zone distribution mode. Defaults to MULTI_ZONE.
        class ZoneDistributionConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Possible zone distribution modes.
          module ZoneDistributionMode
            # Not Set. Default: MULTI_ZONE
            ZONE_DISTRIBUTION_MODE_UNSPECIFIED = 0

            # Distribute resources across 3 zones picked at random within the
            # region.
            MULTI_ZONE = 1

            # Provision resources in a single zone. Zone field must be specified.
            SINGLE_ZONE = 2
          end
        end

        # Request message for [ListInstances][].
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent to list instances from.
        #     Format: projects/\\{project}/locations/\\{location}
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. Server may return fewer items than
        #     requested. If unspecified, server will pick an appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results the server should return.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Expression for filtering results.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Sort results by a defined order. Supported values: "name",
        #     "create_time".
        class ListInstancesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for [ListInstances][].
        # @!attribute [rw] instances
        #   @return [::Array<::Google::Cloud::Memorystore::V1beta::Instance>]
        #     If the \\{location} requested was "-" the response contains a list of
        #     instances from all locations. Instances in unreachable locations will be
        #     omitted.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token, which can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListInstancesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [GetInstance][].
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the instance to retrieve.
        #     Format: projects/\\{project}/locations/\\{location}/instances/\\{instance}
        class GetInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [CreateInstance][].
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource where this instance will be created.
        #     Format: projects/\\{project}/locations/\\{location}
        # @!attribute [rw] instance_id
        #   @return [::String]
        #     Required. The ID to use for the instance, which will become the final
        #     component of the instance's resource name.
        #
        #     This value is subject to the following restrictions:
        #
        #     * Must be 4-63 characters in length
        #     * Must begin with a letter or digit
        #     * Must contain only lowercase letters, digits, and hyphens
        #     * Must not end with a hyphen
        #     * Must be unique within a location
        # @!attribute [rw] instance
        #   @return [::Google::Cloud::Memorystore::V1beta::Instance]
        #     Required. The instance to create.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class CreateInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [UpdateInstance][].
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. The list of fields to be updated on the instance. At least one
        #     field must be specified.
        # @!attribute [rw] instance
        #   @return [::Google::Cloud::Memorystore::V1beta::Instance]
        #     Required. The instance to update.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class UpdateInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [DeleteInstance][].
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the instance to delete.
        #     Format: projects/\\{project}/locations/\\{location}/instances/\\{instance}
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID so that if you must retry your request, the server will know to
        #     ignore the request if it has already been completed. The server will
        #     guarantee that for at least 60 minutes after the first request.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class DeleteInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [GetCertificateAuthority][].
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the certificate authority.
        #     Format:
        #     projects/\\{project}/locations/\\{location}/instances/\\{instance}/certificateAuthority
        class GetCertificateAuthorityRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A certificate authority for an instance.
        # @!attribute [rw] managed_server_ca
        #   @return [::Google::Cloud::Memorystore::V1beta::CertificateAuthority::ManagedCertificateAuthority]
        #     A managed server certificate authority.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Unique name of the certificate authority.
        #     Format:
        #     projects/\\{project}/locations/\\{location}/instances/\\{instance}
        class CertificateAuthority
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A managed certificate authority.
          # @!attribute [rw] ca_certs
          #   @return [::Array<::Google::Cloud::Memorystore::V1beta::CertificateAuthority::ManagedCertificateAuthority::CertChain>]
          #     PEM encoded CA certificate chains for managed server authentication.
          class ManagedCertificateAuthority
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # A certificate chain.
            # @!attribute [rw] certificates
            #   @return [::Array<::String>]
            #     The certificates that form the CA chain in order of leaf to root.
            class CertChain
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end

        # Represents the metadata of a long-running operation.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation was created.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation finished running.
        # @!attribute [r] target
        #   @return [::String]
        #     Output only. Server-defined resource path for the target of the operation.
        # @!attribute [r] verb
        #   @return [::String]
        #     Output only. Name of the verb executed by the operation.
        # @!attribute [r] status_message
        #   @return [::String]
        #     Output only. Human-readable status of the operation, if any.
        # @!attribute [r] requested_cancellation
        #   @return [::Boolean]
        #     Output only. Identifies whether the user has requested cancellation
        #     of the operation. Operations that have been cancelled successfully
        #     have [Operation.error][] value with a
        #     {::Google::Rpc::Status#code google.rpc.Status.code} of 1, corresponding to
        #     `Code.CANCELLED`.
        # @!attribute [r] api_version
        #   @return [::String]
        #     Output only. API version used to start the operation.
        class OperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Status of the PSC connection.
        module PscConnectionStatus
          # PSC connection status is not specified.
          PSC_CONNECTION_STATUS_UNSPECIFIED = 0

          # The connection is active
          ACTIVE = 1

          # Connection not found
          NOT_FOUND = 2
        end

        # Type of a PSC connection
        module ConnectionType
          # Connection Type is not set
          CONNECTION_TYPE_UNSPECIFIED = 0

          # Connection that will be used for topology discovery.
          CONNECTION_TYPE_DISCOVERY = 1

          # Connection that will be used as primary endpoint to access primary.
          CONNECTION_TYPE_PRIMARY = 2

          # Connection that will be used as reader endpoint to access replicas.
          CONNECTION_TYPE_READER = 3
        end
      end
    end
  end
end
