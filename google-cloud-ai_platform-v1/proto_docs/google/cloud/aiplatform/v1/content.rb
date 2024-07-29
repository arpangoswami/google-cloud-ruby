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
        # The base structured datatype containing multi-part content of a message.
        #
        # A `Content` includes a `role` field designating the producer of the `Content`
        # and a `parts` field containing multi-part data that contains the content of
        # the message turn.
        # @!attribute [rw] role
        #   @return [::String]
        #     Optional. The producer of the content. Must be either 'user' or 'model'.
        #
        #     Useful to set for multi-turn conversations, otherwise can be left blank
        #     or unset.
        # @!attribute [rw] parts
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Part>]
        #     Required. Ordered `Parts` that constitute a single message. Parts may have
        #     different IANA MIME types.
        class Content
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A datatype containing media that is part of a multi-part `Content` message.
        #
        # A `Part` consists of data which has an associated datatype. A `Part` can only
        # contain one of the accepted types in `Part.data`.
        #
        # A `Part` must have a fixed IANA MIME type identifying the type and subtype
        # of the media if `inline_data` or `file_data` field is filled with raw bytes.
        # @!attribute [rw] text
        #   @return [::String]
        #     Optional. Text part (can be code).
        # @!attribute [rw] inline_data
        #   @return [::Google::Cloud::AIPlatform::V1::Blob]
        #     Optional. Inlined bytes data.
        # @!attribute [rw] file_data
        #   @return [::Google::Cloud::AIPlatform::V1::FileData]
        #     Optional. URI based data.
        # @!attribute [rw] function_call
        #   @return [::Google::Cloud::AIPlatform::V1::FunctionCall]
        #     Optional. A predicted [FunctionCall] returned from the model that
        #     contains a string representing the [FunctionDeclaration.name] with the
        #     parameters and their values.
        # @!attribute [rw] function_response
        #   @return [::Google::Cloud::AIPlatform::V1::FunctionResponse]
        #     Optional. The result output of a [FunctionCall] that contains a string
        #     representing the [FunctionDeclaration.name] and a structured JSON object
        #     containing any output from the function call. It is used as context to
        #     the model.
        # @!attribute [rw] video_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::VideoMetadata]
        #     Optional. Video metadata. The metadata should only be specified while the
        #     video data is presented in inline_data or file_data.
        class Part
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Content blob.
        #
        # It's preferred to send as {::Google::Cloud::AIPlatform::V1::Part#text text}
        # directly rather than raw bytes.
        # @!attribute [rw] mime_type
        #   @return [::String]
        #     Required. The IANA standard MIME type of the source data.
        # @!attribute [rw] data
        #   @return [::String]
        #     Required. Raw bytes.
        class Blob
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # URI based data.
        # @!attribute [rw] mime_type
        #   @return [::String]
        #     Required. The IANA standard MIME type of the source data.
        # @!attribute [rw] file_uri
        #   @return [::String]
        #     Required. URI.
        class FileData
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata describes the input video content.
        # @!attribute [rw] start_offset
        #   @return [::Google::Protobuf::Duration]
        #     Optional. The start offset of the video.
        # @!attribute [rw] end_offset
        #   @return [::Google::Protobuf::Duration]
        #     Optional. The end offset of the video.
        class VideoMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Generation config.
        # @!attribute [rw] temperature
        #   @return [::Float]
        #     Optional. Controls the randomness of predictions.
        # @!attribute [rw] top_p
        #   @return [::Float]
        #     Optional. If specified, nucleus sampling will be used.
        # @!attribute [rw] top_k
        #   @return [::Float]
        #     Optional. If specified, top-k sampling will be used.
        # @!attribute [rw] candidate_count
        #   @return [::Integer]
        #     Optional. Number of candidates to generate.
        # @!attribute [rw] max_output_tokens
        #   @return [::Integer]
        #     Optional. The maximum number of output tokens to generate per message.
        # @!attribute [rw] stop_sequences
        #   @return [::Array<::String>]
        #     Optional. Stop sequences.
        # @!attribute [rw] presence_penalty
        #   @return [::Float]
        #     Optional. Positive penalties.
        # @!attribute [rw] frequency_penalty
        #   @return [::Float]
        #     Optional. Frequency penalties.
        # @!attribute [rw] response_mime_type
        #   @return [::String]
        #     Optional. Output response mimetype of the generated candidate text.
        #     Supported mimetype:
        #     - `text/plain`: (default) Text output.
        #     - `application/json`: JSON response in the candidates.
        #     The model needs to be prompted to output the appropriate response type,
        #     otherwise the behavior is undefined.
        #     This is a preview feature.
        # @!attribute [rw] response_schema
        #   @return [::Google::Cloud::AIPlatform::V1::Schema]
        #     Optional. The `Schema` object allows the definition of input and output
        #     data types. These types can be objects, but also primitives and arrays.
        #     Represents a select subset of an [OpenAPI 3.0 schema
        #     object](https://spec.openapis.org/oas/v3.0.3#schema).
        #     If set, a compatible response_mime_type must also be set.
        #     Compatible mimetypes:
        #     `application/json`: Schema for JSON response.
        class GenerationConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Safety settings.
        # @!attribute [rw] category
        #   @return [::Google::Cloud::AIPlatform::V1::HarmCategory]
        #     Required. Harm category.
        # @!attribute [rw] threshold
        #   @return [::Google::Cloud::AIPlatform::V1::SafetySetting::HarmBlockThreshold]
        #     Required. The harm block threshold.
        # @!attribute [rw] method
        #   @return [::Google::Cloud::AIPlatform::V1::SafetySetting::HarmBlockMethod]
        #     Optional. Specify if the threshold is used for probability or severity
        #     score. If not specified, the threshold is used for probability score.
        class SafetySetting
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Probability based thresholds levels for blocking.
          module HarmBlockThreshold
            # Unspecified harm block threshold.
            HARM_BLOCK_THRESHOLD_UNSPECIFIED = 0

            # Block low threshold and above (i.e. block more).
            BLOCK_LOW_AND_ABOVE = 1

            # Block medium threshold and above.
            BLOCK_MEDIUM_AND_ABOVE = 2

            # Block only high threshold (i.e. block less).
            BLOCK_ONLY_HIGH = 3

            # Block none.
            BLOCK_NONE = 4
          end

          # Probability vs severity.
          module HarmBlockMethod
            # The harm block method is unspecified.
            HARM_BLOCK_METHOD_UNSPECIFIED = 0

            # The harm block method uses both probability and severity scores.
            SEVERITY = 1

            # The harm block method uses the probability score.
            PROBABILITY = 2
          end
        end

        # Safety rating corresponding to the generated content.
        # @!attribute [r] category
        #   @return [::Google::Cloud::AIPlatform::V1::HarmCategory]
        #     Output only. Harm category.
        # @!attribute [r] probability
        #   @return [::Google::Cloud::AIPlatform::V1::SafetyRating::HarmProbability]
        #     Output only. Harm probability levels in the content.
        # @!attribute [r] probability_score
        #   @return [::Float]
        #     Output only. Harm probability score.
        # @!attribute [r] severity
        #   @return [::Google::Cloud::AIPlatform::V1::SafetyRating::HarmSeverity]
        #     Output only. Harm severity levels in the content.
        # @!attribute [r] severity_score
        #   @return [::Float]
        #     Output only. Harm severity score.
        # @!attribute [r] blocked
        #   @return [::Boolean]
        #     Output only. Indicates whether the content was filtered out because of this
        #     rating.
        class SafetyRating
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Harm probability levels in the content.
          module HarmProbability
            # Harm probability unspecified.
            HARM_PROBABILITY_UNSPECIFIED = 0

            # Negligible level of harm.
            NEGLIGIBLE = 1

            # Low level of harm.
            LOW = 2

            # Medium level of harm.
            MEDIUM = 3

            # High level of harm.
            HIGH = 4
          end

          # Harm severity levels.
          module HarmSeverity
            # Harm severity unspecified.
            HARM_SEVERITY_UNSPECIFIED = 0

            # Negligible level of harm severity.
            HARM_SEVERITY_NEGLIGIBLE = 1

            # Low level of harm severity.
            HARM_SEVERITY_LOW = 2

            # Medium level of harm severity.
            HARM_SEVERITY_MEDIUM = 3

            # High level of harm severity.
            HARM_SEVERITY_HIGH = 4
          end
        end

        # A collection of source attributions for a piece of content.
        # @!attribute [r] citations
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Citation>]
        #     Output only. List of citations.
        class CitationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Source attributions for content.
        # @!attribute [r] start_index
        #   @return [::Integer]
        #     Output only. Start index into the content.
        # @!attribute [r] end_index
        #   @return [::Integer]
        #     Output only. End index into the content.
        # @!attribute [r] uri
        #   @return [::String]
        #     Output only. Url reference of the attribution.
        # @!attribute [r] title
        #   @return [::String]
        #     Output only. Title of the attribution.
        # @!attribute [r] license
        #   @return [::String]
        #     Output only. License of the attribution.
        # @!attribute [r] publication_date
        #   @return [::Google::Type::Date]
        #     Output only. Publication date of the attribution.
        class Citation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A response candidate generated from the model.
        # @!attribute [r] index
        #   @return [::Integer]
        #     Output only. Index of the candidate.
        # @!attribute [r] content
        #   @return [::Google::Cloud::AIPlatform::V1::Content]
        #     Output only. Content parts of the candidate.
        # @!attribute [r] score
        #   @return [::Float]
        #     Output only. Confidence score of the candidate.
        # @!attribute [r] finish_reason
        #   @return [::Google::Cloud::AIPlatform::V1::Candidate::FinishReason]
        #     Output only. The reason why the model stopped generating tokens.
        #     If empty, the model has not stopped generating the tokens.
        # @!attribute [r] safety_ratings
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::SafetyRating>]
        #     Output only. List of ratings for the safety of a response candidate.
        #
        #     There is at most one rating per category.
        # @!attribute [r] finish_message
        #   @return [::String]
        #     Output only. Describes the reason the mode stopped generating tokens in
        #     more detail. This is only filled when `finish_reason` is set.
        # @!attribute [r] citation_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::CitationMetadata]
        #     Output only. Source attribution of the generated content.
        # @!attribute [r] grounding_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GroundingMetadata]
        #     Output only. Metadata specifies sources used to ground generated content.
        class Candidate
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The reason why the model stopped generating tokens.
          # If empty, the model has not stopped generating the tokens.
          module FinishReason
            # The finish reason is unspecified.
            FINISH_REASON_UNSPECIFIED = 0

            # Natural stop point of the model or provided stop sequence.
            STOP = 1

            # The maximum number of tokens as specified in the request was reached.
            MAX_TOKENS = 2

            # The token generation was stopped as the response was flagged for safety
            # reasons. NOTE: When streaming the Candidate.content will be empty if
            # content filters blocked the output.
            SAFETY = 3

            # The token generation was stopped as the response was flagged for
            # unauthorized citations.
            RECITATION = 4

            # All other reasons that stopped the token generation
            OTHER = 5

            # The token generation was stopped as the response was flagged for the
            # terms which are included from the terminology blocklist.
            BLOCKLIST = 6

            # The token generation was stopped as the response was flagged for
            # the prohibited contents.
            PROHIBITED_CONTENT = 7

            # The token generation was stopped as the response was flagged for
            # Sensitive Personally Identifiable Information (SPII) contents.
            SPII = 8

            # The function call generated by the model is invalid.
            MALFORMED_FUNCTION_CALL = 9
          end
        end

        # Segment of the content.
        # @!attribute [r] part_index
        #   @return [::Integer]
        #     Output only. The index of a Part object within its parent Content object.
        # @!attribute [r] start_index
        #   @return [::Integer]
        #     Output only. Start index in the given Part, measured in bytes. Offset from
        #     the start of the Part, inclusive, starting at zero.
        # @!attribute [r] end_index
        #   @return [::Integer]
        #     Output only. End index in the given Part, measured in bytes. Offset from
        #     the start of the Part, exclusive, starting at zero.
        # @!attribute [r] text
        #   @return [::String]
        #     Output only. The text corresponding to the segment from the response.
        class Segment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Grounding chunk.
        # @!attribute [rw] web
        #   @return [::Google::Cloud::AIPlatform::V1::GroundingChunk::Web]
        #     Grounding chunk from the web.
        # @!attribute [rw] retrieved_context
        #   @return [::Google::Cloud::AIPlatform::V1::GroundingChunk::RetrievedContext]
        #     Grounding chunk from context retrieved by the retrieval tools.
        class GroundingChunk
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Chunk from the web.
          # @!attribute [rw] uri
          #   @return [::String]
          #     URI reference of the chunk.
          # @!attribute [rw] title
          #   @return [::String]
          #     Title of the chunk.
          class Web
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Chunk from context retrieved by the retrieval tools.
          # @!attribute [rw] uri
          #   @return [::String]
          #     URI reference of the attribution.
          # @!attribute [rw] title
          #   @return [::String]
          #     Title of the attribution.
          class RetrievedContext
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Grounding support.
        # @!attribute [rw] segment
        #   @return [::Google::Cloud::AIPlatform::V1::Segment]
        #     Segment of the content this support belongs to.
        # @!attribute [rw] grounding_chunk_indices
        #   @return [::Array<::Integer>]
        #     A list of indices (into 'grounding_chunk') specifying the
        #     citations associated with the claim. For instance [1,3,4] means
        #     that grounding_chunk[1], grounding_chunk[3],
        #     grounding_chunk[4] are the retrieved content attributed to the claim.
        # @!attribute [rw] confidence_scores
        #   @return [::Array<::Float>]
        #     Confidence score of the support references. Ranges from 0 to 1. 1 is the
        #     most confident. This list must have the same size as the
        #     grounding_chunk_indices.
        class GroundingSupport
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata returned to client when grounding is enabled.
        # @!attribute [rw] web_search_queries
        #   @return [::Array<::String>]
        #     Optional. Web search queries for the following-up web search.
        # @!attribute [rw] search_entry_point
        #   @return [::Google::Cloud::AIPlatform::V1::SearchEntryPoint]
        #     Optional. Google search entry for the following-up web searches.
        # @!attribute [rw] grounding_chunks
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::GroundingChunk>]
        #     List of supporting references retrieved from specified grounding source.
        # @!attribute [rw] grounding_supports
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::GroundingSupport>]
        #     Optional. List of grounding support.
        class GroundingMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Google search entry point.
        # @!attribute [rw] rendered_content
        #   @return [::String]
        #     Optional. Web content snippet that can be embedded in a web page or an app
        #     webview.
        # @!attribute [rw] sdk_blob
        #   @return [::String]
        #     Optional. Base64 encoded JSON representing array of <search term, search
        #     url> tuple.
        class SearchEntryPoint
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Harm categories that will block the content.
        module HarmCategory
          # The harm category is unspecified.
          HARM_CATEGORY_UNSPECIFIED = 0

          # The harm category is hate speech.
          HARM_CATEGORY_HATE_SPEECH = 1

          # The harm category is dangerous content.
          HARM_CATEGORY_DANGEROUS_CONTENT = 2

          # The harm category is harassment.
          HARM_CATEGORY_HARASSMENT = 3

          # The harm category is sexually explicit content.
          HARM_CATEGORY_SEXUALLY_EXPLICIT = 4
        end
      end
    end
  end
end
