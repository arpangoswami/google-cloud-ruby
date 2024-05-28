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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/discoveryengine/v1beta/project_service_pb"
require "google/cloud/discoveryengine/v1beta/project_service_services_pb"
require "google/cloud/discovery_engine/v1beta/project_service"

class ::Google::Cloud::DiscoveryEngine::V1beta::ProjectService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_provision_project
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    accept_data_use_terms = true
    data_use_terms_version = "hello world"

    provision_project_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :provision_project, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::ProvisionProjectRequest, request
      assert_equal "hello world", request["name"]
      assert_equal true, request["accept_data_use_terms"]
      assert_equal "hello world", request["data_use_terms_version"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, provision_project_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::ProjectService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.provision_project({ name: name, accept_data_use_terms: accept_data_use_terms, data_use_terms_version: data_use_terms_version }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.provision_project name: name, accept_data_use_terms: accept_data_use_terms, data_use_terms_version: data_use_terms_version do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.provision_project ::Google::Cloud::DiscoveryEngine::V1beta::ProvisionProjectRequest.new(name: name, accept_data_use_terms: accept_data_use_terms, data_use_terms_version: data_use_terms_version) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.provision_project({ name: name, accept_data_use_terms: accept_data_use_terms, data_use_terms_version: data_use_terms_version }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.provision_project(::Google::Cloud::DiscoveryEngine::V1beta::ProvisionProjectRequest.new(name: name, accept_data_use_terms: accept_data_use_terms, data_use_terms_version: data_use_terms_version), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, provision_project_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::ProjectService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::ProjectService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::ProjectService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::ProjectService::Operations, client.operations_client
  end
end
