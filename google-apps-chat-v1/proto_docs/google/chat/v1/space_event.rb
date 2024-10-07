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


module Google
  module Apps
    module Chat
      module V1
        # An event that represents a change or activity in a Google Chat space. To
        # learn more, see [Work with events from Google
        # Chat](https://developers.google.com/workspace/chat/events-overview).
        # @!attribute [rw] name
        #   @return [::String]
        #     Resource name of the space event.
        #
        #     Format: `spaces/{space}/spaceEvents/{spaceEvent}`
        # @!attribute [rw] event_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Time when the event occurred.
        # @!attribute [rw] event_type
        #   @return [::String]
        #     Type of space event. Each event type has a batch version, which
        #     represents multiple instances of the event type that occur in a short
        #     period of time. For `spaceEvents.list()` requests, omit batch event types
        #     in your query filter. By default, the server returns both event type and
        #     its batch version.
        #
        #     Supported event types for
        #     [messages](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.messages):
        #
        #        * New message: `google.workspace.chat.message.v1.created`
        #        * Updated message: `google.workspace.chat.message.v1.updated`
        #        * Deleted message: `google.workspace.chat.message.v1.deleted`
        #        * Multiple new messages: `google.workspace.chat.message.v1.batchCreated`
        #        * Multiple updated messages:
        #        `google.workspace.chat.message.v1.batchUpdated`
        #        * Multiple deleted messages:
        #        `google.workspace.chat.message.v1.batchDeleted`
        #
        #     Supported event types for
        #     [memberships](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.members):
        #
        #       * New membership: `google.workspace.chat.membership.v1.created`
        #       * Updated membership: `google.workspace.chat.membership.v1.updated`
        #       * Deleted membership: `google.workspace.chat.membership.v1.deleted`
        #       * Multiple new memberships:
        #       `google.workspace.chat.membership.v1.batchCreated`
        #       * Multiple updated memberships:
        #       `google.workspace.chat.membership.v1.batchUpdated`
        #       * Multiple deleted memberships:
        #       `google.workspace.chat.membership.v1.batchDeleted`
        #
        #     Supported event types for
        #     [reactions](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.messages.reactions):
        #
        #       * New reaction: `google.workspace.chat.reaction.v1.created`
        #       * Deleted reaction: `google.workspace.chat.reaction.v1.deleted`
        #       * Multiple new reactions:
        #       `google.workspace.chat.reaction.v1.batchCreated`
        #       * Multiple deleted reactions:
        #       `google.workspace.chat.reaction.v1.batchDeleted`
        #
        #     Supported event types about the
        #     [space](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces):
        #
        #       * Updated space: `google.workspace.chat.space.v1.updated`
        #       * Multiple space updates: `google.workspace.chat.space.v1.batchUpdated`
        # @!attribute [rw] message_created_event_data
        #   @return [::Google::Apps::Chat::V1::MessageCreatedEventData]
        #     Event payload for a new message.
        #
        #     Event type: `google.workspace.chat.message.v1.created`
        # @!attribute [rw] message_updated_event_data
        #   @return [::Google::Apps::Chat::V1::MessageUpdatedEventData]
        #     Event payload for an updated message.
        #
        #     Event type: `google.workspace.chat.message.v1.updated`
        # @!attribute [rw] message_deleted_event_data
        #   @return [::Google::Apps::Chat::V1::MessageDeletedEventData]
        #     Event payload for a deleted message.
        #
        #     Event type: `google.workspace.chat.message.v1.deleted`
        # @!attribute [rw] message_batch_created_event_data
        #   @return [::Google::Apps::Chat::V1::MessageBatchCreatedEventData]
        #     Event payload for multiple new messages.
        #
        #     Event type: `google.workspace.chat.message.v1.batchCreated`
        # @!attribute [rw] message_batch_updated_event_data
        #   @return [::Google::Apps::Chat::V1::MessageBatchUpdatedEventData]
        #     Event payload for multiple updated messages.
        #
        #     Event type: `google.workspace.chat.message.v1.batchUpdated`
        # @!attribute [rw] message_batch_deleted_event_data
        #   @return [::Google::Apps::Chat::V1::MessageBatchDeletedEventData]
        #     Event payload for multiple deleted messages.
        #
        #     Event type: `google.workspace.chat.message.v1.batchDeleted`
        # @!attribute [rw] space_updated_event_data
        #   @return [::Google::Apps::Chat::V1::SpaceUpdatedEventData]
        #     Event payload for a space update.
        #
        #     Event type: `google.workspace.chat.space.v1.updated`
        # @!attribute [rw] space_batch_updated_event_data
        #   @return [::Google::Apps::Chat::V1::SpaceBatchUpdatedEventData]
        #     Event payload for multiple updates to a space.
        #
        #     Event type: `google.workspace.chat.space.v1.batchUpdated`
        # @!attribute [rw] membership_created_event_data
        #   @return [::Google::Apps::Chat::V1::MembershipCreatedEventData]
        #     Event payload for a new membership.
        #
        #     Event type: `google.workspace.chat.membership.v1.created`
        # @!attribute [rw] membership_updated_event_data
        #   @return [::Google::Apps::Chat::V1::MembershipUpdatedEventData]
        #     Event payload for an updated membership.
        #
        #     Event type: `google.workspace.chat.membership.v1.updated`
        # @!attribute [rw] membership_deleted_event_data
        #   @return [::Google::Apps::Chat::V1::MembershipDeletedEventData]
        #     Event payload for a deleted membership.
        #
        #     Event type: `google.workspace.chat.membership.v1.deleted`
        # @!attribute [rw] membership_batch_created_event_data
        #   @return [::Google::Apps::Chat::V1::MembershipBatchCreatedEventData]
        #     Event payload for multiple new memberships.
        #
        #     Event type: `google.workspace.chat.membership.v1.batchCreated`
        # @!attribute [rw] membership_batch_updated_event_data
        #   @return [::Google::Apps::Chat::V1::MembershipBatchUpdatedEventData]
        #     Event payload for multiple updated memberships.
        #
        #     Event type: `google.workspace.chat.membership.v1.batchUpdated`
        # @!attribute [rw] membership_batch_deleted_event_data
        #   @return [::Google::Apps::Chat::V1::MembershipBatchDeletedEventData]
        #     Event payload for multiple deleted memberships.
        #
        #     Event type: `google.workspace.chat.membership.v1.batchDeleted`
        # @!attribute [rw] reaction_created_event_data
        #   @return [::Google::Apps::Chat::V1::ReactionCreatedEventData]
        #     Event payload for a new reaction.
        #
        #     Event type: `google.workspace.chat.reaction.v1.created`
        # @!attribute [rw] reaction_deleted_event_data
        #   @return [::Google::Apps::Chat::V1::ReactionDeletedEventData]
        #     Event payload for a deleted reaction.
        #
        #     Event type: `google.workspace.chat.reaction.v1.deleted`
        # @!attribute [rw] reaction_batch_created_event_data
        #   @return [::Google::Apps::Chat::V1::ReactionBatchCreatedEventData]
        #     Event payload for multiple new reactions.
        #
        #     Event type: `google.workspace.chat.reaction.v1.batchCreated`
        # @!attribute [rw] reaction_batch_deleted_event_data
        #   @return [::Google::Apps::Chat::V1::ReactionBatchDeletedEventData]
        #     Event payload for multiple deleted reactions.
        #
        #     Event type: `google.workspace.chat.reaction.v1.batchDeleted`
        class SpaceEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for getting a space event.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the space event.
        #
        #     Format: `spaces/{space}/spaceEvents/{spaceEvent}`
        class GetSpaceEventRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for listing space events.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name of the [Google Chat
        #     space](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces)
        #     where the events occurred.
        #
        #     Format: `spaces/{space}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of space events returned. The service might
        #     return fewer than this value.
        #
        #     Negative values return an `INVALID_ARGUMENT` error.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token, received from a previous list space events call. Provide this
        #     to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to list space events must
        #     match the call that provided the page token. Passing different values to
        #     the other parameters might lead to unexpected results.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Required. A query filter.
        #
        #     You must specify at least one event type (`event_type`)
        #     using the has `:` operator. To filter by multiple event types, use the `OR`
        #     operator. Omit batch event types in your filter. The request automatically
        #     returns any related batch events. For example, if you filter by new
        #     reactions
        #     (`google.workspace.chat.reaction.v1.created`), the server also returns
        #     batch new reactions events
        #     (`google.workspace.chat.reaction.v1.batchCreated`). For a list of supported
        #     event types, see the [`SpaceEvents` reference
        #     documentation](https://developers.google.com/workspace/chat/api/reference/rest/v1/spaces.spaceEvents#SpaceEvent.FIELDS.event_type).
        #
        #     Optionally, you can also filter by start time (`start_time`) and
        #     end time (`end_time`):
        #
        #     * `start_time`: Exclusive timestamp from which to start listing space
        #     events.
        #      You can list events that occurred up to 28 days ago. If unspecified, lists
        #      space events from the past 28 days.
        #     * `end_time`: Inclusive timestamp until which space events are listed.
        #      If unspecified, lists events up to the time of the request.
        #
        #     To specify a start or end time, use the equals `=` operator and format in
        #     [RFC-3339](https://www.rfc-editor.org/rfc/rfc3339). To filter by both
        #     `start_time` and `end_time`, use the `AND` operator.
        #
        #     For example, the following queries are valid:
        #
        #     ```
        #     start_time="2023-08-23T19:20:33+00:00" AND
        #     end_time="2023-08-23T19:21:54+00:00"
        #     ```
        #     ```
        #     start_time="2023-08-23T19:20:33+00:00" AND
        #     (event_types:"google.workspace.chat.space.v1.updated" OR
        #     event_types:"google.workspace.chat.message.v1.created")
        #     ```
        #
        #     The following queries are invalid:
        #
        #     ```
        #     start_time="2023-08-23T19:20:33+00:00" OR
        #     end_time="2023-08-23T19:21:54+00:00"
        #     ```
        #     ```
        #     event_types:"google.workspace.chat.space.v1.updated" AND
        #     event_types:"google.workspace.chat.message.v1.created"
        #     ```
        #
        #     Invalid queries are rejected by the server with an `INVALID_ARGUMENT`
        #     error.
        class ListSpaceEventsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for listing space events.
        # @!attribute [rw] space_events
        #   @return [::Array<::Google::Apps::Chat::V1::SpaceEvent>]
        #     Results are returned in chronological order (oldest event first).
        #     Note: The `permissionSettings` field is not returned in the Space
        #     object for list requests.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Continuation token used to fetch more events.
        #     If this field is omitted, there are no subsequent pages.
        class ListSpaceEventsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
