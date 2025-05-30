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

require "gapic/grpc/service_stub"

require "google/cloud/discoveryengine/v1beta/document_service_pb"
require "google/cloud/discoveryengine/v1beta/document_service_services_pb"
require "google/cloud/discovery_engine/v1beta/document_service"

class ::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::ClientTest < Minitest::Test
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

  def test_get_document
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1beta::Document.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_document_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_document, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::GetDocumentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_document_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_document({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_document name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_document ::Google::Cloud::DiscoveryEngine::V1beta::GetDocumentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_document({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_document(::Google::Cloud::DiscoveryEngine::V1beta::GetDocumentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_document_client_stub.call_rpc_count
    end
  end

  def test_list_documents
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1beta::ListDocumentsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_documents_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_documents, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::ListDocumentsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_documents_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_documents({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_documents parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_documents ::Google::Cloud::DiscoveryEngine::V1beta::ListDocumentsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_documents({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_documents(::Google::Cloud::DiscoveryEngine::V1beta::ListDocumentsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_documents_client_stub.call_rpc_count
    end
  end

  def test_create_document
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1beta::Document.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    document = {}
    document_id = "hello world"

    create_document_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_document, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::CreateDocumentRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::Document), request["document"]
      assert_equal "hello world", request["document_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_document_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_document({ parent: parent, document: document, document_id: document_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_document parent: parent, document: document, document_id: document_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_document ::Google::Cloud::DiscoveryEngine::V1beta::CreateDocumentRequest.new(parent: parent, document: document, document_id: document_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_document({ parent: parent, document: document, document_id: document_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_document(::Google::Cloud::DiscoveryEngine::V1beta::CreateDocumentRequest.new(parent: parent, document: document, document_id: document_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_document_client_stub.call_rpc_count
    end
  end

  def test_update_document
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1beta::Document.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    document = {}
    allow_missing = true
    update_mask = {}

    update_document_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_document, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::UpdateDocumentRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::Document), request["document"]
      assert_equal true, request["allow_missing"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_document_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_document({ document: document, allow_missing: allow_missing, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_document document: document, allow_missing: allow_missing, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_document ::Google::Cloud::DiscoveryEngine::V1beta::UpdateDocumentRequest.new(document: document, allow_missing: allow_missing, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_document({ document: document, allow_missing: allow_missing, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_document(::Google::Cloud::DiscoveryEngine::V1beta::UpdateDocumentRequest.new(document: document, allow_missing: allow_missing, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_document_client_stub.call_rpc_count
    end
  end

  def test_delete_document
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_document_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_document, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::DeleteDocumentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_document_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_document({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_document name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_document ::Google::Cloud::DiscoveryEngine::V1beta::DeleteDocumentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_document({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_document(::Google::Cloud::DiscoveryEngine::V1beta::DeleteDocumentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_document_client_stub.call_rpc_count
    end
  end

  def test_import_documents
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    inline_source = {}
    parent = "hello world"
    error_config = {}
    reconciliation_mode = :RECONCILIATION_MODE_UNSPECIFIED
    update_mask = {}
    auto_generate_ids = true
    id_field = "hello world"

    import_documents_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :import_documents, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::ImportDocumentsRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::ImportDocumentsRequest::InlineSource), request["inline_source"]
      assert_equal :inline_source, request.source
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::ImportErrorConfig), request["error_config"]
      assert_equal :RECONCILIATION_MODE_UNSPECIFIED, request["reconciliation_mode"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal true, request["auto_generate_ids"]
      assert_equal "hello world", request["id_field"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, import_documents_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.import_documents({ inline_source: inline_source, parent: parent, error_config: error_config, reconciliation_mode: reconciliation_mode, update_mask: update_mask, auto_generate_ids: auto_generate_ids, id_field: id_field }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.import_documents inline_source: inline_source, parent: parent, error_config: error_config, reconciliation_mode: reconciliation_mode, update_mask: update_mask, auto_generate_ids: auto_generate_ids, id_field: id_field do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.import_documents ::Google::Cloud::DiscoveryEngine::V1beta::ImportDocumentsRequest.new(inline_source: inline_source, parent: parent, error_config: error_config, reconciliation_mode: reconciliation_mode, update_mask: update_mask, auto_generate_ids: auto_generate_ids, id_field: id_field) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.import_documents({ inline_source: inline_source, parent: parent, error_config: error_config, reconciliation_mode: reconciliation_mode, update_mask: update_mask, auto_generate_ids: auto_generate_ids, id_field: id_field }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.import_documents(::Google::Cloud::DiscoveryEngine::V1beta::ImportDocumentsRequest.new(inline_source: inline_source, parent: parent, error_config: error_config, reconciliation_mode: reconciliation_mode, update_mask: update_mask, auto_generate_ids: auto_generate_ids, id_field: id_field), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, import_documents_client_stub.call_rpc_count
    end
  end

  def test_purge_documents
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    gcs_source = {}
    parent = "hello world"
    filter = "hello world"
    error_config = {}
    force = true

    purge_documents_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :purge_documents, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::PurgeDocumentsRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::GcsSource), request["gcs_source"]
      assert_equal :gcs_source, request.source
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::PurgeErrorConfig), request["error_config"]
      assert_equal true, request["force"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, purge_documents_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.purge_documents({ gcs_source: gcs_source, parent: parent, filter: filter, error_config: error_config, force: force }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.purge_documents gcs_source: gcs_source, parent: parent, filter: filter, error_config: error_config, force: force do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.purge_documents ::Google::Cloud::DiscoveryEngine::V1beta::PurgeDocumentsRequest.new(gcs_source: gcs_source, parent: parent, filter: filter, error_config: error_config, force: force) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.purge_documents({ gcs_source: gcs_source, parent: parent, filter: filter, error_config: error_config, force: force }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.purge_documents(::Google::Cloud::DiscoveryEngine::V1beta::PurgeDocumentsRequest.new(gcs_source: gcs_source, parent: parent, filter: filter, error_config: error_config, force: force), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, purge_documents_client_stub.call_rpc_count
    end
  end

  def test_batch_get_documents_metadata
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1beta::BatchGetDocumentsMetadataResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    matcher = {}

    batch_get_documents_metadata_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_get_documents_metadata, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::BatchGetDocumentsMetadataRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::BatchGetDocumentsMetadataRequest::Matcher), request["matcher"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_get_documents_metadata_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_get_documents_metadata({ parent: parent, matcher: matcher }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_get_documents_metadata parent: parent, matcher: matcher do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_get_documents_metadata ::Google::Cloud::DiscoveryEngine::V1beta::BatchGetDocumentsMetadataRequest.new(parent: parent, matcher: matcher) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_get_documents_metadata({ parent: parent, matcher: matcher }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_get_documents_metadata(::Google::Cloud::DiscoveryEngine::V1beta::BatchGetDocumentsMetadataRequest.new(parent: parent, matcher: matcher), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_get_documents_metadata_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Operations, client.operations_client
  end
end
