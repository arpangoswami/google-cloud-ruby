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

require "google/cloud/errors"
require "google/cloud/dataproc/v1/autoscaling_policies_pb"
require "google/cloud/dataproc/v1/autoscaling_policy_service/rest/service_stub"
require "google/iam/v1/rest"

module Google
  module Cloud
    module Dataproc
      module V1
        module AutoscalingPolicyService
          module Rest
            ##
            # REST client for the AutoscalingPolicyService service.
            #
            # The API interface for managing autoscaling policies in the
            # Dataproc API.
            #
            class Client
              include Paths

              # @private
              attr_reader :autoscaling_policy_service_stub

              ##
              # Configure the AutoscalingPolicyService Client class.
              #
              # See {::Google::Cloud::Dataproc::V1::AutoscalingPolicyService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all AutoscalingPolicyService clients
              #   ::Google::Cloud::Dataproc::V1::AutoscalingPolicyService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def self.configure
                @configure ||= begin
                  namespace = ["Google", "Cloud", "Dataproc", "V1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.rpcs.create_autoscaling_policy.timeout = 600.0

                  default_config.rpcs.update_autoscaling_policy.timeout = 600.0
                  default_config.rpcs.update_autoscaling_policy.retry_policy = {
                    initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [4, 14]
                  }

                  default_config.rpcs.get_autoscaling_policy.timeout = 600.0
                  default_config.rpcs.get_autoscaling_policy.retry_policy = {
                    initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [4, 14]
                  }

                  default_config.rpcs.list_autoscaling_policies.timeout = 600.0
                  default_config.rpcs.list_autoscaling_policies.retry_policy = {
                    initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [4, 14]
                  }

                  default_config.rpcs.delete_autoscaling_policy.timeout = 600.0

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the AutoscalingPolicyService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::Dataproc::V1::AutoscalingPolicyService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def configure
                yield @config if block_given?
                @config
              end

              ##
              # Create a new AutoscalingPolicyService REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::Dataproc::V1::AutoscalingPolicyService::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::Dataproc::V1::AutoscalingPolicyService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the AutoscalingPolicyService client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                         !@config.endpoint.split(".").first.include?("-")
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @iam_policy_client = Google::Iam::V1::IAMPolicy::Rest::Client.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                  config.bindings_override = @config.bindings_override
                end

                @autoscaling_policy_service_stub = ::Google::Cloud::Dataproc::V1::AutoscalingPolicyService::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
              end

              ##
              # Get the associated client for mix-in of the IAMPolicy.
              #
              # @return [Google::Iam::V1::IAMPolicy::Rest::Client]
              #
              attr_reader :iam_policy_client

              # Service calls

              ##
              # Creates new autoscaling policy.
              #
              # @overload create_autoscaling_policy(request, options = nil)
              #   Pass arguments to `create_autoscaling_policy` via a request object, either of type
              #   {::Google::Cloud::Dataproc::V1::CreateAutoscalingPolicyRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dataproc::V1::CreateAutoscalingPolicyRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload create_autoscaling_policy(parent: nil, policy: nil)
              #   Pass arguments to `create_autoscaling_policy` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The "resource name" of the region or location, as described
              #     in https://cloud.google.com/apis/design/resource_names.
              #
              #     * For `projects.regions.autoscalingPolicies.create`, the resource name
              #       of the region has the following format:
              #       `projects/{project_id}/regions/{region}`
              #
              #     * For `projects.locations.autoscalingPolicies.create`, the resource name
              #       of the location has the following format:
              #       `projects/{project_id}/locations/{location}`
              #   @param policy [::Google::Cloud::Dataproc::V1::AutoscalingPolicy, ::Hash]
              #     Required. The autoscaling policy to create.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Dataproc::V1::AutoscalingPolicy]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Dataproc::V1::AutoscalingPolicy]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def create_autoscaling_policy request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1::CreateAutoscalingPolicyRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.create_autoscaling_policy.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dataproc::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.create_autoscaling_policy.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.create_autoscaling_policy.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @autoscaling_policy_service_stub.create_autoscaling_policy request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Updates (replaces) autoscaling policy.
              #
              # Disabled check for update_mask, because all updates will be full
              # replacements.
              #
              # @overload update_autoscaling_policy(request, options = nil)
              #   Pass arguments to `update_autoscaling_policy` via a request object, either of type
              #   {::Google::Cloud::Dataproc::V1::UpdateAutoscalingPolicyRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dataproc::V1::UpdateAutoscalingPolicyRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload update_autoscaling_policy(policy: nil)
              #   Pass arguments to `update_autoscaling_policy` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param policy [::Google::Cloud::Dataproc::V1::AutoscalingPolicy, ::Hash]
              #     Required. The updated autoscaling policy.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Dataproc::V1::AutoscalingPolicy]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Dataproc::V1::AutoscalingPolicy]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def update_autoscaling_policy request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1::UpdateAutoscalingPolicyRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.update_autoscaling_policy.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dataproc::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.update_autoscaling_policy.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.update_autoscaling_policy.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @autoscaling_policy_service_stub.update_autoscaling_policy request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Retrieves autoscaling policy.
              #
              # @overload get_autoscaling_policy(request, options = nil)
              #   Pass arguments to `get_autoscaling_policy` via a request object, either of type
              #   {::Google::Cloud::Dataproc::V1::GetAutoscalingPolicyRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dataproc::V1::GetAutoscalingPolicyRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload get_autoscaling_policy(name: nil)
              #   Pass arguments to `get_autoscaling_policy` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The "resource name" of the autoscaling policy, as described
              #     in https://cloud.google.com/apis/design/resource_names.
              #
              #     * For `projects.regions.autoscalingPolicies.get`, the resource name
              #       of the policy has the following format:
              #       `projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id}`
              #
              #     * For `projects.locations.autoscalingPolicies.get`, the resource name
              #       of the policy has the following format:
              #       `projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}`
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Dataproc::V1::AutoscalingPolicy]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Dataproc::V1::AutoscalingPolicy]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def get_autoscaling_policy request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1::GetAutoscalingPolicyRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.get_autoscaling_policy.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dataproc::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.get_autoscaling_policy.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.get_autoscaling_policy.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @autoscaling_policy_service_stub.get_autoscaling_policy request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Lists autoscaling policies in the project.
              #
              # @overload list_autoscaling_policies(request, options = nil)
              #   Pass arguments to `list_autoscaling_policies` via a request object, either of type
              #   {::Google::Cloud::Dataproc::V1::ListAutoscalingPoliciesRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dataproc::V1::ListAutoscalingPoliciesRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload list_autoscaling_policies(parent: nil, page_size: nil, page_token: nil)
              #   Pass arguments to `list_autoscaling_policies` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The "resource name" of the region or location, as described
              #     in https://cloud.google.com/apis/design/resource_names.
              #
              #     * For `projects.regions.autoscalingPolicies.list`, the resource name
              #       of the region has the following format:
              #       `projects/{project_id}/regions/{region}`
              #
              #     * For `projects.locations.autoscalingPolicies.list`, the resource name
              #       of the location has the following format:
              #       `projects/{project_id}/locations/{location}`
              #   @param page_size [::Integer]
              #     Optional. The maximum number of results to return in each response.
              #     Must be less than or equal to 1000. Defaults to 100.
              #   @param page_token [::String]
              #     Optional. The page token, returned by a previous call, to request the
              #     next page of results.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Rest::PagedEnumerable<::Google::Cloud::Dataproc::V1::AutoscalingPolicy>]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Rest::PagedEnumerable<::Google::Cloud::Dataproc::V1::AutoscalingPolicy>]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def list_autoscaling_policies request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1::ListAutoscalingPoliciesRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.list_autoscaling_policies.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dataproc::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.list_autoscaling_policies.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.list_autoscaling_policies.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @autoscaling_policy_service_stub.list_autoscaling_policies request, options do |result, operation|
                  result = ::Gapic::Rest::PagedEnumerable.new @autoscaling_policy_service_stub, :list_autoscaling_policies, "policies", request, result, options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Deletes an autoscaling policy. It is an error to delete an autoscaling
              # policy that is in use by one or more clusters.
              #
              # @overload delete_autoscaling_policy(request, options = nil)
              #   Pass arguments to `delete_autoscaling_policy` via a request object, either of type
              #   {::Google::Cloud::Dataproc::V1::DeleteAutoscalingPolicyRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dataproc::V1::DeleteAutoscalingPolicyRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload delete_autoscaling_policy(name: nil)
              #   Pass arguments to `delete_autoscaling_policy` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The "resource name" of the autoscaling policy, as described
              #     in https://cloud.google.com/apis/design/resource_names.
              #
              #     * For `projects.regions.autoscalingPolicies.delete`, the resource name
              #       of the policy has the following format:
              #       `projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id}`
              #
              #     * For `projects.locations.autoscalingPolicies.delete`, the resource name
              #       of the policy has the following format:
              #       `projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}`
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Protobuf::Empty]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Protobuf::Empty]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def delete_autoscaling_policy request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataproc::V1::DeleteAutoscalingPolicyRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.delete_autoscaling_policy.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dataproc::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.delete_autoscaling_policy.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.delete_autoscaling_policy.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @autoscaling_policy_service_stub.delete_autoscaling_policy request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the AutoscalingPolicyService REST API.
              #
              # This class represents the configuration for AutoscalingPolicyService REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::Dataproc::V1::AutoscalingPolicyService::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # create_autoscaling_policy to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::Dataproc::V1::AutoscalingPolicyService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.create_autoscaling_policy.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::Dataproc::V1::AutoscalingPolicyService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.create_autoscaling_policy.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"dataproc.googleapis.com"`.
              #   @return [::String]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
              #    *  (`nil`) indicating no credentials
              #   @return [::Object]
              # @!attribute [rw] scope
              #   The OAuth scopes
              #   @return [::Array<::String>]
              # @!attribute [rw] lib_name
              #   The library name as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] lib_version
              #   The library version as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional headers to be sent with the call.
              #   @return [::Hash{::Symbol=>::String}]
              # @!attribute [rw] retry_policy
              #   The retry policy. The value is a hash with the following keys:
              #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #       trigger a retry.
              #   @return [::Hash]
              # @!attribute [rw] quota_project
              #   A separate project against which to charge quota.
              #   @return [::String]
              #
              class Configuration
                extend ::Gapic::Config

                config_attr :endpoint,      "dataproc.googleapis.com", ::String
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil

                # @private
                # Overrides for http bindings for the RPCs of this service
                # are only used when this service is used as mixin, and only
                # by the host service.
                # @return [::Hash{::Symbol=>::Array<::Gapic::Rest::GrpcTranscoder::HttpBinding>}]
                config_attr :bindings_override, {}, ::Hash, nil

                # @private
                def initialize parent_config = nil
                  @parent_config = parent_config unless parent_config.nil?

                  yield self if block_given?
                end

                ##
                # Configurations for individual RPCs
                # @return [Rpcs]
                #
                def rpcs
                  @rpcs ||= begin
                    parent_rpcs = nil
                    parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                    Rpcs.new parent_rpcs
                  end
                end

                ##
                # Configuration RPC class for the AutoscalingPolicyService API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
                #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                #     include the following keys:
                #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #         trigger a retry.
                #
                class Rpcs
                  ##
                  # RPC-specific configuration for `create_autoscaling_policy`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :create_autoscaling_policy
                  ##
                  # RPC-specific configuration for `update_autoscaling_policy`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :update_autoscaling_policy
                  ##
                  # RPC-specific configuration for `get_autoscaling_policy`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :get_autoscaling_policy
                  ##
                  # RPC-specific configuration for `list_autoscaling_policies`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :list_autoscaling_policies
                  ##
                  # RPC-specific configuration for `delete_autoscaling_policy`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :delete_autoscaling_policy

                  # @private
                  def initialize parent_rpcs = nil
                    create_autoscaling_policy_config = parent_rpcs.create_autoscaling_policy if parent_rpcs.respond_to? :create_autoscaling_policy
                    @create_autoscaling_policy = ::Gapic::Config::Method.new create_autoscaling_policy_config
                    update_autoscaling_policy_config = parent_rpcs.update_autoscaling_policy if parent_rpcs.respond_to? :update_autoscaling_policy
                    @update_autoscaling_policy = ::Gapic::Config::Method.new update_autoscaling_policy_config
                    get_autoscaling_policy_config = parent_rpcs.get_autoscaling_policy if parent_rpcs.respond_to? :get_autoscaling_policy
                    @get_autoscaling_policy = ::Gapic::Config::Method.new get_autoscaling_policy_config
                    list_autoscaling_policies_config = parent_rpcs.list_autoscaling_policies if parent_rpcs.respond_to? :list_autoscaling_policies
                    @list_autoscaling_policies = ::Gapic::Config::Method.new list_autoscaling_policies_config
                    delete_autoscaling_policy_config = parent_rpcs.delete_autoscaling_policy if parent_rpcs.respond_to? :delete_autoscaling_policy
                    @delete_autoscaling_policy = ::Gapic::Config::Method.new delete_autoscaling_policy_config

                    yield self if block_given?
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
