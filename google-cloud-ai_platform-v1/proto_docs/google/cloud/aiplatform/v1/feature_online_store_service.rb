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


module Google
  module Cloud
    module AIPlatform
      module V1
        # Lookup key for a feature view.
        # @!attribute [rw] key
        #   @return [::String]
        #     String key to use for lookup.
        # @!attribute [rw] composite_key
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureViewDataKey::CompositeKey]
        #     The actual Entity ID will be composed from this struct. This should match
        #     with the way ID is defined in the FeatureView spec.
        class FeatureViewDataKey
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # ID that is comprised from several parts (columns).
          # @!attribute [rw] parts
          #   @return [::Array<::String>]
          #     Parts to construct Entity ID. Should match with the same ID columns as
          #     defined in FeatureView in the same order.
          class CompositeKey
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Client#fetch_feature_values FeatureOnlineStoreService.FetchFeatureValues}.
        # All the features under the requested feature view will be returned.
        # @!attribute [rw] feature_view
        #   @return [::String]
        #     Required. FeatureView resource format
        #     `projects/{project}/locations/{location}/featureOnlineStores/{featureOnlineStore}/featureViews/{featureView}`
        # @!attribute [rw] data_key
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureViewDataKey]
        #     Optional. The request key to fetch feature values for.
        # @!attribute [rw] data_format
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureViewDataFormat]
        #     Optional. Response data format. If not set,
        #     {::Google::Cloud::AIPlatform::V1::FeatureViewDataFormat::KEY_VALUE FeatureViewDataFormat.KEY_VALUE}
        #     will be used.
        class FetchFeatureValuesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Client#fetch_feature_values FeatureOnlineStoreService.FetchFeatureValues}
        # @!attribute [rw] key_values
        #   @return [::Google::Cloud::AIPlatform::V1::FetchFeatureValuesResponse::FeatureNameValuePairList]
        #     Feature values in KeyValue format.
        # @!attribute [rw] proto_struct
        #   @return [::Google::Protobuf::Struct]
        #     Feature values in proto Struct format.
        # @!attribute [rw] data_key
        #   @return [::Google::Cloud::AIPlatform::V1::FeatureViewDataKey]
        #     The data key associated with this response.
        #     Will only be populated for
        #     [FeatureOnlineStoreService.StreamingFetchFeatureValues][] RPCs.
        class FetchFeatureValuesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Response structure in the format of key (feature name) and (feature) value
          # pair.
          # @!attribute [rw] features
          #   @return [::Array<::Google::Cloud::AIPlatform::V1::FetchFeatureValuesResponse::FeatureNameValuePairList::FeatureNameValuePair>]
          #     List of feature names and values.
          class FeatureNameValuePairList
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Feature name & value pair.
            # @!attribute [rw] value
            #   @return [::Google::Cloud::AIPlatform::V1::FeatureValue]
            #     Feature value.
            # @!attribute [rw] name
            #   @return [::String]
            #     Feature short name.
            class FeatureNameValuePair
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end

        # A query to find a number of similar entities.
        # @!attribute [rw] entity_id
        #   @return [::String]
        #     Optional. The entity id whose similar entities should be searched for.
        #     If embedding is set, search will use embedding instead of
        #     entity_id.
        # @!attribute [rw] embedding
        #   @return [::Google::Cloud::AIPlatform::V1::NearestNeighborQuery::Embedding]
        #     Optional. The embedding vector that be used for similar search.
        # @!attribute [rw] neighbor_count
        #   @return [::Integer]
        #     Optional. The number of similar entities to be retrieved from feature view
        #     for each query.
        # @!attribute [rw] string_filters
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::NearestNeighborQuery::StringFilter>]
        #     Optional. The list of string filters.
        # @!attribute [rw] numeric_filters
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::NearestNeighborQuery::NumericFilter>]
        #     Optional. The list of numeric filters.
        # @!attribute [rw] per_crowding_attribute_neighbor_count
        #   @return [::Integer]
        #     Optional. Crowding is a constraint on a neighbor list produced by nearest
        #     neighbor search requiring that no more than
        #     sper_crowding_attribute_neighbor_count of the k neighbors returned have the
        #     same value of crowding_attribute. It's used for improving result diversity.
        # @!attribute [rw] parameters
        #   @return [::Google::Cloud::AIPlatform::V1::NearestNeighborQuery::Parameters]
        #     Optional. Parameters that can be set to tune query on the fly.
        class NearestNeighborQuery
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The embedding vector.
          # @!attribute [rw] value
          #   @return [::Array<::Float>]
          #     Optional. Individual value in the embedding.
          class Embedding
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # String filter is used to search a subset of the entities by using boolean
          # rules on string columns.
          # For example: if a query specifies string filter
          # with 'name = color, allow_tokens = \\{red, blue}, deny_tokens = \\{purple}','
          # then that query will match entities that are red or blue, but if those
          # points are also purple, then they will be excluded even if they are
          # red/blue. Only string filter is supported for now, numeric filter will be
          # supported in the near future.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Column names in BigQuery that used as filters.
          # @!attribute [rw] allow_tokens
          #   @return [::Array<::String>]
          #     Optional. The allowed tokens.
          # @!attribute [rw] deny_tokens
          #   @return [::Array<::String>]
          #     Optional. The denied tokens.
          class StringFilter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Numeric filter is used to search a subset of the entities by using boolean
          # rules on numeric columns.
          # For example:
          # Database Point 0: \\{name: “a” value_int: 42} \\{name: “b” value_float: 1.0}
          # Database Point 1:  \\{name: “a” value_int: 10} \\{name: “b” value_float: 2.0}
          # Database Point 2: \\{name: “a” value_int: -1} \\{name: “b” value_float: 3.0}
          # Query: \\{name: “a” value_int: 12 operator: LESS}    // Matches Point 1, 2
          # \\{name: “b” value_float: 2.0 operator: EQUAL} // Matches Point 1
          # @!attribute [rw] value_int
          #   @return [::Integer]
          #     int value type.
          # @!attribute [rw] value_float
          #   @return [::Float]
          #     float value type.
          # @!attribute [rw] value_double
          #   @return [::Float]
          #     double value type.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Column name in BigQuery that used as filters.
          # @!attribute [rw] op
          #   @return [::Google::Cloud::AIPlatform::V1::NearestNeighborQuery::NumericFilter::Operator]
          #     Optional. This MUST be specified for queries and must NOT be specified
          #     for database points.
          class NumericFilter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Datapoints for which Operator is true relative to the query’s Value
            # field will be allowlisted.
            module Operator
              # Unspecified operator.
              OPERATOR_UNSPECIFIED = 0

              # Entities are eligible if their value is < the query's.
              LESS = 1

              # Entities are eligible if their value is <= the query's.
              LESS_EQUAL = 2

              # Entities are eligible if their value is == the query's.
              EQUAL = 3

              # Entities are eligible if their value is >= the query's.
              GREATER_EQUAL = 4

              # Entities are eligible if their value is > the query's.
              GREATER = 5

              # Entities are eligible if their value is != the query's.
              NOT_EQUAL = 6
            end
          end

          # Parameters that can be overrided in each query to tune query latency and
          # recall.
          # @!attribute [rw] approximate_neighbor_candidates
          #   @return [::Integer]
          #     Optional. The number of neighbors to find via approximate search before
          #     exact reordering is performed; if set, this value must be >
          #     neighbor_count.
          # @!attribute [rw] leaf_nodes_search_fraction
          #   @return [::Float]
          #     Optional. The fraction of the number of leaves to search, set at query
          #     time allows user to tune search performance. This value increase result
          #     in both search accuracy and latency increase. The value should be between
          #     0.0 and 1.0.
          class Parameters
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # The request message for
        # {::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Client#search_nearest_entities FeatureOnlineStoreService.SearchNearestEntities}.
        # @!attribute [rw] feature_view
        #   @return [::String]
        #     Required. FeatureView resource format
        #     `projects/{project}/locations/{location}/featureOnlineStores/{featureOnlineStore}/featureViews/{featureView}`
        # @!attribute [rw] query
        #   @return [::Google::Cloud::AIPlatform::V1::NearestNeighborQuery]
        #     Required. The query.
        # @!attribute [rw] return_full_entity
        #   @return [::Boolean]
        #     Optional. If set to true, the full entities (including all vector values
        #     and metadata) of the nearest neighbors are returned; otherwise only entity
        #     id of the nearest neighbors will be returned. Note that returning full
        #     entities will significantly increase the latency and cost of the query.
        class SearchNearestEntitiesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Nearest neighbors for one query.
        # @!attribute [rw] neighbors
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::NearestNeighbors::Neighbor>]
        #     All its neighbors.
        class NearestNeighbors
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A neighbor of the query vector.
          # @!attribute [rw] entity_id
          #   @return [::String]
          #     The id of the similar entity.
          # @!attribute [rw] distance
          #   @return [::Float]
          #     The distance between the neighbor and the query vector.
          # @!attribute [rw] entity_key_values
          #   @return [::Google::Cloud::AIPlatform::V1::FetchFeatureValuesResponse]
          #     The attributes of the neighbor, e.g. filters, crowding and metadata
          #     Note that full entities are returned only when "return_full_entity"
          #     is set to true. Otherwise, only the "entity_id" and "distance" fields
          #     are populated.
          class Neighbor
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Client#search_nearest_entities FeatureOnlineStoreService.SearchNearestEntities}
        # @!attribute [rw] nearest_neighbors
        #   @return [::Google::Cloud::AIPlatform::V1::NearestNeighbors]
        #     The nearest neighbors of the query entity.
        class SearchNearestEntitiesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Format of the data in the Feature View.
        module FeatureViewDataFormat
          # Not set. Will be treated as the KeyValue format.
          FEATURE_VIEW_DATA_FORMAT_UNSPECIFIED = 0

          # Return response data in key-value format.
          KEY_VALUE = 1

          # Return response data in proto Struct format.
          PROTO_STRUCT = 2
        end
      end
    end
  end
end
