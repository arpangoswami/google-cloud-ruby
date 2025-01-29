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

require "google/cloud/errors"
require "google/apps/meet/v2/service_pb"

module Google
  module Apps
    module Meet
      module V2
        module SpacesService
          ##
          # Client for the SpacesService service.
          #
          # REST API for services dealing with spaces.
          #
          class Client
            # @private
            API_VERSION = ""

            # @private
            DEFAULT_ENDPOINT_TEMPLATE = "meet.$UNIVERSE_DOMAIN$"

            include Paths

            # @private
            attr_reader :spaces_service_stub

            ##
            # Configure the SpacesService Client class.
            #
            # See {::Google::Apps::Meet::V2::SpacesService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all SpacesService clients
            #   ::Google::Apps::Meet::V2::SpacesService::Client.configure do |config|
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
                namespace = ["Google", "Apps", "Meet", "V2"]
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
            # See {::Google::Apps::Meet::V2::SpacesService::Client::Configuration}
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
            # Create a new SpacesService client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Apps::Meet::V2::SpacesService::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Apps::Meet::V2::SpacesService::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the SpacesService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/apps/meet/v2/service_services_pb"

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

              @spaces_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Apps::Meet::V2::SpacesService::Stub,
                credentials: credentials,
                endpoint: @config.endpoint,
                endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                universe_domain: @config.universe_domain,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors,
                channel_pool_config: @config.channel_pool,
                logger: @config.logger
              )

              @spaces_service_stub.stub_logger&.info do |entry|
                entry.set_system_name
                entry.set_service
                entry.message = "Created client for #{entry.service}"
                entry.set_credentials_fields credentials
                entry.set "customEndpoint", @config.endpoint if @config.endpoint
                entry.set "defaultTimeout", @config.timeout if @config.timeout
                entry.set "quotaProject", @quota_project_id if @quota_project_id
              end
            end

            ##
            # The logger used for request/response debug logging.
            #
            # @return [Logger]
            #
            def logger
              @spaces_service_stub.logger
            end

            # Service calls

            ##
            # Creates a space.
            #
            # @overload create_space(request, options = nil)
            #   Pass arguments to `create_space` via a request object, either of type
            #   {::Google::Apps::Meet::V2::CreateSpaceRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Apps::Meet::V2::CreateSpaceRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload create_space(space: nil)
            #   Pass arguments to `create_space` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param space [::Google::Apps::Meet::V2::Space, ::Hash]
            #     Space to be created. As of May 2023, the input space can be empty. Later on
            #     the input space can be non-empty when space configuration is introduced.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Apps::Meet::V2::Space]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Apps::Meet::V2::Space]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/apps/meet/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Apps::Meet::V2::SpacesService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Apps::Meet::V2::CreateSpaceRequest.new
            #
            #   # Call the create_space method.
            #   result = client.create_space request
            #
            #   # The returned object is of type Google::Apps::Meet::V2::Space.
            #   p result
            #
            def create_space request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Apps::Meet::V2::CreateSpaceRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.create_space.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Apps::Meet::V2::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              options.apply_defaults timeout:      @config.rpcs.create_space.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.create_space.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @spaces_service_stub.call_rpc :create_space, request, options: options do |response, operation|
                yield response, operation if block_given?
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Gets details about a meeting space.
            #
            # For an example, see [Get a meeting
            # space](https://developers.google.com/meet/api/guides/meeting-spaces#get-meeting-space).
            #
            # @overload get_space(request, options = nil)
            #   Pass arguments to `get_space` via a request object, either of type
            #   {::Google::Apps::Meet::V2::GetSpaceRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Apps::Meet::V2::GetSpaceRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_space(name: nil)
            #   Pass arguments to `get_space` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. Resource name of the space.
            #
            #     Format: `spaces/{space}` or `spaces/{meetingCode}`.
            #
            #     `{space}` is the resource identifier for the space. It's a unique,
            #     server-generated ID and is case sensitive. For example, `jQCFfuBOdN5z`.
            #
            #     `{meetingCode}` is an alias for the space. It's a typeable, unique
            #     character string and is non-case sensitive. For example, `abc-mnop-xyz`.
            #     The maximum length is 128 characters.
            #
            #     A `meetingCode` shouldn't be stored long term as it can become
            #     dissociated from a meeting space and can be reused for different meeting
            #     spaces in the future. Generally, a `meetingCode` expires 365 days after
            #     last use. For more information, see [Learn about meeting codes in Google
            #     Meet](https://support.google.com/meet/answer/10710509).
            #
            #     For more information, see [How Meet identifies a meeting
            #     space](https://developers.google.com/meet/api/guides/meeting-spaces#identify-meeting-space).
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Apps::Meet::V2::Space]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Apps::Meet::V2::Space]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/apps/meet/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Apps::Meet::V2::SpacesService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Apps::Meet::V2::GetSpaceRequest.new
            #
            #   # Call the get_space method.
            #   result = client.get_space request
            #
            #   # The returned object is of type Google::Apps::Meet::V2::Space.
            #   p result
            #
            def get_space request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Apps::Meet::V2::GetSpaceRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_space.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Apps::Meet::V2::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_space.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_space.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @spaces_service_stub.call_rpc :get_space, request, options: options do |response, operation|
                yield response, operation if block_given?
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Updates details about a meeting space.
            #
            # For an example, see [Update a meeting
            # space](https://developers.google.com/meet/api/guides/meeting-spaces#update-meeting-space).
            #
            # @overload update_space(request, options = nil)
            #   Pass arguments to `update_space` via a request object, either of type
            #   {::Google::Apps::Meet::V2::UpdateSpaceRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Apps::Meet::V2::UpdateSpaceRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload update_space(space: nil, update_mask: nil)
            #   Pass arguments to `update_space` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param space [::Google::Apps::Meet::V2::Space, ::Hash]
            #     Required. Space to be updated.
            #   @param update_mask [::Google::Protobuf::FieldMask, ::Hash]
            #     Optional. Field mask used to specify the fields to be updated in the space.
            #     If update_mask isn't provided(not set, set with empty paths, or only has ""
            #     as paths), it defaults to update all fields provided with values in the
            #     request.
            #     Using "*" as update_mask will update all fields, including deleting fields
            #     not set in the request.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Apps::Meet::V2::Space]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Apps::Meet::V2::Space]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/apps/meet/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Apps::Meet::V2::SpacesService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Apps::Meet::V2::UpdateSpaceRequest.new
            #
            #   # Call the update_space method.
            #   result = client.update_space request
            #
            #   # The returned object is of type Google::Apps::Meet::V2::Space.
            #   p result
            #
            def update_space request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Apps::Meet::V2::UpdateSpaceRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.update_space.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Apps::Meet::V2::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.space&.name
                header_params["space.name"] = request.space.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.update_space.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.update_space.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @spaces_service_stub.call_rpc :update_space, request, options: options do |response, operation|
                yield response, operation if block_given?
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Ends an active conference (if there's one).
            #
            # For an example, see [End active
            # conference](https://developers.google.com/meet/api/guides/meeting-spaces#end-active-conference).
            #
            # @overload end_active_conference(request, options = nil)
            #   Pass arguments to `end_active_conference` via a request object, either of type
            #   {::Google::Apps::Meet::V2::EndActiveConferenceRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Apps::Meet::V2::EndActiveConferenceRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload end_active_conference(name: nil)
            #   Pass arguments to `end_active_conference` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. Resource name of the space.
            #
            #     Format: `spaces/{space}`.
            #
            #     `{space}` is the resource identifier for the space. It's a unique,
            #     server-generated ID and is case sensitive. For example, `jQCFfuBOdN5z`.
            #
            #     For more information, see [How Meet identifies a meeting
            #     space](https://developers.google.com/meet/api/guides/meeting-spaces#identify-meeting-space).
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Protobuf::Empty]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Protobuf::Empty]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/apps/meet/v2"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Apps::Meet::V2::SpacesService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Apps::Meet::V2::EndActiveConferenceRequest.new
            #
            #   # Call the end_active_conference method.
            #   result = client.end_active_conference request
            #
            #   # The returned object is of type Google::Protobuf::Empty.
            #   p result
            #
            def end_active_conference request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Apps::Meet::V2::EndActiveConferenceRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.end_active_conference.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Apps::Meet::V2::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.end_active_conference.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.end_active_conference.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @spaces_service_stub.call_rpc :end_active_conference, request, options: options do |response, operation|
                yield response, operation if block_given?
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the SpacesService API.
            #
            # This class represents the configuration for SpacesService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Apps::Meet::V2::SpacesService::Client::Configuration::Rpcs}
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
            #   ::Google::Apps::Meet::V2::SpacesService::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.create_space.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Apps::Meet::V2::SpacesService::Client.new do |config|
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
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #
            #   Warning: If you accept a credential configuration (JSON file or Hash) from an
            #   external source for authentication to Google Cloud, you must validate it before
            #   providing it to a Google API client library. Providing an unvalidated credential
            #   configuration to Google APIs can compromise the security of your systems and data.
            #   For more information, refer to [Validate credential configurations from external
            #   sources](https://cloud.google.com/docs/authentication/external/externally-sourced-credentials).
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
            # @!attribute [rw] logger
            #   A custom logger to use for request/response debug logging, or the value
            #   `:default` (the default) to construct a default logger, or `nil` to
            #   explicitly disable logging.
            #   @return [::Logger,:default,nil]
            #
            class Configuration
              extend ::Gapic::Config

              # @private
              # The endpoint specific to the default "googleapis.com" universe. Deprecated.
              DEFAULT_ENDPOINT = "meet.googleapis.com"

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
              config_attr :logger, :default, ::Logger, nil, :default

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
              # Configuration RPC class for the SpacesService API.
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
