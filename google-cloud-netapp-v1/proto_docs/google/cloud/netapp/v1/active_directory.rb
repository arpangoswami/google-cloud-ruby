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
        # ListActiveDirectoriesRequest for requesting multiple active directories.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent value for ListActiveDirectoriesRequest
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
        class ListActiveDirectoriesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ListActiveDirectoriesResponse contains all the active directories requested.
        # @!attribute [rw] active_directories
        #   @return [::Array<::Google::Cloud::NetApp::V1::ActiveDirectory>]
        #     The list of active directories.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token identifying a page of results the server should return.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListActiveDirectoriesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # GetActiveDirectory for getting a single active directory.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the active directory.
        class GetActiveDirectoryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # CreateActiveDirectoryRequest for creating an active directory.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Value for parent.
        # @!attribute [rw] active_directory
        #   @return [::Google::Cloud::NetApp::V1::ActiveDirectory]
        #     Required. Fields of the to be created active directory.
        # @!attribute [rw] active_directory_id
        #   @return [::String]
        #     Required. ID of the active directory to create.
        class CreateActiveDirectoryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # UpdateActiveDirectoryRequest for updating an active directory.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Field mask is used to specify the fields to be overwritten in the
        #     Active Directory resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A field will be overwritten if it is in the mask. If the
        #     user does not provide a mask then all fields will be overwritten.
        # @!attribute [rw] active_directory
        #   @return [::Google::Cloud::NetApp::V1::ActiveDirectory]
        #     Required. The volume being updated
        class UpdateActiveDirectoryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # DeleteActiveDirectoryRequest for deleting a single active directory.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the active directory.
        class DeleteActiveDirectoryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ActiveDirectory is the public representation of the active directory config.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The resource name of the active directory.
        #     Format:
        #     `projects/{project_number}/locations/{location_id}/activeDirectories/{active_directory_id}`.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Create time of the active directory.
        # @!attribute [r] state
        #   @return [::Google::Cloud::NetApp::V1::ActiveDirectory::State]
        #     Output only. The state of the AD.
        # @!attribute [rw] domain
        #   @return [::String]
        #     Required. Name of the Active Directory domain
        # @!attribute [rw] site
        #   @return [::String]
        #     The Active Directory site the service will limit Domain Controller
        #     discovery too.
        # @!attribute [rw] dns
        #   @return [::String]
        #     Required. Comma separated list of DNS server IP addresses for the Active
        #     Directory domain.
        # @!attribute [rw] net_bios_prefix
        #   @return [::String]
        #     Required. NetBIOSPrefix is used as a prefix for SMB server name.
        # @!attribute [rw] organizational_unit
        #   @return [::String]
        #     The Organizational Unit (OU) within the Windows Active Directory the user
        #     belongs to.
        # @!attribute [rw] aes_encryption
        #   @return [::Boolean]
        #     If enabled, AES encryption will be enabled for SMB communication.
        # @!attribute [rw] username
        #   @return [::String]
        #     Required. Username of the Active Directory domain administrator.
        # @!attribute [rw] password
        #   @return [::String]
        #     Required. Password of the Active Directory domain administrator.
        # @!attribute [rw] backup_operators
        #   @return [::Array<::String>]
        #     Users to be added to the Built-in Backup Operator active directory group.
        # @!attribute [rw] security_operators
        #   @return [::Array<::String>]
        #     Domain users to be given the SeSecurityPrivilege.
        # @!attribute [rw] kdc_hostname
        #   @return [::String]
        #     Name of the active directory machine. This optional parameter is used only
        #     while creating kerberos volume
        # @!attribute [rw] kdc_ip
        #   @return [::String]
        #     KDC server IP address for the active directory machine.
        # @!attribute [rw] nfs_users_with_ldap
        #   @return [::Boolean]
        #     If enabled, will allow access to local users and LDAP users. If access is
        #     needed for only LDAP users, it has to be disabled.
        # @!attribute [rw] description
        #   @return [::String]
        #     Description of the active directory.
        # @!attribute [rw] ldap_signing
        #   @return [::Boolean]
        #     Specifies whether or not the LDAP traffic needs to be signed.
        # @!attribute [rw] encrypt_dc_connections
        #   @return [::Boolean]
        #     If enabled, traffic between the SMB server to Domain Controller (DC) will
        #     be encrypted.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels for the active directory.
        # @!attribute [r] state_details
        #   @return [::String]
        #     Output only. The state details of the Active Directory.
        class ActiveDirectory
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

          # The Active Directory States
          module State
            # Unspecified Active Directory State
            STATE_UNSPECIFIED = 0

            # Active Directory State is Creating
            CREATING = 1

            # Active Directory State is Ready
            READY = 2

            # Active Directory State is Updating
            UPDATING = 3

            # Active Directory State is In use
            IN_USE = 4

            # Active Directory State is Deleting
            DELETING = 5

            # Active Directory State is Error
            ERROR = 6
          end
        end
      end
    end
  end
end
