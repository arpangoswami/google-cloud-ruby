# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "google/cloud/compute/v1/accelerator_types"
require "google/cloud/compute/v1/addresses"
require "google/cloud/compute/v1/autoscalers"
require "google/cloud/compute/v1/backend_buckets"
require "google/cloud/compute/v1/backend_services"
require "google/cloud/compute/v1/disk_types"
require "google/cloud/compute/v1/disks"
require "google/cloud/compute/v1/external_vpn_gateways"
require "google/cloud/compute/v1/firewall_policies"
require "google/cloud/compute/v1/firewalls"
require "google/cloud/compute/v1/forwarding_rules"
require "google/cloud/compute/v1/global_addresses"
require "google/cloud/compute/v1/global_forwarding_rules"
require "google/cloud/compute/v1/global_network_endpoint_groups"
require "google/cloud/compute/v1/global_operations"
require "google/cloud/compute/v1/global_organization_operations"
require "google/cloud/compute/v1/global_public_delegated_prefixes"
require "google/cloud/compute/v1/health_checks"
require "google/cloud/compute/v1/image_family_views"
require "google/cloud/compute/v1/images"
require "google/cloud/compute/v1/instance_group_manager_resize_requests"
require "google/cloud/compute/v1/instance_group_managers"
require "google/cloud/compute/v1/instance_groups"
require "google/cloud/compute/v1/instance_settings_service"
require "google/cloud/compute/v1/instance_templates"
require "google/cloud/compute/v1/instances"
require "google/cloud/compute/v1/instant_snapshots"
require "google/cloud/compute/v1/interconnect_attachments"
require "google/cloud/compute/v1/interconnect_locations"
require "google/cloud/compute/v1/interconnect_remote_locations"
require "google/cloud/compute/v1/interconnects"
require "google/cloud/compute/v1/license_codes"
require "google/cloud/compute/v1/licenses"
require "google/cloud/compute/v1/machine_images"
require "google/cloud/compute/v1/machine_types"
require "google/cloud/compute/v1/network_attachments"
require "google/cloud/compute/v1/network_edge_security_services"
require "google/cloud/compute/v1/network_endpoint_groups"
require "google/cloud/compute/v1/network_firewall_policies"
require "google/cloud/compute/v1/network_profiles"
require "google/cloud/compute/v1/networks"
require "google/cloud/compute/v1/node_groups"
require "google/cloud/compute/v1/node_templates"
require "google/cloud/compute/v1/node_types"
require "google/cloud/compute/v1/packet_mirrorings"
require "google/cloud/compute/v1/projects"
require "google/cloud/compute/v1/public_advertised_prefixes"
require "google/cloud/compute/v1/public_delegated_prefixes"
require "google/cloud/compute/v1/region_autoscalers"
require "google/cloud/compute/v1/region_backend_services"
require "google/cloud/compute/v1/region_commitments"
require "google/cloud/compute/v1/region_disk_types"
require "google/cloud/compute/v1/region_disks"
require "google/cloud/compute/v1/region_health_check_services"
require "google/cloud/compute/v1/region_health_checks"
require "google/cloud/compute/v1/region_instance_group_managers"
require "google/cloud/compute/v1/region_instance_groups"
require "google/cloud/compute/v1/region_instance_templates"
require "google/cloud/compute/v1/region_instances"
require "google/cloud/compute/v1/region_instant_snapshots"
require "google/cloud/compute/v1/region_network_endpoint_groups"
require "google/cloud/compute/v1/region_network_firewall_policies"
require "google/cloud/compute/v1/region_notification_endpoints"
require "google/cloud/compute/v1/region_operations"
require "google/cloud/compute/v1/region_security_policies"
require "google/cloud/compute/v1/region_ssl_certificates"
require "google/cloud/compute/v1/region_ssl_policies"
require "google/cloud/compute/v1/region_target_http_proxies"
require "google/cloud/compute/v1/region_target_https_proxies"
require "google/cloud/compute/v1/region_target_tcp_proxies"
require "google/cloud/compute/v1/region_url_maps"
require "google/cloud/compute/v1/region_zones"
require "google/cloud/compute/v1/regions"
require "google/cloud/compute/v1/reservations"
require "google/cloud/compute/v1/resource_policies"
require "google/cloud/compute/v1/routers"
require "google/cloud/compute/v1/routes"
require "google/cloud/compute/v1/security_policies"
require "google/cloud/compute/v1/service_attachments"
require "google/cloud/compute/v1/snapshot_settings_service"
require "google/cloud/compute/v1/snapshots"
require "google/cloud/compute/v1/ssl_certificates"
require "google/cloud/compute/v1/ssl_policies"
require "google/cloud/compute/v1/storage_pool_types"
require "google/cloud/compute/v1/storage_pools"
require "google/cloud/compute/v1/subnetworks"
require "google/cloud/compute/v1/target_grpc_proxies"
require "google/cloud/compute/v1/target_http_proxies"
require "google/cloud/compute/v1/target_https_proxies"
require "google/cloud/compute/v1/target_instances"
require "google/cloud/compute/v1/target_pools"
require "google/cloud/compute/v1/target_ssl_proxies"
require "google/cloud/compute/v1/target_tcp_proxies"
require "google/cloud/compute/v1/target_vpn_gateways"
require "google/cloud/compute/v1/url_maps"
require "google/cloud/compute/v1/vpn_gateways"
require "google/cloud/compute/v1/vpn_tunnels"
require "google/cloud/compute/v1/zone_operations"
require "google/cloud/compute/v1/zones"
require "google/cloud/compute/v1/version"

module Google
  module Cloud
    module Compute
      ##
      # API client module.
      #
      # @example Load this package, including all its services, and instantiate a REST client
      #
      #     require "google/cloud/compute/v1"
      #     client = ::Google::Cloud::Compute::V1::AcceleratorTypes::Rest::Client.new
      #
      module V1
      end
    end
  end
end

helper_path = ::File.join __dir__, "v1", "_helpers.rb"
require "google/cloud/compute/v1/_helpers" if ::File.file? helper_path
