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
require "google/cloud/policysimulator/v1/simulator_pb"

module Google
  module Cloud
    module PolicySimulator
      module V1
        module Simulator
          ##
          # Client for the Simulator service.
          #
          # Policy Simulator API service.
          #
          # Policy Simulator is a collection of endpoints for creating, running, and
          # viewing a {::Google::Cloud::PolicySimulator::V1::Replay Replay}. A
          # {::Google::Cloud::PolicySimulator::V1::Replay Replay} is a type of simulation that
          # lets you see how your principals' access to resources might change if you
          # changed your IAM policy.
          #
          # During a {::Google::Cloud::PolicySimulator::V1::Replay Replay}, Policy Simulator
          # re-evaluates, or replays, past access attempts under both the current policy
          # and  your proposed policy, and compares those results to determine how your
          # principals' access might change under the proposed policy.
          #
          class Client
            # @private
            API_VERSION = ""

            # @private
            DEFAULT_ENDPOINT_TEMPLATE = "policysimulator.$UNIVERSE_DOMAIN$"

            include Paths

            # @private
            attr_reader :simulator_stub

            ##
            # Configure the Simulator Client class.
            #
            # See {::Google::Cloud::PolicySimulator::V1::Simulator::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all Simulator clients
            #   ::Google::Cloud::PolicySimulator::V1::Simulator::Client.configure do |config|
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
                namespace = ["Google", "Cloud", "PolicySimulator", "V1"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.rpcs.get_replay.timeout = 60.0
                default_config.rpcs.get_replay.retry_policy = {
                  initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config.rpcs.create_replay.timeout = 60.0

                default_config.rpcs.list_replay_results.timeout = 60.0
                default_config.rpcs.list_replay_results.retry_policy = {
                  initial_delay: 1.0, max_delay: 10.0, multiplier: 1.3, retry_codes: [14]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the Simulator Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::PolicySimulator::V1::Simulator::Client::Configuration}
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
              @simulator_stub.universe_domain
            end

            ##
            # Create a new Simulator client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::PolicySimulator::V1::Simulator::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::PolicySimulator::V1::Simulator::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the Simulator client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/policysimulator/v1/simulator_services_pb"

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

              @simulator_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::PolicySimulator::V1::Simulator::Stub,
                credentials: credentials,
                endpoint: @config.endpoint,
                endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                universe_domain: @config.universe_domain,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors,
                channel_pool_config: @config.channel_pool
              )
            end

            ##
            # Get the associated client for long-running operations.
            #
            # @return [::Google::Cloud::PolicySimulator::V1::Simulator::Operations]
            #
            attr_reader :operations_client

            # Service calls

            ##
            # Gets the specified {::Google::Cloud::PolicySimulator::V1::Replay Replay}. Each
            # `Replay` is available for at least 7 days.
            #
            # @overload get_replay(request, options = nil)
            #   Pass arguments to `get_replay` via a request object, either of type
            #   {::Google::Cloud::PolicySimulator::V1::GetReplayRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::PolicySimulator::V1::GetReplayRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload get_replay(name: nil)
            #   Pass arguments to `get_replay` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param name [::String]
            #     Required. The name of the {::Google::Cloud::PolicySimulator::V1::Replay Replay}
            #     to retrieve, in the following format:
            #
            #     `{projects|folders|organizations}/{resource-id}/locations/global/replays/{replay-id}`,
            #     where `{resource-id}` is the ID of the project, folder, or organization
            #     that owns the `Replay`.
            #
            #     Example:
            #     `projects/my-example-project/locations/global/replays/506a5f7f-38ce-4d7d-8e03-479ce1833c36`
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::PolicySimulator::V1::Replay]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::PolicySimulator::V1::Replay]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/policy_simulator/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::PolicySimulator::V1::Simulator::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::PolicySimulator::V1::GetReplayRequest.new
            #
            #   # Call the get_replay method.
            #   result = client.get_replay request
            #
            #   # The returned object is of type Google::Cloud::PolicySimulator::V1::Replay.
            #   p result
            #
            def get_replay request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::PolicySimulator::V1::GetReplayRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.get_replay.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::PolicySimulator::V1::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.name
                header_params["name"] = request.name
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.get_replay.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.get_replay.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @simulator_stub.call_rpc :get_replay, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Creates and starts a {::Google::Cloud::PolicySimulator::V1::Replay Replay} using
            # the given {::Google::Cloud::PolicySimulator::V1::ReplayConfig ReplayConfig}.
            #
            # @overload create_replay(request, options = nil)
            #   Pass arguments to `create_replay` via a request object, either of type
            #   {::Google::Cloud::PolicySimulator::V1::CreateReplayRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::PolicySimulator::V1::CreateReplayRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload create_replay(parent: nil, replay: nil)
            #   Pass arguments to `create_replay` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The parent resource where this
            #     {::Google::Cloud::PolicySimulator::V1::Replay Replay} will be created. This
            #     resource must be a project, folder, or organization with a location.
            #
            #     Example: `projects/my-example-project/locations/global`
            #   @param replay [::Google::Cloud::PolicySimulator::V1::Replay, ::Hash]
            #     Required. The {::Google::Cloud::PolicySimulator::V1::Replay Replay} to create.
            #     Set `Replay.ReplayConfig` to configure the replay.
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
            #   require "google/cloud/policy_simulator/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::PolicySimulator::V1::Simulator::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::PolicySimulator::V1::CreateReplayRequest.new
            #
            #   # Call the create_replay method.
            #   result = client.create_replay request
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
            def create_replay request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::PolicySimulator::V1::CreateReplayRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.create_replay.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::PolicySimulator::V1::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.create_replay.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.create_replay.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @simulator_stub.call_rpc :create_replay, request, options: options do |response, operation|
                response = ::Gapic::Operation.new response, @operations_client, options: options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Lists the results of running a
            # {::Google::Cloud::PolicySimulator::V1::Replay Replay}.
            #
            # @overload list_replay_results(request, options = nil)
            #   Pass arguments to `list_replay_results` via a request object, either of type
            #   {::Google::Cloud::PolicySimulator::V1::ListReplayResultsRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::PolicySimulator::V1::ListReplayResultsRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload list_replay_results(parent: nil, page_size: nil, page_token: nil)
            #   Pass arguments to `list_replay_results` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The {::Google::Cloud::PolicySimulator::V1::Replay Replay} whose
            #     results are listed, in the following format:
            #
            #     `{projects|folders|organizations}/{resource-id}/locations/global/replays/{replay-id}`
            #
            #     Example:
            #     `projects/my-project/locations/global/replays/506a5f7f-38ce-4d7d-8e03-479ce1833c36`
            #   @param page_size [::Integer]
            #     The maximum number of
            #     {::Google::Cloud::PolicySimulator::V1::ReplayResult ReplayResult} objects to
            #     return. Defaults to 5000.
            #
            #     The maximum value is 5000; values above 5000 are rounded down to 5000.
            #   @param page_token [::String]
            #     A page token, received from a previous
            #     {::Google::Cloud::PolicySimulator::V1::Simulator::Client#list_replay_results Simulator.ListReplayResults}
            #     call. Provide this token to retrieve the next page of results.
            #
            #     When paginating, all other parameters provided to
            #     [Simulator.ListReplayResults[] must match the call that provided the page
            #     token.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::PolicySimulator::V1::ReplayResult>]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Gapic::PagedEnumerable<::Google::Cloud::PolicySimulator::V1::ReplayResult>]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/policy_simulator/v1"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::PolicySimulator::V1::Simulator::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::PolicySimulator::V1::ListReplayResultsRequest.new
            #
            #   # Call the list_replay_results method.
            #   result = client.list_replay_results request
            #
            #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
            #   # over elements, and API calls will be issued to fetch pages as needed.
            #   result.each do |item|
            #     # Each element is of type ::Google::Cloud::PolicySimulator::V1::ReplayResult.
            #     p item
            #   end
            #
            def list_replay_results request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::PolicySimulator::V1::ListReplayResultsRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.list_replay_results.metadata.to_h

              # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::PolicySimulator::V1::VERSION
              metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.list_replay_results.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.list_replay_results.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @simulator_stub.call_rpc :list_replay_results, request, options: options do |response, operation|
                response = ::Gapic::PagedEnumerable.new @simulator_stub, :list_replay_results, request, response, operation, options
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the Simulator API.
            #
            # This class represents the configuration for Simulator,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::PolicySimulator::V1::Simulator::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # get_replay to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::PolicySimulator::V1::Simulator::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.get_replay.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::PolicySimulator::V1::Simulator::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.get_replay.timeout = 20.0
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
              DEFAULT_ENDPOINT = "policysimulator.googleapis.com"

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
              # Configuration RPC class for the Simulator API.
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
                # RPC-specific configuration for `get_replay`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :get_replay
                ##
                # RPC-specific configuration for `create_replay`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :create_replay
                ##
                # RPC-specific configuration for `list_replay_results`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :list_replay_results

                # @private
                def initialize parent_rpcs = nil
                  get_replay_config = parent_rpcs.get_replay if parent_rpcs.respond_to? :get_replay
                  @get_replay = ::Gapic::Config::Method.new get_replay_config
                  create_replay_config = parent_rpcs.create_replay if parent_rpcs.respond_to? :create_replay
                  @create_replay = ::Gapic::Config::Method.new create_replay_config
                  list_replay_results_config = parent_rpcs.list_replay_results if parent_rpcs.respond_to? :list_replay_results
                  @list_replay_results = ::Gapic::Config::Method.new list_replay_results_config

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
