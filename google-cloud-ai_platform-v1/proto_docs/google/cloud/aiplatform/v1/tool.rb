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
        # Tool details that the model may use to generate response.
        #
        # A `Tool` is a piece of code that enables the system to interact with
        # external systems to perform an action, or set of actions, outside of
        # knowledge and scope of the model. A Tool object should contain exactly
        # one type of Tool (e.g FunctionDeclaration, Retrieval or
        # GoogleSearchRetrieval).
        # @!attribute [rw] function_declarations
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::FunctionDeclaration>]
        #     Optional. Function tool type.
        #     One or more function declarations to be passed to the model along with the
        #     current user query. Model may decide to call a subset of these functions
        #     by populating [FunctionCall][content.part.function_call] in the response.
        #     User should provide a [FunctionResponse][content.part.function_response]
        #     for each function call in the next turn. Based on the function responses,
        #     Model will generate the final response back to the user.
        #     Maximum 64 function declarations can be provided.
        # @!attribute [rw] retrieval
        #   @return [::Google::Cloud::AIPlatform::V1::Retrieval]
        #     Optional. Retrieval tool type.
        #     System will always execute the provided retrieval tool(s) to get external
        #     knowledge to answer the prompt. Retrieval results are presented to the
        #     model for generation.
        # @!attribute [rw] google_search_retrieval
        #   @return [::Google::Cloud::AIPlatform::V1::GoogleSearchRetrieval]
        #     Optional. GoogleSearchRetrieval tool type.
        #     Specialized retrieval tool that is powered by Google search.
        class Tool
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Structured representation of a function declaration as defined by the
        # [OpenAPI 3.0 specification](https://spec.openapis.org/oas/v3.0.3). Included
        # in this declaration are the function name and parameters. This
        # FunctionDeclaration is a representation of a block of code that can be used
        # as a `Tool` by the model and executed by the client.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the function to call.
        #     Must start with a letter or an underscore.
        #     Must be a-z, A-Z, 0-9, or contain underscores, dots and dashes, with a
        #     maximum length of 64.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Description and purpose of the function.
        #     Model uses it to decide how and whether to call the function.
        # @!attribute [rw] parameters
        #   @return [::Google::Cloud::AIPlatform::V1::Schema]
        #     Optional. Describes the parameters to this function in JSON Schema Object
        #     format. Reflects the Open API 3.03 Parameter Object. string Key: the name
        #     of the parameter. Parameter names are case sensitive. Schema Value: the
        #     Schema defining the type used for the parameter. For function with no
        #     parameters, this can be left unset. Parameter names must start with a
        #     letter or an underscore and must only contain chars a-z, A-Z, 0-9, or
        #     underscores with a maximum length of 64. Example with 1 required and 1
        #     optional parameter: type: OBJECT properties:
        #      param1:
        #        type: STRING
        #      param2:
        #        type: INTEGER
        #     required:
        #      - param1
        class FunctionDeclaration
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A predicted [FunctionCall] returned from the model that contains a string
        # representing the [FunctionDeclaration.name] and a structured JSON object
        # containing the parameters and their values.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the function to call.
        #     Matches [FunctionDeclaration.name].
        # @!attribute [rw] args
        #   @return [::Google::Protobuf::Struct]
        #     Optional. Required. The function parameters and values in JSON object
        #     format. See [FunctionDeclaration.parameters] for parameter details.
        class FunctionCall
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The result output from a [FunctionCall] that contains a string representing
        # the [FunctionDeclaration.name] and a structured JSON object containing any
        # output from the function is used as context to the model. This should contain
        # the result of a [FunctionCall] made based on model prediction.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the function to call.
        #     Matches [FunctionDeclaration.name] and [FunctionCall.name].
        # @!attribute [rw] response
        #   @return [::Google::Protobuf::Struct]
        #     Required. The function response in JSON object format.
        class FunctionResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Defines a retrieval tool that model can call to access external knowledge.
        # @!attribute [rw] vertex_ai_search
        #   @return [::Google::Cloud::AIPlatform::V1::VertexAISearch]
        #     Set to use data source powered by Vertex AI Search.
        # @!attribute [rw] disable_attribution
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Boolean]
        #     Optional. Deprecated. This option is no longer supported.
        class Retrieval
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Retrieve from Vertex AI Search datastore for grounding.
        # See https://cloud.google.com/vertex-ai-search-and-conversation
        # @!attribute [rw] datastore
        #   @return [::String]
        #     Required. Fully-qualified Vertex AI Search's datastore resource ID.
        #     Format:
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore}`
        class VertexAISearch
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Tool to retrieve public web data for grounding, powered by Google.
        class GoogleSearchRetrieval
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Tool config. This config is shared for all tools provided in the request.
        # @!attribute [rw] function_calling_config
        #   @return [::Google::Cloud::AIPlatform::V1::FunctionCallingConfig]
        #     Optional. Function calling config.
        class ToolConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Function calling config.
        # @!attribute [rw] mode
        #   @return [::Google::Cloud::AIPlatform::V1::FunctionCallingConfig::Mode]
        #     Optional. Function calling mode.
        # @!attribute [rw] allowed_function_names
        #   @return [::Array<::String>]
        #     Optional. Function names to call. Only set when the Mode is ANY. Function
        #     names should match [FunctionDeclaration.name]. With mode set to ANY, model
        #     will predict a function call from the set of function names provided.
        class FunctionCallingConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Function calling mode.
          module Mode
            # Unspecified function calling mode. This value should not be used.
            MODE_UNSPECIFIED = 0

            # Default model behavior, model decides to predict either a function call
            # or a natural language repspose.
            AUTO = 1

            # Model is constrained to always predicting a function call only.
            # If "allowed_function_names" are set, the predicted function call will be
            # limited to any one of "allowed_function_names", else the predicted
            # function call will be any one of the provided "function_declarations".
            ANY = 2

            # Model will not predict any function call. Model behavior is same as when
            # not passing any function declarations.
            NONE = 3
          end
        end
      end
    end
  end
end
