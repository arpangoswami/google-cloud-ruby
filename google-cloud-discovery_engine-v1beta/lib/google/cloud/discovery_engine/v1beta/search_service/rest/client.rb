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
require "google/cloud/discoveryengine/v1beta/search_service_pb"
require "google/cloud/discovery_engine/v1beta/search_service/rest/service_stub"
require "google/cloud/location/rest"

module Google
  module Cloud
    module DiscoveryEngine
      module V1beta
        module SearchService
          module Rest
            ##
            # REST client for the SearchService service.
            #
            # Service for search.
            #
            class Client
              # @private
              API_VERSION = ""

              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "discoveryengine.$UNIVERSE_DOMAIN$"

              include Paths

              # @private
              attr_reader :search_service_stub

              ##
              # Configure the SearchService Client class.
              #
              # See {::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all SearchService clients
              #   ::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Rest::Client.configure do |config|
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
                  namespace = ["Google", "Cloud", "DiscoveryEngine", "V1beta"]
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

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the SearchService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Rest::Client::Configuration}
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
                @search_service_stub.universe_domain
              end

              ##
              # Create a new SearchService REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the SearchService client.
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

                @search_service_stub = ::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Rest::ServiceStub.new(
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  credentials: credentials
                )

                @location_client = Google::Cloud::Location::Locations::Rest::Client.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @search_service_stub.endpoint
                  config.universe_domain = @search_service_stub.universe_domain
                end
              end

              ##
              # Get the associated client for mix-in of the Locations.
              #
              # @return [Google::Cloud::Location::Locations::Rest::Client]
              #
              attr_reader :location_client

              # Service calls

              ##
              # Performs a search.
              #
              # @overload search(request, options = nil)
              #   Pass arguments to `search` via a request object, either of type
              #   {::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload search(serving_config: nil, branch: nil, query: nil, image_query: nil, page_size: nil, page_token: nil, offset: nil, data_store_specs: nil, filter: nil, canonical_filter: nil, order_by: nil, user_info: nil, facet_specs: nil, boost_spec: nil, params: nil, query_expansion_spec: nil, spell_correction_spec: nil, user_pseudo_id: nil, content_search_spec: nil, embedding_spec: nil, ranking_expression: nil, safe_search: nil, user_labels: nil)
              #   Pass arguments to `search` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param serving_config [::String]
              #     Required. The resource name of the Search serving config, such as
              #     `projects/*/locations/global/collections/default_collection/engines/*/servingConfigs/default_serving_config`,
              #     or
              #     `projects/*/locations/global/collections/default_collection/dataStores/default_data_store/servingConfigs/default_serving_config`.
              #     This field is used to identify the serving configuration name, set
              #     of models used to make the search.
              #   @param branch [::String]
              #     The branch resource name, such as
              #     `projects/*/locations/global/collections/default_collection/dataStores/default_data_store/branches/0`.
              #
              #     Use `default_branch` as the branch ID or leave this field empty, to search
              #     documents under the default branch.
              #   @param query [::String]
              #     Raw search query.
              #   @param image_query [::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::ImageQuery, ::Hash]
              #     Raw image query.
              #   @param page_size [::Integer]
              #     Maximum number of {::Google::Cloud::DiscoveryEngine::V1beta::Document Document}s
              #     to return. The maximum allowed value depends on the data type. Values above
              #     the maximum value are coerced to the maximum value.
              #
              #     * Websites with basic indexing: Default `10`, Maximum `25`.
              #     * Websites with advanced indexing: Default `25`, Maximum `50`.
              #     * Other: Default `50`, Maximum `100`.
              #
              #     If this field is negative, an  `INVALID_ARGUMENT` is returned.
              #   @param page_token [::String]
              #     A page token received from a previous
              #     {::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Rest::Client#search SearchService.Search}
              #     call. Provide this to retrieve the subsequent page.
              #
              #     When paginating, all other parameters provided to
              #     {::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Rest::Client#search SearchService.Search}
              #     must match the call that provided the page token. Otherwise, an
              #      `INVALID_ARGUMENT`  error is returned.
              #   @param offset [::Integer]
              #     A 0-indexed integer that specifies the current offset (that is, starting
              #     result location, amongst the
              #     {::Google::Cloud::DiscoveryEngine::V1beta::Document Document}s deemed by the API
              #     as relevant) in search results. This field is only considered if
              #     {::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest#page_token page_token}
              #     is unset.
              #
              #     If this field is negative, an  `INVALID_ARGUMENT`  is returned.
              #   @param data_store_specs [::Array<::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::DataStoreSpec, ::Hash>]
              #     Specs defining dataStores to filter on in a search call and configurations
              #     for those dataStores. This is only considered for engines with multiple
              #     dataStores use case. For single dataStore within an engine, they should
              #     use the specs at the top level.
              #   @param filter [::String]
              #     The filter syntax consists of an expression language for constructing a
              #     predicate from one or more fields of the documents being filtered. Filter
              #     expression is case-sensitive.
              #
              #     If this field is unrecognizable, an  `INVALID_ARGUMENT`  is returned.
              #
              #     Filtering in Vertex AI Search is done by mapping the LHS filter key to a
              #     key property defined in the Vertex AI Search backend -- this mapping is
              #     defined by the customer in their schema. For example a media customer might
              #     have a field 'name' in their schema. In this case the filter would look
              #     like this: filter --> name:'ANY("king kong")'
              #
              #     For more information about filtering including syntax and filter
              #     operators, see
              #     [Filter](https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata)
              #   @param canonical_filter [::String]
              #     The default filter that is applied when a user performs a search without
              #     checking any filters on the search page.
              #
              #     The filter applied to every search request when quality improvement such as
              #     query expansion is needed. In the case a query does not have a sufficient
              #     amount of results this filter will be used to determine whether or not to
              #     enable the query expansion flow. The original filter will still be used for
              #     the query expanded search.
              #     This field is strongly recommended to achieve high search quality.
              #
              #     For more information about filter syntax, see
              #     {::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest#filter SearchRequest.filter}.
              #   @param order_by [::String]
              #     The order in which documents are returned. Documents can be ordered by
              #     a field in an {::Google::Cloud::DiscoveryEngine::V1beta::Document Document}
              #     object. Leave it unset if ordered by relevance. `order_by` expression is
              #     case-sensitive.
              #
              #     For more information on ordering for retail search, see
              #     [Ordering](https://cloud.google.com/retail/docs/filter-and-order#order)
              #
              #     If this field is unrecognizable, an `INVALID_ARGUMENT` is returned.
              #   @param user_info [::Google::Cloud::DiscoveryEngine::V1beta::UserInfo, ::Hash]
              #     Information about the end user.
              #     Highly recommended for analytics.
              #     {::Google::Cloud::DiscoveryEngine::V1beta::UserInfo#user_agent UserInfo.user_agent}
              #     is used to deduce `device_type` for analytics.
              #   @param facet_specs [::Array<::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::FacetSpec, ::Hash>]
              #     Facet specifications for faceted search. If empty, no facets are returned.
              #
              #     A maximum of 100 values are allowed. Otherwise, an  `INVALID_ARGUMENT`
              #     error is returned.
              #   @param boost_spec [::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::BoostSpec, ::Hash]
              #     Boost specification to boost certain documents.
              #     For more information on boosting, see
              #     [Boosting](https://cloud.google.com/generative-ai-app-builder/docs/boost-search-results)
              #   @param params [::Hash{::String => ::Google::Protobuf::Value, ::Hash}]
              #     Additional search parameters.
              #
              #     For public website search only, supported values are:
              #
              #     * `user_country_code`: string. Default empty. If set to non-empty, results
              #        are restricted or boosted based on the location provided.
              #        For example, `user_country_code: "au"`
              #
              #        For available codes see [Country
              #        Codes](https://developers.google.com/custom-search/docs/json_api_reference#countryCodes)
              #
              #     * `search_type`: double. Default empty. Enables non-webpage searching
              #        depending on the value. The only valid non-default value is 1,
              #        which enables image searching.
              #        For example, `search_type: 1`
              #   @param query_expansion_spec [::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::QueryExpansionSpec, ::Hash]
              #     The query expansion specification that specifies the conditions under which
              #     query expansion occurs.
              #   @param spell_correction_spec [::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::SpellCorrectionSpec, ::Hash]
              #     The spell correction specification that specifies the mode under
              #     which spell correction takes effect.
              #   @param user_pseudo_id [::String]
              #     A unique identifier for tracking visitors. For example, this could be
              #     implemented with an HTTP cookie, which should be able to uniquely identify
              #     a visitor on a single device. This unique identifier should not change if
              #     the visitor logs in or out of the website.
              #
              #     This field should NOT have a fixed value such as `unknown_visitor`.
              #
              #     This should be the same identifier as
              #     {::Google::Cloud::DiscoveryEngine::V1beta::UserEvent#user_pseudo_id UserEvent.user_pseudo_id}
              #     and
              #     {::Google::Cloud::DiscoveryEngine::V1beta::CompleteQueryRequest#user_pseudo_id CompleteQueryRequest.user_pseudo_id}
              #
              #     The field must be a UTF-8 encoded string with a length limit of 128
              #     characters. Otherwise, an  `INVALID_ARGUMENT`  error is returned.
              #   @param content_search_spec [::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::ContentSearchSpec, ::Hash]
              #     A specification for configuring the behavior of content search.
              #   @param embedding_spec [::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::EmbeddingSpec, ::Hash]
              #     Uses the provided embedding to do additional semantic document retrieval.
              #     The retrieval is based on the dot product of
              #     {::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::EmbeddingSpec::EmbeddingVector#vector SearchRequest.EmbeddingSpec.EmbeddingVector.vector}
              #     and the document embedding that is provided in
              #     {::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::EmbeddingSpec::EmbeddingVector#field_path SearchRequest.EmbeddingSpec.EmbeddingVector.field_path}.
              #
              #     If
              #     {::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::EmbeddingSpec::EmbeddingVector#field_path SearchRequest.EmbeddingSpec.EmbeddingVector.field_path}
              #     is not provided, it will use
              #     {::Google::Cloud::DiscoveryEngine::V1beta::ServingConfig#embedding_config ServingConfig.EmbeddingConfig.field_path}.
              #   @param ranking_expression [::String]
              #     The ranking expression controls the customized ranking on retrieval
              #     documents. This overrides
              #     {::Google::Cloud::DiscoveryEngine::V1beta::ServingConfig#ranking_expression ServingConfig.ranking_expression}.
              #     The ranking expression is a single function or multiple functions that are
              #     joint by "+".
              #       * ranking_expression = function, { " + ", function };
              #     Supported functions:
              #       * double * relevance_score
              #       * double * dotProduct(embedding_field_path)
              #     Function variables:
              #       `relevance_score`: pre-defined keywords, used for measure relevance
              #       between query and document.
              #       `embedding_field_path`: the document embedding field
              #       used with query embedding vector.
              #       `dotProduct`: embedding function between embedding_field_path and query
              #       embedding vector.
              #
              #      Example ranking expression:
              #        If document has an embedding field doc_embedding, the ranking expression
              #        could be `0.5 * relevance_score + 0.3 * dotProduct(doc_embedding)`.
              #   @param safe_search [::Boolean]
              #     Whether to turn on safe search. This is only supported for
              #     website search.
              #   @param user_labels [::Hash{::String => ::String}]
              #     The user labels applied to a resource must meet the following requirements:
              #
              #     * Each resource can have multiple labels, up to a maximum of 64.
              #     * Each label must be a key-value pair.
              #     * Keys have a minimum length of 1 character and a maximum length of 63
              #       characters and cannot be empty. Values can be empty and have a maximum
              #       length of 63 characters.
              #     * Keys and values can contain only lowercase letters, numeric characters,
              #       underscores, and dashes. All characters must use UTF-8 encoding, and
              #       international characters are allowed.
              #     * The key portion of a label must be unique. However, you can use the same
              #       key with multiple resources.
              #     * Keys must start with a lowercase letter or international character.
              #
              #     See [Google Cloud
              #     Document](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements)
              #     for more details.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::DiscoveryEngine::V1beta::SearchResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::DiscoveryEngine::V1beta::SearchResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/discovery_engine/v1beta"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::DiscoveryEngine::V1beta::SearchService::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::DiscoveryEngine::V1beta::SearchRequest.new
              #
              #   # Call the search method.
              #   result = client.search request
              #
              #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
              #   # over elements, and API calls will be issued to fetch pages as needed.
              #   result.each do |item|
              #     # Each element is of type ::Google::Cloud::DiscoveryEngine::V1beta::SearchResponse::SearchResult.
              #     p item
              #   end
              #
              def search request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.search.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::DiscoveryEngine::V1beta::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.search.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.search.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @search_service_stub.search request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the SearchService REST API.
              #
              # This class represents the configuration for SearchService REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # search to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.search.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.search.timeout = 20.0
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
                DEFAULT_ENDPOINT = "discoveryengine.googleapis.com"

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
                # Configuration RPC class for the SearchService API.
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
                  # RPC-specific configuration for `search`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :search

                  # @private
                  def initialize parent_rpcs = nil
                    search_config = parent_rpcs.search if parent_rpcs.respond_to? :search
                    @search = ::Gapic::Config::Method.new search_config

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
