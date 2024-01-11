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
require "google/apps/meet/v2beta/service_pb"
require "google/apps/meet/v2beta/spaces_service/rest/service_stub"

module Google
  module Apps
    module Meet
      module V2beta
        module SpacesService
          module Rest
            ##
            # REST client for the SpacesService service.
            #
            # REST API for services dealing with spaces.
            #
            class Client
              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "meet.$UNIVERSE_DOMAIN$"

              include Paths

              # @private
              attr_reader :spaces_service_stub

              ##
              # Configure the SpacesService Client class.
              #
              # See {::Google::Apps::Meet::V2beta::SpacesService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all SpacesService clients
              #   ::Google::Apps::Meet::V2beta::SpacesService::Rest::Client.configure do |config|
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
                  namespace = ["Google", "Apps", "Meet", "V2beta"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.rpcs.create_space.timeout = 60.0

                  default_config.rpcs.get_space.timeout = 60.0
                  default_config.rpcs.get_space.retry_policy = {
                    initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14]
                  }

                  default_config.rpcs.update_space.timeout = 60.0

                  default_config.rpcs.end_active_conference.timeout = 60.0

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the SpacesService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Apps::Meet::V2beta::SpacesService::Rest::Client::Configuration}
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
              # The effective universe domain
              #
              # @return [String]
              #
              def universe_domain
                @spaces_service_stub.universe_domain
              end

              ##
              # Create a new SpacesService REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Apps::Meet::V2beta::SpacesService::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Apps::Meet::V2beta::SpacesService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the SpacesService client.
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
                enable_self_signed_jwt = @config.endpoint.nil? ||
                                         (@config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                         !@config.endpoint.split(".").first.include?("-"))
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @spaces_service_stub = ::Google::Apps::Meet::V2beta::SpacesService::Rest::ServiceStub.new(
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  credentials: credentials
                )
              end

              # Service calls

              ##
              # [Developer Preview](https://developers.google.com/workspace/preview).
              # Creates a space.
              #
              # @overload create_space(request, options = nil)
              #   Pass arguments to `create_space` via a request object, either of type
              #   {::Google::Apps::Meet::V2beta::CreateSpaceRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Apps::Meet::V2beta::CreateSpaceRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload create_space(space: nil)
              #   Pass arguments to `create_space` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param space [::Google::Apps::Meet::V2beta::Space, ::Hash]
              #     Space to be created. As of May 2023, the input space can be empty. Later on
              #     the input space can be non-empty when space configuration is introduced.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Apps::Meet::V2beta::Space]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Apps::Meet::V2beta::Space]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/apps/meet/v2beta"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Apps::Meet::V2beta::SpacesService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Apps::Meet::V2beta::CreateSpaceRequest.new
              #
              #   # Call the create_space method.
              #   result = client.create_space request
              #
              #   # The returned object is of type Google::Apps::Meet::V2beta::Space.
              #   p result
              #
              def create_space request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Apps::Meet::V2beta::CreateSpaceRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.create_space.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Apps::Meet::V2beta::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.create_space.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.create_space.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @spaces_service_stub.create_space request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # [Developer Preview](https://developers.google.com/workspace/preview).
              # Gets a space by `space_id` or `meeting_code`.
              #
              # @overload get_space(request, options = nil)
              #   Pass arguments to `get_space` via a request object, either of type
              #   {::Google::Apps::Meet::V2beta::GetSpaceRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Apps::Meet::V2beta::GetSpaceRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload get_space(name: nil)
              #   Pass arguments to `get_space` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. Resource name of the space.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Apps::Meet::V2beta::Space]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Apps::Meet::V2beta::Space]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/apps/meet/v2beta"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Apps::Meet::V2beta::SpacesService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Apps::Meet::V2beta::GetSpaceRequest.new
              #
              #   # Call the get_space method.
              #   result = client.get_space request
              #
              #   # The returned object is of type Google::Apps::Meet::V2beta::Space.
              #   p result
              #
              def get_space request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Apps::Meet::V2beta::GetSpaceRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.get_space.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Apps::Meet::V2beta::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.get_space.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.get_space.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @spaces_service_stub.get_space request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # [Developer Preview](https://developers.google.com/workspace/preview).
              # Updates a space.
              #
              # @overload update_space(request, options = nil)
              #   Pass arguments to `update_space` via a request object, either of type
              #   {::Google::Apps::Meet::V2beta::UpdateSpaceRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Apps::Meet::V2beta::UpdateSpaceRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload update_space(space: nil, update_mask: nil)
              #   Pass arguments to `update_space` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param space [::Google::Apps::Meet::V2beta::Space, ::Hash]
              #     Required. Space to be updated.
              #   @param update_mask [::Google::Protobuf::FieldMask, ::Hash]
              #     Optional. Field mask used to specify the fields to be updated in the space.
              #     If update_mask isn't provided, it defaults to '*' and updates all
              #     fields provided in the request, including deleting fields not set in the
              #     request.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Apps::Meet::V2beta::Space]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Apps::Meet::V2beta::Space]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/apps/meet/v2beta"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Apps::Meet::V2beta::SpacesService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Apps::Meet::V2beta::UpdateSpaceRequest.new
              #
              #   # Call the update_space method.
              #   result = client.update_space request
              #
              #   # The returned object is of type Google::Apps::Meet::V2beta::Space.
              #   p result
              #
              def update_space request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Apps::Meet::V2beta::UpdateSpaceRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.update_space.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Apps::Meet::V2beta::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.update_space.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.update_space.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @spaces_service_stub.update_space request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # [Developer Preview](https://developers.google.com/workspace/preview).
              # Ends an active conference (if there is one).
              #
              # @overload end_active_conference(request, options = nil)
              #   Pass arguments to `end_active_conference` via a request object, either of type
              #   {::Google::Apps::Meet::V2beta::EndActiveConferenceRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Apps::Meet::V2beta::EndActiveConferenceRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload end_active_conference(name: nil)
              #   Pass arguments to `end_active_conference` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. Resource name of the space.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Protobuf::Empty]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Protobuf::Empty]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/apps/meet/v2beta"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Apps::Meet::V2beta::SpacesService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Apps::Meet::V2beta::EndActiveConferenceRequest.new
              #
              #   # Call the end_active_conference method.
              #   result = client.end_active_conference request
              #
              #   # The returned object is of type Google::Protobuf::Empty.
              #   p result
              #
              def end_active_conference request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Apps::Meet::V2beta::EndActiveConferenceRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.end_active_conference.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Apps::Meet::V2beta::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.end_active_conference.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.end_active_conference.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @spaces_service_stub.end_active_conference request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the SpacesService REST API.
              #
              # This class represents the configuration for SpacesService REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Apps::Meet::V2beta::SpacesService::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # create_space to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Apps::Meet::V2beta::SpacesService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.create_space.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Apps::Meet::V2beta::SpacesService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.create_space.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   A custom service endpoint, as a hostname or hostname:port. The default is
              #   nil, indicating to use the default endpoint in the current universe domain.
              #   @return [::String,nil]
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
              # @!attribute [rw] universe_domain
              #   The universe domain within which to make requests. This determines the
              #   default endpoint URL. The default value of nil uses the environment
              #   universe (usually the default "googleapis.com" universe).
              #   @return [::String,nil]
              #
              class Configuration
                extend ::Gapic::Config

                # @private
                # The endpoint specific to the default "googleapis.com" universe. Deprecated.
                DEFAULT_ENDPOINT = "meet.googleapis.com"

                config_attr :endpoint,      nil, ::String, nil
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
                config_attr :universe_domain, nil, ::String, nil

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
                # Configuration RPC class for the SpacesService API.
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
                  # RPC-specific configuration for `create_space`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :create_space
                  ##
                  # RPC-specific configuration for `get_space`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :get_space
                  ##
                  # RPC-specific configuration for `update_space`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :update_space
                  ##
                  # RPC-specific configuration for `end_active_conference`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :end_active_conference

                  # @private
                  def initialize parent_rpcs = nil
                    create_space_config = parent_rpcs.create_space if parent_rpcs.respond_to? :create_space
                    @create_space = ::Gapic::Config::Method.new create_space_config
                    get_space_config = parent_rpcs.get_space if parent_rpcs.respond_to? :get_space
                    @get_space = ::Gapic::Config::Method.new get_space_config
                    update_space_config = parent_rpcs.update_space if parent_rpcs.respond_to? :update_space
                    @update_space = ::Gapic::Config::Method.new update_space_config
                    end_active_conference_config = parent_rpcs.end_active_conference if parent_rpcs.respond_to? :end_active_conference
                    @end_active_conference = ::Gapic::Config::Method.new end_active_conference_config

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
