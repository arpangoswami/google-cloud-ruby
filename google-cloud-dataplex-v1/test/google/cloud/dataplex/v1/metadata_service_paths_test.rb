# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "google/cloud/dataplex/v1/metadata_service"

class ::Google::Cloud::Dataplex::V1::MetadataService::ClientPathsTest < Minitest::Test
  class DummyStub
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

  def test_entity_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dataplex::V1::MetadataService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.entity_path project: "value0", location: "value1", lake: "value2", zone: "value3", entity: "value4"
      assert_equal "projects/value0/locations/value1/lakes/value2/zones/value3/entities/value4", path
    end
  end

  def test_partition_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dataplex::V1::MetadataService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.partition_path project: "value0", location: "value1", lake: "value2", zone: "value3", entity: "value4", partition: "value5"
      assert_equal "projects/value0/locations/value1/lakes/value2/zones/value3/entities/value4/partitions/value5", path
    end
  end

  def test_zone_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dataplex::V1::MetadataService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.zone_path project: "value0", location: "value1", lake: "value2", zone: "value3"
      assert_equal "projects/value0/locations/value1/lakes/value2/zones/value3", path
    end
  end
end
