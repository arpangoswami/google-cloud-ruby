# frozen_string_literal: true

# Copyright 2025 Google LLC
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
  module Shopping
    module Merchant
      module Accounts
        module V1beta
          # Collection of information related to the [automatic
          # improvements](https://developers.google.com/shopping-content/guides/automatic-improvements)
          # of an account.
          # @!attribute [rw] name
          #   @return [::String]
          #     Identifier. The resource name of the automatic improvements.
          #     Format: `accounts/{account}/automaticImprovements`.
          # @!attribute [rw] item_updates
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::AutomaticItemUpdates]
          #     Turning on [item
          #     updates](https://support.google.com/merchants/answer/3246284) allows
          #     Google to automatically update items for you. When item updates are on,
          #     Google uses the structured data markup on the website and advanced data
          #     extractors to update the price and availability of the items. When the item
          #     updates are off, items with mismatched data aren't shown.
          #     This field is only updated (cleared) if provided in the update mask.
          # @!attribute [rw] image_improvements
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::AutomaticImageImprovements]
          #     This improvement will attempt to automatically correct submitted images if
          #     they don't meet the [image
          #     requirements](https://support.google.com/merchants/answer/6324350), for
          #     example, removing overlays. If successful, the image will be replaced and
          #     approved. This improvement is only applied to images of disapproved offers.
          #     For more information see: [Automatic image
          #     improvements](https://support.google.com/merchants/answer/9242973)
          #     This field is only updated (cleared) if provided in the update mask.
          # @!attribute [rw] shipping_improvements
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::AutomaticShippingImprovements]
          #     Not available for MCAs
          #     [accounts](https://support.google.com/merchants/answer/188487). By turning
          #     on [automatic shipping
          #     improvements](https://support.google.com/merchants/answer/10027038),
          #     you are allowing Google to improve the accuracy of your delivery times
          #     shown to shoppers using Google. More accurate delivery times, especially
          #     when faster, typically lead to better conversion rates. Google will improve
          #     your estimated delivery times based on various factors:
          #     * Delivery address of an order
          #     * Current handling time and shipping time settings
          #     * Estimated weekdays or business days
          #     * Parcel tracking data
          #     This field is only updated (cleared) if provided in the update mask.
          class AutomaticImprovements
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Turning on [item
          # updates](https://support.google.com/merchants/answer/3246284) allows
          # Google to automatically update items for you. When item updates are on,
          # Google uses the structured data markup on the website and advanced data
          # extractors to update the price and availability of the items. When the item
          # updates are off, items with mismatched data aren't shown.
          # @!attribute [rw] account_item_updates_settings
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::AutomaticItemUpdates::ItemUpdatesAccountLevelSettings]
          #     Optional. Determines which attributes of the items should be automatically
          #     updated. If this field is not present and provided in the update mask, then
          #     the settings will be deleted. If there are no settings for subaccount, they
          #     are inherited from aggregator.
          # @!attribute [r] effective_allow_price_updates
          #   @return [::Boolean]
          #     Output only. The effective value of allow_price_updates.
          #     If account_item_updates_settings is present, then this value is the same.
          #     Otherwise, it represents the inherited value of the parent account.
          #     The default value is true if no settings are present.
          #     Read-only.
          # @!attribute [r] effective_allow_availability_updates
          #   @return [::Boolean]
          #     Output only. The effective value of allow_availability_updates.
          #     If account_item_updates_settings is present, then this value is the same.
          #     Otherwise, it represents the inherited value of the parent account.
          #     The default value is true if no settings are present.
          #     Read-only.
          # @!attribute [r] effective_allow_strict_availability_updates
          #   @return [::Boolean]
          #     Output only. The effective value of
          #     allow_strict_availability_updates.
          #     If account_item_updates_settings is present, then this value is the same.
          #     Otherwise, it represents the inherited value of the parent account.
          #     The default value is true if no settings are present.
          #     Read-only.
          # @!attribute [r] effective_allow_condition_updates
          #   @return [::Boolean]
          #     Output only. The effective value of allow_condition_updates.
          #     If account_item_updates_settings is present, then this value is the same.
          #     Otherwise, it represents the inherited value of the parent account.
          #     The default value is true if no settings are present.
          #     Read-only.
          class AutomaticItemUpdates
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Settings for the Automatic Item Updates.
            # @!attribute [rw] allow_price_updates
            #   @return [::Boolean]
            #     If price updates are enabled, Google always updates the active price with
            #     the crawled information.
            # @!attribute [rw] allow_availability_updates
            #   @return [::Boolean]
            #     If availability updates are enabled, any previous availability values
            #     get overwritten if Google finds an out-of-stock annotation on the offer's
            #     page.
            #     If additionally `allow_strict_availability_updates` field is set to
            #     true, values get overwritten if Google finds an in-stock annotation on
            #     the offer’s page.
            # @!attribute [rw] allow_strict_availability_updates
            #   @return [::Boolean]
            #     If `allow_availability_updates` is enabled, items are automatically
            #     updated in all your Shopping target countries. By default, availability
            #     updates will only be applied to items that are 'out of stock' on your
            #     website but 'in stock' on Shopping. Set this to true to also update items
            #     that are 'in stock' on your website, but 'out of stock' on Google
            #     Shopping. In order for this field to have an effect, you must also set
            #     `allow_availability_updates`.
            # @!attribute [rw] allow_condition_updates
            #   @return [::Boolean]
            #     If condition updates are enabled, Google always updates item condition
            #     with the condition detected from the details of your product.
            class ItemUpdatesAccountLevelSettings
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # This improvement will attempt to automatically correct submitted images if
          # they don't meet the [image
          # requirements](https://support.google.com/merchants/answer/6324350), for
          # example, removing overlays. If successful, the image will be replaced and
          # approved. This improvement is only applied to images of disapproved offers.
          # For more information see: [Automatic image
          # improvements](https://support.google.com/merchants/answer/9242973)
          # @!attribute [rw] account_image_improvements_settings
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::AutomaticImageImprovements::ImageImprovementsAccountLevelSettings]
          #     Optional. Determines how the images should be automatically updated.
          #     If this field is not present and provided in the update mask, then the
          #     settings will be deleted. If there are no settings for subaccount, they are
          #     inherited from aggregator.
          # @!attribute [r] effective_allow_automatic_image_improvements
          #   @return [::Boolean]
          #     Output only. The effective value of allow_automatic_image_improvements.
          #     If account_image_improvements_settings is present, then this value is the
          #     same. Otherwise, it represents the inherited value of the parent account.
          #     Read-only.
          class AutomaticImageImprovements
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Settings for the Automatic Image Improvements.
            # @!attribute [rw] allow_automatic_image_improvements
            #   @return [::Boolean]
            #     Enables automatic image improvements.
            class ImageImprovementsAccountLevelSettings
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Not available for MCAs
          # [accounts](https://support.google.com/merchants/answer/188487). By turning on
          # [automatic shipping
          # improvements](https://support.google.com/merchants/answer/10027038),
          # you are allowing Google to improve the accuracy of your delivery times shown
          # to shoppers using Google. More accurate delivery times, especially when
          # faster, typically lead to better conversion rates. Google will improve your
          # estimated delivery times based on various factors:
          # * Delivery address of an order
          # * Current handling time and shipping time settings
          # * Estimated weekdays or business days
          # * Parcel tracking data
          # @!attribute [rw] allow_shipping_improvements
          #   @return [::Boolean]
          #     Enables automatic shipping improvements.
          class AutomaticShippingImprovements
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the `GetAutomaticImprovements` method.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The resource name of the automatic improvements.
          #     Format: `accounts/{account}/automaticImprovements`
          class GetAutomaticImprovementsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the `UpdateAutomaticImprovements` method.
          # @!attribute [rw] automatic_improvements
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::AutomaticImprovements]
          #     Required. The new version of the automatic imrovements.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Required. List of fields being updated.
          #     The following fields are supported (in both `snake_case` and
          #     `lowerCamelCase`):
          #
          #     - `item_updates`
          #     - `item_updates.account_level_settings`
          #     - `image_improvements`
          #     - `image_improvements.account_level_settings`
          #     - `shipping_improvements`
          #     - `shipping_improvements.allow_shipping_improvements`
          class UpdateAutomaticImprovementsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
