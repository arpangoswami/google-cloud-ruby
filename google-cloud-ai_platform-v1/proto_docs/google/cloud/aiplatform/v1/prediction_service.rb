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


module Google
  module Cloud
    module AIPlatform
      module V1
        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#predict PredictionService.Predict}.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint requested to serve the prediction.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] instances
        #   @return [::Array<::Google::Protobuf::Value>]
        #     Required. The instances that are the input to the prediction call.
        #     A DeployedModel may have an upper limit on the number of instances it
        #     supports per request, and when it is exceeded the prediction call errors
        #     in case of AutoML Models, or, in case of customer created Models, the
        #     behaviour is as documented by that Model.
        #     The schema of any single instance may be specified via Endpoint's
        #     DeployedModels' [Model's][google.cloud.aiplatform.v1.DeployedModel.model]
        #     [PredictSchemata's][google.cloud.aiplatform.v1.Model.predict_schemata]
        #     {::Google::Cloud::AIPlatform::V1::PredictSchemata#instance_schema_uri instance_schema_uri}.
        # @!attribute [rw] parameters
        #   @return [::Google::Protobuf::Value]
        #     The parameters that govern the prediction. The schema of the parameters may
        #     be specified via Endpoint's DeployedModels' [Model's
        #     ][google.cloud.aiplatform.v1.DeployedModel.model]
        #     [PredictSchemata's][google.cloud.aiplatform.v1.Model.predict_schemata]
        #     {::Google::Cloud::AIPlatform::V1::PredictSchemata#parameters_schema_uri parameters_schema_uri}.
        class PredictRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#predict PredictionService.Predict}.
        # @!attribute [rw] predictions
        #   @return [::Array<::Google::Protobuf::Value>]
        #     The predictions that are the output of the predictions call.
        #     The schema of any single prediction may be specified via Endpoint's
        #     DeployedModels' [Model's ][google.cloud.aiplatform.v1.DeployedModel.model]
        #     [PredictSchemata's][google.cloud.aiplatform.v1.Model.predict_schemata]
        #     {::Google::Cloud::AIPlatform::V1::PredictSchemata#prediction_schema_uri prediction_schema_uri}.
        # @!attribute [rw] deployed_model_id
        #   @return [::String]
        #     ID of the Endpoint's DeployedModel that served this prediction.
        # @!attribute [r] model
        #   @return [::String]
        #     Output only. The resource name of the Model which is deployed as the
        #     DeployedModel that this prediction hits.
        # @!attribute [r] model_version_id
        #   @return [::String]
        #     Output only. The version ID of the Model which is deployed as the
        #     DeployedModel that this prediction hits.
        # @!attribute [r] model_display_name
        #   @return [::String]
        #     Output only. The [display
        #     name][google.cloud.aiplatform.v1.Model.display_name] of the Model which is
        #     deployed as the DeployedModel that this prediction hits.
        # @!attribute [r] metadata
        #   @return [::Google::Protobuf::Value]
        #     Output only. Request-level metadata returned by the model. The metadata
        #     type will be dependent upon the model implementation.
        class PredictResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#raw_predict PredictionService.RawPredict}.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint requested to serve the prediction.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] http_body
        #   @return [::Google::Api::HttpBody]
        #     The prediction input. Supports HTTP headers and arbitrary data payload.
        #
        #     A {::Google::Cloud::AIPlatform::V1::DeployedModel DeployedModel} may have an
        #     upper limit on the number of instances it supports per request. When this
        #     limit it is exceeded for an AutoML model, the
        #     {::Google::Cloud::AIPlatform::V1::PredictionService::Client#raw_predict RawPredict}
        #     method returns an error. When this limit is exceeded for a custom-trained
        #     model, the behavior varies depending on the model.
        #
        #     You can specify the schema for each instance in the
        #     {::Google::Cloud::AIPlatform::V1::PredictSchemata#instance_schema_uri predict_schemata.instance_schema_uri}
        #     field when you create a {::Google::Cloud::AIPlatform::V1::Model Model}. This
        #     schema applies when you deploy the `Model` as a `DeployedModel` to an
        #     {::Google::Cloud::AIPlatform::V1::Endpoint Endpoint} and use the `RawPredict`
        #     method.
        class RawPredictRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#stream_raw_predict PredictionService.StreamRawPredict}.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint requested to serve the prediction.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] http_body
        #   @return [::Google::Api::HttpBody]
        #     The prediction input. Supports HTTP headers and arbitrary data payload.
        class StreamRawPredictRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#direct_predict PredictionService.DirectPredict}.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint requested to serve the prediction.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] inputs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Tensor>]
        #     The prediction input.
        # @!attribute [rw] parameters
        #   @return [::Google::Cloud::AIPlatform::V1::Tensor]
        #     The parameters that govern the prediction.
        class DirectPredictRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#direct_predict PredictionService.DirectPredict}.
        # @!attribute [rw] outputs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Tensor>]
        #     The prediction output.
        # @!attribute [rw] parameters
        #   @return [::Google::Cloud::AIPlatform::V1::Tensor]
        #     The parameters that govern the prediction.
        class DirectPredictResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#direct_raw_predict PredictionService.DirectRawPredict}.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint requested to serve the prediction.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] method_name
        #   @return [::String]
        #     Fully qualified name of the API method being invoked to perform
        #     predictions.
        #
        #     Format:
        #     `/namespace.Service/Method/`
        #     Example:
        #     `/tensorflow.serving.PredictionService/Predict`
        # @!attribute [rw] input
        #   @return [::String]
        #     The prediction input.
        class DirectRawPredictRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#direct_raw_predict PredictionService.DirectRawPredict}.
        # @!attribute [rw] output
        #   @return [::String]
        #     The prediction output.
        class DirectRawPredictResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#stream_direct_predict PredictionService.StreamDirectPredict}.
        #
        # The first message must contain
        # {::Google::Cloud::AIPlatform::V1::StreamDirectPredictRequest#endpoint endpoint}
        # field and optionally [input][]. The subsequent messages must contain
        # [input][].
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint requested to serve the prediction.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] inputs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Tensor>]
        #     Optional. The prediction input.
        # @!attribute [rw] parameters
        #   @return [::Google::Cloud::AIPlatform::V1::Tensor]
        #     Optional. The parameters that govern the prediction.
        class StreamDirectPredictRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#stream_direct_predict PredictionService.StreamDirectPredict}.
        # @!attribute [rw] outputs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Tensor>]
        #     The prediction output.
        # @!attribute [rw] parameters
        #   @return [::Google::Cloud::AIPlatform::V1::Tensor]
        #     The parameters that govern the prediction.
        class StreamDirectPredictResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#stream_direct_raw_predict PredictionService.StreamDirectRawPredict}.
        #
        # The first message must contain
        # {::Google::Cloud::AIPlatform::V1::StreamDirectRawPredictRequest#endpoint endpoint}
        # and
        # {::Google::Cloud::AIPlatform::V1::StreamDirectRawPredictRequest#method_name method_name}
        # fields and optionally
        # {::Google::Cloud::AIPlatform::V1::StreamDirectRawPredictRequest#input input}. The
        # subsequent messages must contain
        # {::Google::Cloud::AIPlatform::V1::StreamDirectRawPredictRequest#input input}.
        # {::Google::Cloud::AIPlatform::V1::StreamDirectRawPredictRequest#method_name method_name}
        # in the subsequent messages have no effect.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint requested to serve the prediction.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] method_name
        #   @return [::String]
        #     Optional. Fully qualified name of the API method being invoked to perform
        #     predictions.
        #
        #     Format:
        #     `/namespace.Service/Method/`
        #     Example:
        #     `/tensorflow.serving.PredictionService/Predict`
        # @!attribute [rw] input
        #   @return [::String]
        #     Optional. The prediction input.
        class StreamDirectRawPredictRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#stream_direct_raw_predict PredictionService.StreamDirectRawPredict}.
        # @!attribute [rw] output
        #   @return [::String]
        #     The prediction output.
        class StreamDirectRawPredictResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#streaming_predict PredictionService.StreamingPredict}.
        #
        # The first message must contain
        # {::Google::Cloud::AIPlatform::V1::StreamingPredictRequest#endpoint endpoint} field
        # and optionally [input][]. The subsequent messages must contain [input][].
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint requested to serve the prediction.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] inputs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Tensor>]
        #     The prediction input.
        # @!attribute [rw] parameters
        #   @return [::Google::Cloud::AIPlatform::V1::Tensor]
        #     The parameters that govern the prediction.
        class StreamingPredictRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#streaming_predict PredictionService.StreamingPredict}.
        # @!attribute [rw] outputs
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Tensor>]
        #     The prediction output.
        # @!attribute [rw] parameters
        #   @return [::Google::Cloud::AIPlatform::V1::Tensor]
        #     The parameters that govern the prediction.
        class StreamingPredictResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#streaming_raw_predict PredictionService.StreamingRawPredict}.
        #
        # The first message must contain
        # {::Google::Cloud::AIPlatform::V1::StreamingRawPredictRequest#endpoint endpoint}
        # and
        # {::Google::Cloud::AIPlatform::V1::StreamingRawPredictRequest#method_name method_name}
        # fields and optionally
        # {::Google::Cloud::AIPlatform::V1::StreamingRawPredictRequest#input input}. The
        # subsequent messages must contain
        # {::Google::Cloud::AIPlatform::V1::StreamingRawPredictRequest#input input}.
        # {::Google::Cloud::AIPlatform::V1::StreamingRawPredictRequest#method_name method_name}
        # in the subsequent messages have no effect.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint requested to serve the prediction.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] method_name
        #   @return [::String]
        #     Fully qualified name of the API method being invoked to perform
        #     predictions.
        #
        #     Format:
        #     `/namespace.Service/Method/`
        #     Example:
        #     `/tensorflow.serving.PredictionService/Predict`
        # @!attribute [rw] input
        #   @return [::String]
        #     The prediction input.
        class StreamingRawPredictRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#streaming_raw_predict PredictionService.StreamingRawPredict}.
        # @!attribute [rw] output
        #   @return [::String]
        #     The prediction output.
        class StreamingRawPredictResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#explain PredictionService.Explain}.
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint requested to serve the explanation.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] instances
        #   @return [::Array<::Google::Protobuf::Value>]
        #     Required. The instances that are the input to the explanation call.
        #     A DeployedModel may have an upper limit on the number of instances it
        #     supports per request, and when it is exceeded the explanation call errors
        #     in case of AutoML Models, or, in case of customer created Models, the
        #     behaviour is as documented by that Model.
        #     The schema of any single instance may be specified via Endpoint's
        #     DeployedModels' [Model's][google.cloud.aiplatform.v1.DeployedModel.model]
        #     [PredictSchemata's][google.cloud.aiplatform.v1.Model.predict_schemata]
        #     {::Google::Cloud::AIPlatform::V1::PredictSchemata#instance_schema_uri instance_schema_uri}.
        # @!attribute [rw] parameters
        #   @return [::Google::Protobuf::Value]
        #     The parameters that govern the prediction. The schema of the parameters may
        #     be specified via Endpoint's DeployedModels' [Model's
        #     ][google.cloud.aiplatform.v1.DeployedModel.model]
        #     [PredictSchemata's][google.cloud.aiplatform.v1.Model.predict_schemata]
        #     {::Google::Cloud::AIPlatform::V1::PredictSchemata#parameters_schema_uri parameters_schema_uri}.
        # @!attribute [rw] explanation_spec_override
        #   @return [::Google::Cloud::AIPlatform::V1::ExplanationSpecOverride]
        #     If specified, overrides the
        #     {::Google::Cloud::AIPlatform::V1::DeployedModel#explanation_spec explanation_spec}
        #     of the DeployedModel. Can be used for explaining prediction results with
        #     different configurations, such as:
        #      - Explaining top-5 predictions results as opposed to top-1;
        #      - Increasing path count or step count of the attribution methods to reduce
        #        approximate errors;
        #      - Using different baselines for explaining the prediction results.
        # @!attribute [rw] deployed_model_id
        #   @return [::String]
        #     If specified, this ExplainRequest will be served by the chosen
        #     DeployedModel, overriding
        #     {::Google::Cloud::AIPlatform::V1::Endpoint#traffic_split Endpoint.traffic_split}.
        class ExplainRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::PredictionService::Client#explain PredictionService.Explain}.
        # @!attribute [rw] explanations
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Explanation>]
        #     The explanations of the Model's
        #     {::Google::Cloud::AIPlatform::V1::PredictResponse#predictions PredictResponse.predictions}.
        #
        #     It has the same number of elements as
        #     {::Google::Cloud::AIPlatform::V1::ExplainRequest#instances instances} to be
        #     explained.
        # @!attribute [rw] deployed_model_id
        #   @return [::String]
        #     ID of the Endpoint's DeployedModel that served this explanation.
        # @!attribute [rw] predictions
        #   @return [::Array<::Google::Protobuf::Value>]
        #     The predictions that are the output of the predictions call.
        #     Same as
        #     {::Google::Cloud::AIPlatform::V1::PredictResponse#predictions PredictResponse.predictions}.
        class ExplainResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [PredictionService.CountTokens][].
        # @!attribute [rw] endpoint
        #   @return [::String]
        #     Required. The name of the Endpoint requested to perform token counting.
        #     Format:
        #     `projects/{project}/locations/{location}/endpoints/{endpoint}`
        # @!attribute [rw] model
        #   @return [::String]
        #     Optional. The name of the publisher model requested to serve the
        #     prediction. Format:
        #     `projects/{project}/locations/{location}/publishers/*/models/*`
        # @!attribute [rw] instances
        #   @return [::Array<::Google::Protobuf::Value>]
        #     Optional. The instances that are the input to token counting call.
        #     Schema is identical to the prediction schema of the underlying model.
        # @!attribute [rw] contents
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Content>]
        #     Optional. Input content.
        # @!attribute [rw] system_instruction
        #   @return [::Google::Cloud::AIPlatform::V1::Content]
        #     Optional. The user provided system instructions for the model.
        #     Note: only text should be used in parts and content in each part will be in
        #     a separate paragraph.
        # @!attribute [rw] tools
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Tool>]
        #     Optional. A list of `Tools` the model may use to generate the next
        #     response.
        #
        #     A `Tool` is a piece of code that enables the system to interact with
        #     external systems to perform an action, or set of actions, outside of
        #     knowledge and scope of the model.
        class CountTokensRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for [PredictionService.CountTokens][].
        # @!attribute [rw] total_tokens
        #   @return [::Integer]
        #     The total number of tokens counted across all instances from the request.
        # @!attribute [rw] total_billable_characters
        #   @return [::Integer]
        #     The total number of billable characters counted across all instances from
        #     the request.
        class CountTokensResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [PredictionService.GenerateContent].
        # @!attribute [rw] model
        #   @return [::String]
        #     Required. The name of the publisher model requested to serve the
        #     prediction. Format:
        #     `projects/{project}/locations/{location}/publishers/*/models/*`
        # @!attribute [rw] contents
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Content>]
        #     Required. The content of the current conversation with the model.
        #
        #     For single-turn queries, this is a single instance. For multi-turn queries,
        #     this is a repeated field that contains conversation history + latest
        #     request.
        # @!attribute [rw] system_instruction
        #   @return [::Google::Cloud::AIPlatform::V1::Content]
        #     Optional. The user provided system instructions for the model.
        #     Note: only text should be used in parts and content in each part will be in
        #     a separate paragraph.
        # @!attribute [rw] tools
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Tool>]
        #     Optional. A list of `Tools` the model may use to generate the next
        #     response.
        #
        #     A `Tool` is a piece of code that enables the system to interact with
        #     external systems to perform an action, or set of actions, outside of
        #     knowledge and scope of the model.
        # @!attribute [rw] tool_config
        #   @return [::Google::Cloud::AIPlatform::V1::ToolConfig]
        #     Optional. Tool config. This config is shared for all tools provided in the
        #     request.
        # @!attribute [rw] safety_settings
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::SafetySetting>]
        #     Optional. Per request settings for blocking unsafe content.
        #     Enforced on GenerateContentResponse.candidates.
        # @!attribute [rw] generation_config
        #   @return [::Google::Cloud::AIPlatform::V1::GenerationConfig]
        #     Optional. Generation config.
        class GenerateContentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for [PredictionService.GenerateContent].
        # @!attribute [r] candidates
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Candidate>]
        #     Output only. Generated candidates.
        # @!attribute [r] prompt_feedback
        #   @return [::Google::Cloud::AIPlatform::V1::GenerateContentResponse::PromptFeedback]
        #     Output only. Content filter results for a prompt sent in the request.
        #     Note: Sent only in the first stream chunk.
        #     Only happens when no candidates were generated due to content violations.
        # @!attribute [rw] usage_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenerateContentResponse::UsageMetadata]
        #     Usage metadata about the response(s).
        class GenerateContentResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Content filter results for a prompt sent in the request.
          # @!attribute [r] block_reason
          #   @return [::Google::Cloud::AIPlatform::V1::GenerateContentResponse::PromptFeedback::BlockedReason]
          #     Output only. Blocked reason.
          # @!attribute [r] safety_ratings
          #   @return [::Array<::Google::Cloud::AIPlatform::V1::SafetyRating>]
          #     Output only. Safety ratings.
          # @!attribute [r] block_reason_message
          #   @return [::String]
          #     Output only. A readable block reason message.
          class PromptFeedback
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Blocked reason enumeration.
            module BlockedReason
              # Unspecified blocked reason.
              BLOCKED_REASON_UNSPECIFIED = 0

              # Candidates blocked due to safety.
              SAFETY = 1

              # Candidates blocked due to other reason.
              OTHER = 2

              # Candidates blocked due to the terms which are included from the
              # terminology blocklist.
              BLOCKLIST = 3

              # Candidates blocked due to prohibited content.
              PROHIBITED_CONTENT = 4
            end
          end

          # Usage metadata about response(s).
          # @!attribute [rw] prompt_token_count
          #   @return [::Integer]
          #     Number of tokens in the request.
          # @!attribute [rw] candidates_token_count
          #   @return [::Integer]
          #     Number of tokens in the response(s).
          # @!attribute [rw] total_token_count
          #   @return [::Integer]
          class UsageMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
