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

require "helper"
require "gapic/rest"
require "google/cloud/retail/v2/completion_service_pb"
require "google/cloud/retail/v2/completion_service/rest"


class ::Google::Cloud::Retail::V2::CompletionService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_complete_query
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::CompleteQueryResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    catalog = "hello world"
    query = "hello world"
    visitor_id = "hello world"
    language_codes = ["hello world"]
    device_type = "hello world"
    dataset = "hello world"
    max_suggestions = 42
    enable_attribute_suggestions = true
    entity = "hello world"

    complete_query_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::CompletionService::Rest::ServiceStub.stub :transcode_complete_query_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, complete_query_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::CompletionService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.complete_query({ catalog: catalog, query: query, visitor_id: visitor_id, language_codes: language_codes, device_type: device_type, dataset: dataset, max_suggestions: max_suggestions, enable_attribute_suggestions: enable_attribute_suggestions, entity: entity }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.complete_query catalog: catalog, query: query, visitor_id: visitor_id, language_codes: language_codes, device_type: device_type, dataset: dataset, max_suggestions: max_suggestions, enable_attribute_suggestions: enable_attribute_suggestions, entity: entity do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.complete_query ::Google::Cloud::Retail::V2::CompleteQueryRequest.new(catalog: catalog, query: query, visitor_id: visitor_id, language_codes: language_codes, device_type: device_type, dataset: dataset, max_suggestions: max_suggestions, enable_attribute_suggestions: enable_attribute_suggestions, entity: entity) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.complete_query({ catalog: catalog, query: query, visitor_id: visitor_id, language_codes: language_codes, device_type: device_type, dataset: dataset, max_suggestions: max_suggestions, enable_attribute_suggestions: enable_attribute_suggestions, entity: entity }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.complete_query(::Google::Cloud::Retail::V2::CompleteQueryRequest.new(catalog: catalog, query: query, visitor_id: visitor_id, language_codes: language_codes, device_type: device_type, dataset: dataset, max_suggestions: max_suggestions, enable_attribute_suggestions: enable_attribute_suggestions, entity: entity), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, complete_query_client_stub.call_count
      end
    end
  end

  def test_import_completion_data
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    input_config = {}
    notification_pubsub_topic = "hello world"

    import_completion_data_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::CompletionService::Rest::ServiceStub.stub :transcode_import_completion_data_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, import_completion_data_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::CompletionService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.import_completion_data({ parent: parent, input_config: input_config, notification_pubsub_topic: notification_pubsub_topic }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.import_completion_data parent: parent, input_config: input_config, notification_pubsub_topic: notification_pubsub_topic do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.import_completion_data ::Google::Cloud::Retail::V2::ImportCompletionDataRequest.new(parent: parent, input_config: input_config, notification_pubsub_topic: notification_pubsub_topic) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.import_completion_data({ parent: parent, input_config: input_config, notification_pubsub_topic: notification_pubsub_topic }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.import_completion_data(::Google::Cloud::Retail::V2::ImportCompletionDataRequest.new(parent: parent, input_config: input_config, notification_pubsub_topic: notification_pubsub_topic), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, import_completion_data_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Retail::V2::CompletionService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Retail::V2::CompletionService::Rest::Client::Configuration, config
  end
end
