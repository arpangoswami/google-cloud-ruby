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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/dataqna/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :dataqna do |config|
  config.add_field! :endpoint,      "dataqna.googleapis.com", match: ::String
  config.add_field! :credentials,   nil, match: [::String, ::Hash, ::Google::Auth::Credentials]
  config.add_field! :scope,         nil, match: [::Array, ::String]
  config.add_field! :lib_name,      nil, match: ::String
  config.add_field! :lib_version,   nil, match: ::String
  config.add_field! :interceptors,  nil, match: ::Array
  config.add_field! :timeout,       nil, match: ::Numeric
  config.add_field! :metadata,      nil, match: ::Hash
  config.add_field! :retry_policy,  nil, match: [::Hash, ::Proc]
  config.add_field! :quota_project, nil, match: ::String
end

module Google
  module Cloud
    module DataQnA
      ##
      # Create a new client object for AutoSuggestionService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::DataQnA::V1alpha::AutoSuggestionService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dataqna-v1alpha/latest/Google-Cloud-DataQnA-V1alpha-AutoSuggestionService-Client)
      # for a gRPC client for version V1alpha of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the AutoSuggestionService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About AutoSuggestionService
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
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1alpha`.
      # @return [::Object] A client object for the specified version.
      #
      def self.auto_suggestion_service version: :v1alpha, &block
        require "google/cloud/dataqna/#{version.to_s.downcase}"

        package_name = Google::Cloud::DataQnA
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::DataQnA.const_get(package_name).const_get(:AutoSuggestionService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for QuestionService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::DataQnA::V1alpha::QuestionService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dataqna-v1alpha/latest/Google-Cloud-DataQnA-V1alpha-QuestionService-Client)
      # for a gRPC client for version V1alpha of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the QuestionService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About QuestionService
      #
      # Service to interpret natural language queries.
      # The service allows to create `Question` resources that are interpreted and
      # are filled with one or more interpretations if the question could be
      # interpreted. Once a `Question` resource is created and has at least one
      # interpretation, an interpretation can be chosen for execution, which
      # triggers a query to the backend (for BigQuery, it will create a job).
      # Upon successful execution of that interpretation, backend specific
      # information will be returned so that the client can retrieve the results
      # from the backend.
      #
      # The `Question` resources are named `projects/*/locations/*/questions/*`.
      #
      # The `Question` resource has a singletion sub-resource `UserFeedback` named
      # `projects/*/locations/*/questions/*/userFeedback`, which allows access to
      # user feedback.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1alpha`.
      # @return [::Object] A client object for the specified version.
      #
      def self.question_service version: :v1alpha, &block
        require "google/cloud/dataqna/#{version.to_s.downcase}"

        package_name = Google::Cloud::DataQnA
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::DataQnA.const_get(package_name).const_get(:QuestionService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-dataqna library.
      #
      # The following configuration parameters are supported:
      #
      # * `credentials` (*type:* `String, Hash, Google::Auth::Credentials`) -
      #   The path to the keyfile as a String, the contents of the keyfile as a
      #   Hash, or a Google::Auth::Credentials object.
      # * `lib_name` (*type:* `String`) -
      #   The library name as recorded in instrumentation and logging.
      # * `lib_version` (*type:* `String`) -
      #   The library version as recorded in instrumentation and logging.
      # * `interceptors` (*type:* `Array<GRPC::ClientInterceptor>`) -
      #   An array of interceptors that are run before calls are executed.
      # * `timeout` (*type:* `Numeric`) -
      #   Default timeout in seconds.
      # * `metadata` (*type:* `Hash{Symbol=>String}`) -
      #   Additional headers to be sent with the call.
      # * `retry_policy` (*type:* `Hash`) -
      #   The retry policy. The value is a hash with the following keys:
      #     * `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
      #     * `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
      #     * `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
      #     * `:retry_codes` (*type:* `Array<String>`) -
      #       The error codes that should trigger a retry.
      #
      # @return [::Google::Cloud::Config] The default configuration used by this library
      #
      def self.configure
        yield ::Google::Cloud.configure.dataqna if block_given?

        ::Google::Cloud.configure.dataqna
      end
    end
  end
end

helper_path = ::File.join __dir__, "dataqna", "helpers.rb"
require "google/cloud/dataqna/helpers" if ::File.file? helper_path
