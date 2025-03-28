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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/dialogflow/cx/v3/flow_pb"
require "google/cloud/dialogflow/cx/v3/flow_services_pb"
require "google/cloud/dialogflow/cx/v3/flows"

class ::Google::Cloud::Dialogflow::CX::V3::Flows::ClientTest < Minitest::Test
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

      catch :response do
        yield @response, @operation if block_given?
        @response
      end
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_create_flow
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::Flow.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    flow = {}
    language_code = "hello world"

    create_flow_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_flow, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::CreateFlowRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::Flow), request["flow"]
      assert_equal "hello world", request["language_code"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_flow_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_flow({ parent: parent, flow: flow, language_code: language_code }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_flow parent: parent, flow: flow, language_code: language_code do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_flow ::Google::Cloud::Dialogflow::CX::V3::CreateFlowRequest.new(parent: parent, flow: flow, language_code: language_code) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_flow({ parent: parent, flow: flow, language_code: language_code }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_flow(::Google::Cloud::Dialogflow::CX::V3::CreateFlowRequest.new(parent: parent, flow: flow, language_code: language_code), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_flow_client_stub.call_rpc_count
    end
  end

  def test_delete_flow
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    force = true

    delete_flow_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_flow, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::DeleteFlowRequest, request
      assert_equal "hello world", request["name"]
      assert_equal true, request["force"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_flow_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_flow({ name: name, force: force }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_flow name: name, force: force do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_flow ::Google::Cloud::Dialogflow::CX::V3::DeleteFlowRequest.new(name: name, force: force) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_flow({ name: name, force: force }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_flow(::Google::Cloud::Dialogflow::CX::V3::DeleteFlowRequest.new(name: name, force: force), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_flow_client_stub.call_rpc_count
    end
  end

  def test_list_flows
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::ListFlowsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    language_code = "hello world"

    list_flows_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_flows, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::ListFlowsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["language_code"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_flows_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_flows({ parent: parent, page_size: page_size, page_token: page_token, language_code: language_code }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_flows parent: parent, page_size: page_size, page_token: page_token, language_code: language_code do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_flows ::Google::Cloud::Dialogflow::CX::V3::ListFlowsRequest.new(parent: parent, page_size: page_size, page_token: page_token, language_code: language_code) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_flows({ parent: parent, page_size: page_size, page_token: page_token, language_code: language_code }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_flows(::Google::Cloud::Dialogflow::CX::V3::ListFlowsRequest.new(parent: parent, page_size: page_size, page_token: page_token, language_code: language_code), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_flows_client_stub.call_rpc_count
    end
  end

  def test_get_flow
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::Flow.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    language_code = "hello world"

    get_flow_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_flow, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::GetFlowRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["language_code"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_flow_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_flow({ name: name, language_code: language_code }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_flow name: name, language_code: language_code do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_flow ::Google::Cloud::Dialogflow::CX::V3::GetFlowRequest.new(name: name, language_code: language_code) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_flow({ name: name, language_code: language_code }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_flow(::Google::Cloud::Dialogflow::CX::V3::GetFlowRequest.new(name: name, language_code: language_code), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_flow_client_stub.call_rpc_count
    end
  end

  def test_update_flow
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::Flow.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    flow = {}
    update_mask = {}
    language_code = "hello world"

    update_flow_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_flow, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::UpdateFlowRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::Flow), request["flow"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal "hello world", request["language_code"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_flow_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_flow({ flow: flow, update_mask: update_mask, language_code: language_code }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_flow flow: flow, update_mask: update_mask, language_code: language_code do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_flow ::Google::Cloud::Dialogflow::CX::V3::UpdateFlowRequest.new(flow: flow, update_mask: update_mask, language_code: language_code) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_flow({ flow: flow, update_mask: update_mask, language_code: language_code }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_flow(::Google::Cloud::Dialogflow::CX::V3::UpdateFlowRequest.new(flow: flow, update_mask: update_mask, language_code: language_code), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_flow_client_stub.call_rpc_count
    end
  end

  def test_train_flow
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    train_flow_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :train_flow, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::TrainFlowRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, train_flow_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.train_flow({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.train_flow name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.train_flow ::Google::Cloud::Dialogflow::CX::V3::TrainFlowRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.train_flow({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.train_flow(::Google::Cloud::Dialogflow::CX::V3::TrainFlowRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, train_flow_client_stub.call_rpc_count
    end
  end

  def test_validate_flow
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::FlowValidationResult.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    language_code = "hello world"

    validate_flow_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :validate_flow, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::ValidateFlowRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["language_code"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, validate_flow_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.validate_flow({ name: name, language_code: language_code }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.validate_flow name: name, language_code: language_code do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.validate_flow ::Google::Cloud::Dialogflow::CX::V3::ValidateFlowRequest.new(name: name, language_code: language_code) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.validate_flow({ name: name, language_code: language_code }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.validate_flow(::Google::Cloud::Dialogflow::CX::V3::ValidateFlowRequest.new(name: name, language_code: language_code), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, validate_flow_client_stub.call_rpc_count
    end
  end

  def test_get_flow_validation_result
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::FlowValidationResult.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    language_code = "hello world"

    get_flow_validation_result_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_flow_validation_result, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::GetFlowValidationResultRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["language_code"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_flow_validation_result_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_flow_validation_result({ name: name, language_code: language_code }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_flow_validation_result name: name, language_code: language_code do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_flow_validation_result ::Google::Cloud::Dialogflow::CX::V3::GetFlowValidationResultRequest.new(name: name, language_code: language_code) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_flow_validation_result({ name: name, language_code: language_code }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_flow_validation_result(::Google::Cloud::Dialogflow::CX::V3::GetFlowValidationResultRequest.new(name: name, language_code: language_code), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_flow_validation_result_client_stub.call_rpc_count
    end
  end

  def test_import_flow
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    flow_uri = "hello world"
    import_option = :IMPORT_OPTION_UNSPECIFIED
    flow_import_strategy = {}

    import_flow_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :import_flow, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::ImportFlowRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["flow_uri"]
      assert_equal :flow_uri, request.flow
      assert_equal :IMPORT_OPTION_UNSPECIFIED, request["import_option"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::FlowImportStrategy), request["flow_import_strategy"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, import_flow_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.import_flow({ parent: parent, flow_uri: flow_uri, import_option: import_option, flow_import_strategy: flow_import_strategy }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.import_flow parent: parent, flow_uri: flow_uri, import_option: import_option, flow_import_strategy: flow_import_strategy do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.import_flow ::Google::Cloud::Dialogflow::CX::V3::ImportFlowRequest.new(parent: parent, flow_uri: flow_uri, import_option: import_option, flow_import_strategy: flow_import_strategy) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.import_flow({ parent: parent, flow_uri: flow_uri, import_option: import_option, flow_import_strategy: flow_import_strategy }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.import_flow(::Google::Cloud::Dialogflow::CX::V3::ImportFlowRequest.new(parent: parent, flow_uri: flow_uri, import_option: import_option, flow_import_strategy: flow_import_strategy), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, import_flow_client_stub.call_rpc_count
    end
  end

  def test_export_flow
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    flow_uri = "hello world"
    include_referenced_flows = true

    export_flow_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :export_flow, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::ExportFlowRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["flow_uri"]
      assert_equal true, request["include_referenced_flows"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, export_flow_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.export_flow({ name: name, flow_uri: flow_uri, include_referenced_flows: include_referenced_flows }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.export_flow name: name, flow_uri: flow_uri, include_referenced_flows: include_referenced_flows do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.export_flow ::Google::Cloud::Dialogflow::CX::V3::ExportFlowRequest.new(name: name, flow_uri: flow_uri, include_referenced_flows: include_referenced_flows) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.export_flow({ name: name, flow_uri: flow_uri, include_referenced_flows: include_referenced_flows }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.export_flow(::Google::Cloud::Dialogflow::CX::V3::ExportFlowRequest.new(name: name, flow_uri: flow_uri, include_referenced_flows: include_referenced_flows), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, export_flow_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::Flows::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dialogflow::CX::V3::Flows::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::Flows::Operations, client.operations_client
  end
end
