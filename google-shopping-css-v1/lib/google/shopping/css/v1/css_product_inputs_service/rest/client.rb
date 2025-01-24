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
require "google/shopping/css/v1/css_product_inputs_pb"
require "google/shopping/css/v1/css_product_inputs_service/rest/service_stub"

module Google
  module Shopping
    module Css
      module V1
        module CssProductInputsService
          module Rest
            ##
            # REST client for the CssProductInputsService service.
            #
            # Service to use CssProductInput resource.
            # This service helps to insert/update/delete CSS Products.
            #
            class Client
              # @private
              API_VERSION = ""

              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "css.$UNIVERSE_DOMAIN$"

              include Paths

              # @private
              attr_reader :css_product_inputs_service_stub

              ##
              # Configure the CssProductInputsService Client class.
              #
              # See {::Google::Shopping::Css::V1::CssProductInputsService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all CssProductInputsService clients
              #   ::Google::Shopping::Css::V1::CssProductInputsService::Rest::Client.configure do |config|
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
                  namespace = ["Google", "Shopping", "Css", "V1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.rpcs.insert_css_product_input.timeout = 60.0

                  default_config.rpcs.update_css_product_input.timeout = 60.0

                  default_config.rpcs.delete_css_product_input.timeout = 60.0

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the CssProductInputsService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Shopping::Css::V1::CssProductInputsService::Rest::Client::Configuration}
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
                @css_product_inputs_service_stub.universe_domain
              end

              ##
              # Create a new CssProductInputsService REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Shopping::Css::V1::CssProductInputsService::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Shopping::Css::V1::CssProductInputsService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the CssProductInputsService client.
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

                @css_product_inputs_service_stub = ::Google::Shopping::Css::V1::CssProductInputsService::Rest::ServiceStub.new(
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  credentials: credentials,
                  logger: @config.logger
                )

                @css_product_inputs_service_stub.logger(stub: true)&.info do |entry|
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
                @css_product_inputs_service_stub.logger
              end

              # Service calls

              ##
              # Uploads a CssProductInput to your CSS Center account. If an
              # input with the same contentLanguage, identity, feedLabel and feedId already
              # exists, this method replaces that entry.
              #
              # After inserting, updating, or deleting a CSS Product input, it may
              # take several minutes before the processed CSS Product can be retrieved.
              #
              # @overload insert_css_product_input(request, options = nil)
              #   Pass arguments to `insert_css_product_input` via a request object, either of type
              #   {::Google::Shopping::Css::V1::InsertCssProductInputRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Shopping::Css::V1::InsertCssProductInputRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload insert_css_product_input(parent: nil, css_product_input: nil, feed_id: nil)
              #   Pass arguments to `insert_css_product_input` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The account where this CSS Product will be inserted.
              #     Format: accounts/\\{account}
              #   @param css_product_input [::Google::Shopping::Css::V1::CssProductInput, ::Hash]
              #     Required. The CSS Product Input to insert.
              #   @param feed_id [::Integer]
              #     Optional. DEPRECATED. Feed id is not required for CSS Products.
              #     The primary or supplemental feed id. If CSS Product already exists and
              #     feed id provided is different, then the CSS Product will be moved to a
              #     new feed.
              #     Note: For now, CSSs do not need to provide feed ids as we create
              #     feeds on the fly.
              #     We do not have supplemental feed support for CSS Products yet.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Shopping::Css::V1::CssProductInput]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Shopping::Css::V1::CssProductInput]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/shopping/css/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Shopping::Css::V1::CssProductInputsService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Shopping::Css::V1::InsertCssProductInputRequest.new
              #
              #   # Call the insert_css_product_input method.
              #   result = client.insert_css_product_input request
              #
              #   # The returned object is of type Google::Shopping::Css::V1::CssProductInput.
              #   p result
              #
              def insert_css_product_input request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Shopping::Css::V1::InsertCssProductInputRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.insert_css_product_input.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Shopping::Css::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.insert_css_product_input.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.insert_css_product_input.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @css_product_inputs_service_stub.insert_css_product_input request, options do |result, operation|
                  yield result, operation if block_given?
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Updates the existing Css Product input in your CSS Center account.
              #
              # After inserting, updating, or deleting a CSS Product input, it may take
              # several minutes before the processed Css Product can be retrieved.
              #
              # @overload update_css_product_input(request, options = nil)
              #   Pass arguments to `update_css_product_input` via a request object, either of type
              #   {::Google::Shopping::Css::V1::UpdateCssProductInputRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Shopping::Css::V1::UpdateCssProductInputRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload update_css_product_input(css_product_input: nil, update_mask: nil)
              #   Pass arguments to `update_css_product_input` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param css_product_input [::Google::Shopping::Css::V1::CssProductInput, ::Hash]
              #     Required. The CSS product input resource to update. Information you submit
              #     will be applied to the processed CSS product as well.
              #   @param update_mask [::Google::Protobuf::FieldMask, ::Hash]
              #     The list of CSS product attributes to be updated.
              #
              #     If the update mask is omitted, then it is treated as implied field mask
              #     equivalent to all fields that are populated (have a non-empty value).
              #
              #     Attributes specified in the update mask without a value specified in the
              #     body will be deleted from the CSS product.
              #
              #     Update mask can only be specified for top level fields in
              #     attributes and custom attributes.
              #
              #     To specify the update mask for custom attributes you need to add the
              #     `custom_attribute.` prefix.
              #
              #     Providing special "*" value for full CSS product replacement is not
              #     supported.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Shopping::Css::V1::CssProductInput]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Shopping::Css::V1::CssProductInput]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/shopping/css/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Shopping::Css::V1::CssProductInputsService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Shopping::Css::V1::UpdateCssProductInputRequest.new
              #
              #   # Call the update_css_product_input method.
              #   result = client.update_css_product_input request
              #
              #   # The returned object is of type Google::Shopping::Css::V1::CssProductInput.
              #   p result
              #
              def update_css_product_input request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Shopping::Css::V1::UpdateCssProductInputRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.update_css_product_input.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Shopping::Css::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.update_css_product_input.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.update_css_product_input.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @css_product_inputs_service_stub.update_css_product_input request, options do |result, operation|
                  yield result, operation if block_given?
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Deletes a CSS Product input from your CSS Center account.
              #
              # After a delete it may take several minutes until the input is no longer
              # available.
              #
              # @overload delete_css_product_input(request, options = nil)
              #   Pass arguments to `delete_css_product_input` via a request object, either of type
              #   {::Google::Shopping::Css::V1::DeleteCssProductInputRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Shopping::Css::V1::DeleteCssProductInputRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload delete_css_product_input(name: nil, supplemental_feed_id: nil)
              #   Pass arguments to `delete_css_product_input` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The name of the CSS product input resource to delete.
              #     Format: accounts/\\{account}/cssProductInputs/\\{css_product_input}
              #   @param supplemental_feed_id [::Integer]
              #     The Content API Supplemental Feed ID.
              #     The field must not be set if the action applies to a primary feed.
              #     If the field is set, then product action applies to a supplemental feed
              #     instead of primary Content API feed.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Protobuf::Empty]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Protobuf::Empty]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/shopping/css/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Shopping::Css::V1::CssProductInputsService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Shopping::Css::V1::DeleteCssProductInputRequest.new
              #
              #   # Call the delete_css_product_input method.
              #   result = client.delete_css_product_input request
              #
              #   # The returned object is of type Google::Protobuf::Empty.
              #   p result
              #
              def delete_css_product_input request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Shopping::Css::V1::DeleteCssProductInputRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.delete_css_product_input.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Shopping::Css::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.delete_css_product_input.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.delete_css_product_input.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @css_product_inputs_service_stub.delete_css_product_input request, options do |result, operation|
                  yield result, operation if block_given?
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the CssProductInputsService REST API.
              #
              # This class represents the configuration for CssProductInputsService REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Shopping::Css::V1::CssProductInputsService::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # insert_css_product_input to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Shopping::Css::V1::CssProductInputsService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.insert_css_product_input.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Shopping::Css::V1::CssProductInputsService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.insert_css_product_input.timeout = 20.0
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
                DEFAULT_ENDPOINT = "css.googleapis.com"

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
                # Configuration RPC class for the CssProductInputsService API.
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
                  # RPC-specific configuration for `insert_css_product_input`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :insert_css_product_input
                  ##
                  # RPC-specific configuration for `update_css_product_input`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :update_css_product_input
                  ##
                  # RPC-specific configuration for `delete_css_product_input`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :delete_css_product_input

                  # @private
                  def initialize parent_rpcs = nil
                    insert_css_product_input_config = parent_rpcs.insert_css_product_input if parent_rpcs.respond_to? :insert_css_product_input
                    @insert_css_product_input = ::Gapic::Config::Method.new insert_css_product_input_config
                    update_css_product_input_config = parent_rpcs.update_css_product_input if parent_rpcs.respond_to? :update_css_product_input
                    @update_css_product_input = ::Gapic::Config::Method.new update_css_product_input_config
                    delete_css_product_input_config = parent_rpcs.delete_css_product_input if parent_rpcs.respond_to? :delete_css_product_input
                    @delete_css_product_input = ::Gapic::Config::Method.new delete_css_product_input_config

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
