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
require "google/cloud/discoveryengine/v1/user_event_service_pb"
require "google/cloud/location"

module Google
  module Cloud
    module DiscoveryEngine
      module V1
        module UserEventService
          ##
          # Client for the UserEventService service.
          #
          # Service for ingesting end user actions on a website to Discovery Engine API.
          #
          class Client
            # @private
            API_VERSION = ""

            # @private
            DEFAULT_ENDPOINT_TEMPLATE = "discoveryengine.$UNIVERSE_DOMAIN$"

            include Paths

            # @private
            attr_reader :user_event_service_stub

            ##
            # Configure the UserEventService Client class.
            #
            # See {::Google::Cloud::DiscoveryEngine::V1::UserEventService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all UserEventService clients
            #   ::Google::Cloud::DiscoveryEngine::V1::UserEventService::Client.configure do |config|
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
                namespace = ["Google", "Cloud", "DiscoveryEngine", "V1"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.timeout = 30.0
                default_config.retry_policy = {
                  initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config.rpcs.import_user_events.timeout = 300.0
                default_config.rpcs.import_user_events.retry_policy = {
                  initial_delay: 1.0, max_delay: 30.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the UserEventService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::DiscoveryEngine::V1::UserEventService::Client::Configuration}
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
              @user_event_service_stub.universe_domain
            end

            ##
            # Create a new UserEventService client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::DiscoveryEngine::V1::UserEventService::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::DiscoveryEngine::V1::UserEventService::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the UserEventService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/discoveryengine/v1/user_event_service_services_pb"

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

              @operations_client = Operations.new do |config|
                config.credentials = credentials
                config.quota_project = @quota_project_id
                config.endpoint = @config.endpoint
                config.universe_domain = @config.universe_domain
              end

              @user_event_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::DiscoveryEngine::V1::UserEventService::Stub,
                credentials: credentials,
                endpoint: @config.endpoint,
                endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                universe_domain: @config.universe_domain,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors,
                channel_pool_config: @config.channel_pool
              )

              @location_client = Google::Cloud::Location::Locations::Client.new do |config|
                config.credentials = credentials
                config.quota_project = @quota_project_id
                config.endpoint = @user_event_service_stub.endpoint
                config.universe_domain = @user_event_service_stub.universe_domain
              end
            end

            ##
            # Get the associated client for long-running operations.
            #
            # @return [::Google::Cloud::DiscoveryEngine::V1::UserEventService::Operations]
            #
            attr_reader :operations_client

            ##
            # Get the associated client for mix-in of the Locations.
            #
            # @return [Google::Cloud::Location::Locations::Client]
            #
            attr_reader :location_client

            # Service calls

            ##
            # Writes a single user event.
            #
            # @overload write_user_event(request, options = nil)
            #   Pass arguments to `write_user_event` via a request object, either of type
            #   {::Google::Cloud::DiscoveryEngine::V1::WriteUserEventRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::DiscoveryEngine::V1::WriteUserEventRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload write_user_event(parent: nil, user_event: nil)
            #   Pass arguments to `write_user_event` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The parent DataStore resource name, such as
            #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
            #   @param user_event [::Google::Cloud::DiscoveryEngine::V1::UserEvent, ::Hash]
            #     Required. User event to write.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::DiscoveryEngine::V1::UserEvent]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::DiscoveryEngine::V1::UserEvent]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/discovery_engine/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::DiscoveryEngine::V1::UserEventService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::DiscoveryEngine::V1::WriteUserEventRequest.new
            #
            #   # Call the write_user_event method.
            #   result = client.write_user_event request
            #
            #   # The returned object is of type Google::Cloud::DiscoveryEngine::V1::UserEvent.
            #   p result
            #
            def write_user_event request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DiscoveryEngine::V1::WriteUserEventRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.write_user_event.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::DiscoveryEngine::V1::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.write_user_event.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.write_user_event.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @user_event_service_stub.call_rpc :write_user_event, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Writes a single user event from the browser. This uses a GET request to
            # due to browser restriction of POST-ing to a third-party domain.
            #
            # This method is used only by the Discovery Engine API JavaScript pixel and
            # Google Tag Manager. Users should not call this method directly.
            #
            # @overload collect_user_event(request, options = nil)
            #   Pass arguments to `collect_user_event` via a request object, either of type
            #   {::Google::Cloud::DiscoveryEngine::V1::CollectUserEventRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::DiscoveryEngine::V1::CollectUserEventRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload collect_user_event(parent: nil, user_event: nil, uri: nil, ets: nil)
            #   Pass arguments to `collect_user_event` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The parent DataStore resource name, such as
            #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`.
            #   @param user_event [::String]
            #     Required. URL encoded UserEvent proto with a length limit of 2,000,000
            #     characters.
            #   @param uri [::String]
            #     The URL including cgi-parameters but excluding the hash fragment with a
            #     length limit of 5,000 characters. This is often more useful than the
            #     referer URL, because many browsers only send the domain for third-party
            #     requests.
            #   @param ets [::Integer]
            #     The event timestamp in milliseconds. This prevents browser caching of
            #     otherwise identical get requests. The name is abbreviated to reduce the
            #     payload bytes.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Api::HttpBody]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Api::HttpBody]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/discovery_engine/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::DiscoveryEngine::V1::UserEventService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::DiscoveryEngine::V1::CollectUserEventRequest.new
            #
            #   # Call the collect_user_event method.
            #   result = client.collect_user_event request
            #
            #   # The returned object is of type Google::Api::HttpBody.
            #   p result
            #
            def collect_user_event request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DiscoveryEngine::V1::CollectUserEventRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.collect_user_event.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::DiscoveryEngine::V1::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.collect_user_event.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.collect_user_event.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @user_event_service_stub.call_rpc :collect_user_event, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Bulk import of User events. Request processing might be
            # synchronous. Events that already exist are skipped.
            # Use this method for backfilling historical user events.
            #
            # Operation.response is of type ImportResponse. Note that it is
            # possible for a subset of the items to be successfully inserted.
            # Operation.metadata is of type ImportMetadata.
            #
            # @overload import_user_events(request, options = nil)
            #   Pass arguments to `import_user_events` via a request object, either of type
            #   {::Google::Cloud::DiscoveryEngine::V1::ImportUserEventsRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::DiscoveryEngine::V1::ImportUserEventsRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload import_user_events(inline_source: nil, gcs_source: nil, bigquery_source: nil, parent: nil, error_config: nil)
            #   Pass arguments to `import_user_events` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param inline_source [::Google::Cloud::DiscoveryEngine::V1::ImportUserEventsRequest::InlineSource, ::Hash]
            #     The Inline source for the input content for UserEvents.
            #   @param gcs_source [::Google::Cloud::DiscoveryEngine::V1::GcsSource, ::Hash]
            #     Cloud Storage location for the input content.
            #   @param bigquery_source [::Google::Cloud::DiscoveryEngine::V1::BigQuerySource, ::Hash]
            #     BigQuery input source.
            #   @param parent [::String]
            #     Required. Parent DataStore resource name, of the form
            #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}`
            #   @param error_config [::Google::Cloud::DiscoveryEngine::V1::ImportErrorConfig, ::Hash]
            #     The desired location of errors incurred during the Import. Cannot be set
            #     for inline user event imports.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::Operation]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::Operation]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/discovery_engine/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::DiscoveryEngine::V1::UserEventService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::DiscoveryEngine::V1::ImportUserEventsRequest.new
            #
            #   # Call the import_user_events method.
            #   result = client.import_user_events request
            #
            #   # The returned object is of type Gapic::Operation. You can use it to
            #   # check the status of an operation, cancel it, or wait for results.
            #   # Here is how to wait for a response.
            #   result.wait_until_done! timeout: 60
            #   if result.response?
            #     p result.response
            #   else
            #     puts "No response received."
            #   end
            #
            def import_user_events request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DiscoveryEngine::V1::ImportUserEventsRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.import_user_events.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::DiscoveryEngine::V1::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.import_user_events.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.import_user_events.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @user_event_service_stub.call_rpc :import_user_events, request, options: options do |response, operation|
                response = ::Gapic::Operation.new response, @operations_client, options: options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the UserEventService API.
            #
            # This class represents the configuration for UserEventService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::DiscoveryEngine::V1::UserEventService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # write_user_event to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::DiscoveryEngine::V1::UserEventService::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.write_user_event.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::DiscoveryEngine::V1::UserEventService::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.write_user_event.timeout = 20.0
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
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
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
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
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
              DEFAULT_ENDPOINT = "discoveryengine.googleapis.com"

              config_attr :endpoint,      nil, ::String, nil
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
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
              # Configuration for the channel pool
              # @return [::Gapic::ServiceStub::ChannelPool::Configuration]
              #
              def channel_pool
                @channel_pool ||= ::Gapic::ServiceStub::ChannelPool::Configuration.new
              end

              ##
              # Configuration RPC class for the UserEventService API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
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
                # RPC-specific configuration for `write_user_event`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :write_user_event
                ##
                # RPC-specific configuration for `collect_user_event`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :collect_user_event
                ##
                # RPC-specific configuration for `import_user_events`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :import_user_events

                # @private
                def initialize parent_rpcs = nil
                  write_user_event_config = parent_rpcs.write_user_event if parent_rpcs.respond_to? :write_user_event
                  @write_user_event = ::Gapic::Config::Method.new write_user_event_config
                  collect_user_event_config = parent_rpcs.collect_user_event if parent_rpcs.respond_to? :collect_user_event
                  @collect_user_event = ::Gapic::Config::Method.new collect_user_event_config
                  import_user_events_config = parent_rpcs.import_user_events if parent_rpcs.respond_to? :import_user_events
                  @import_user_events = ::Gapic::Config::Method.new import_user_events_config

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
