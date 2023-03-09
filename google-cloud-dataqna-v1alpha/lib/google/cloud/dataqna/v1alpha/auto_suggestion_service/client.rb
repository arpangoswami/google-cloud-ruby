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

require "google/cloud/errors"
require "google/cloud/dataqna/v1alpha/auto_suggestion_service_pb"

module Google
  module Cloud
    module DataQnA
      module V1alpha
        module AutoSuggestionService
          ##
          # Client for the AutoSuggestionService service.
          #
          # This stateless API provides automatic suggestions for natural language
          # queries for the data sources in the provided project and location.
          #
          # The service provides a resourceless operation `suggestQueries` that can be
          # called to get a list of suggestions for a given incomplete query and scope
          # (or list of scopes) under which the query is to be interpreted.
          #
          # There are two types of suggestions, ENTITY for single entity suggestions
          # and TEMPLATE for full sentences. By default, both types are returned.
          #
          # Example Request:
          # ```
          # GetSuggestions({
          #   parent: "locations/us/projects/my-project"
          #   scopes:
          #   "//bigquery.googleapis.com/projects/my-project/datasets/my-dataset/tables/my-table"
          #   query: "top it"
          # })
          # ```
          #
          # The service will retrieve information based on the given scope(s) and give
          # suggestions based on that (e.g. "top item" for "top it" if "item" is a known
          # dimension for the provided scope).
          # ```
          # suggestions {
          #   suggestion_info {
          #     annotated_suggestion {
          #       text_formatted: "top item by sum of usd_revenue_net"
          #       markups {
          #         type: DIMENSION
          #         start_char_index: 4
          #         length: 4
          #       }
          #       markups {
          #         type: METRIC
          #         start_char_index: 19
          #         length: 15
          #       }
          #     }
          #     query_matches {
          #       start_char_index: 0
          #       length: 6
          #     }
          #   }
          #   suggestion_type: TEMPLATE
          #   ranking_score: 0.9
          # }
          # suggestions {
          #   suggestion_info {
          #     annotated_suggestion {
          #       text_formatted: "item"
          #       markups {
          #         type: DIMENSION
          #         start_char_index: 4
          #         length: 2
          #       }
          #     }
          #     query_matches {
          #       start_char_index: 0
          #       length: 6
          #     }
          #   }
          #   suggestion_type: ENTITY
          #   ranking_score: 0.8
          # }
          # ```
          #
          class Client
            include Paths

            # @private
            attr_reader :auto_suggestion_service_stub

            ##
            # Configure the AutoSuggestionService Client class.
            #
            # See {::Google::Cloud::DataQnA::V1alpha::AutoSuggestionService::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @example
            #
            #   # Modify the configuration for all AutoSuggestionService clients
            #   ::Google::Cloud::DataQnA::V1alpha::AutoSuggestionService::Client.configure do |config|
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
                namespace = ["Google", "Cloud", "DataQnA", "V1alpha"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.timeout = 2.0

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the AutoSuggestionService Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::DataQnA::V1alpha::AutoSuggestionService::Client::Configuration}
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
            # Create a new AutoSuggestionService client object.
            #
            # @example
            #
            #   # Create a client using the default configuration
            #   client = ::Google::Cloud::DataQnA::V1alpha::AutoSuggestionService::Client.new
            #
            #   # Create a client using a custom configuration
            #   client = ::Google::Cloud::DataQnA::V1alpha::AutoSuggestionService::Client.new do |config|
            #     config.timeout = 10.0
            #   end
            #
            # @yield [config] Configure the AutoSuggestionService client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/dataqna/v1alpha/auto_suggestion_service_services_pb"

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

              @auto_suggestion_service_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::DataQnA::V1alpha::AutoSuggestionService::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            # Service calls

            ##
            # Gets a list of suggestions based on a prefix string.
            # AutoSuggestion tolerance should be less than 1 second.
            #
            # @overload suggest_queries(request, options = nil)
            #   Pass arguments to `suggest_queries` via a request object, either of type
            #   {::Google::Cloud::DataQnA::V1alpha::SuggestQueriesRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::DataQnA::V1alpha::SuggestQueriesRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload suggest_queries(parent: nil, scopes: nil, query: nil, suggestion_types: nil)
            #   Pass arguments to `suggest_queries` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param parent [::String]
            #     Required. The parent of the suggestion query is the resource denoting the project and
            #     location.
            #   @param scopes [::Array<::String>]
            #     The scopes to which this search is restricted. The only supported scope
            #     pattern is
            #     `//bigquery.googleapis.com/projects/{GCP-PROJECT-ID}/datasets/{DATASET-ID}/tables/{TABLE-ID}`.
            #   @param query [::String]
            #     User query for which to generate suggestions. If the query is empty, zero
            #     state suggestions are returned. This allows UIs to display suggestions
            #     right away, helping the user to get a sense of what a query might look
            #     like.
            #   @param suggestion_types [::Array<::Google::Cloud::DataQnA::V1alpha::SuggestionType>]
            #     The requested suggestion type. Multiple suggestion types can be
            #     requested, but there is no guarantee that the service will return
            #     suggestions for each type. Suggestions for a requested type might rank
            #     lower than suggestions for other types and the service may decide to cut
            #     these suggestions off.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::DataQnA::V1alpha::SuggestQueriesResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::DataQnA::V1alpha::SuggestQueriesResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            # @example Basic example
            #   require "google/cloud/dataqna/v1alpha"
            #
            #   # Create a client object. The client can be reused for multiple calls.
            #   client = Google::Cloud::DataQnA::V1alpha::AutoSuggestionService::Client.new
            #
            #   # Create a request. To set request fields, pass in keyword arguments.
            #   request = Google::Cloud::DataQnA::V1alpha::SuggestQueriesRequest.new
            #
            #   # Call the suggest_queries method.
            #   result = client.suggest_queries request
            #
            #   # The returned object is of type Google::Cloud::DataQnA::V1alpha::SuggestQueriesResponse.
            #   p result
            #
            def suggest_queries request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DataQnA::V1alpha::SuggestQueriesRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.suggest_queries.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::DataQnA::V1alpha::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {}
              if request.parent
                header_params["parent"] = request.parent
              end

              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.suggest_queries.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.suggest_queries.retry_policy

              options.apply_defaults timeout:      @config.timeout,
                                     metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @auto_suggestion_service_stub.call_rpc :suggest_queries, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the AutoSuggestionService API.
            #
            # This class represents the configuration for AutoSuggestionService,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::DataQnA::V1alpha::AutoSuggestionService::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # @example
            #
            #   # Modify the global config, setting the timeout for
            #   # suggest_queries to 20 seconds,
            #   # and all remaining timeouts to 10 seconds.
            #   ::Google::Cloud::DataQnA::V1alpha::AutoSuggestionService::Client.configure do |config|
            #     config.timeout = 10.0
            #     config.rpcs.suggest_queries.timeout = 20.0
            #   end
            #
            #   # Apply the above configuration only to a new client.
            #   client = ::Google::Cloud::DataQnA::V1alpha::AutoSuggestionService::Client.new do |config|
            #     config.timeout = 10.0
            #     config.rpcs.suggest_queries.timeout = 20.0
            #   end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"dataqna.googleapis.com"`.
            #   @return [::String]
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
            #
            class Configuration
              extend ::Gapic::Config

              config_attr :endpoint,      "dataqna.googleapis.com", ::String
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
              # Configuration RPC class for the AutoSuggestionService API.
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
                # RPC-specific configuration for `suggest_queries`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :suggest_queries

                # @private
                def initialize parent_rpcs = nil
                  suggest_queries_config = parent_rpcs.suggest_queries if parent_rpcs.respond_to? :suggest_queries
                  @suggest_queries = ::Gapic::Config::Method.new suggest_queries_config

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
