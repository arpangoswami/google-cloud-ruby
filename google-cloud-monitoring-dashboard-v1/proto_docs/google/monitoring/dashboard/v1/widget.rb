# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module Monitoring
      module Dashboard
        module V1
          # Widget contains a single dashboard component and configuration of how to
          # present the component in the dashboard.
          # @!attribute [rw] title
          #   @return [::String]
          #     Optional. The title of the widget.
          # @!attribute [rw] xy_chart
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::XyChart]
          #     A chart of time series data.
          #
          #     Note: The following fields are mutually exclusive: `xy_chart`, `scorecard`, `text`, `blank`, `alert_chart`, `time_series_table`, `collapsible_group`, `logs_panel`, `incident_list`, `pie_chart`, `error_reporting_panel`, `section_header`, `single_view_group`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] scorecard
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::Scorecard]
          #     A scorecard summarizing time series data.
          #
          #     Note: The following fields are mutually exclusive: `scorecard`, `xy_chart`, `text`, `blank`, `alert_chart`, `time_series_table`, `collapsible_group`, `logs_panel`, `incident_list`, `pie_chart`, `error_reporting_panel`, `section_header`, `single_view_group`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] text
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::Text]
          #     A raw string or markdown displaying textual content.
          #
          #     Note: The following fields are mutually exclusive: `text`, `xy_chart`, `scorecard`, `blank`, `alert_chart`, `time_series_table`, `collapsible_group`, `logs_panel`, `incident_list`, `pie_chart`, `error_reporting_panel`, `section_header`, `single_view_group`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] blank
          #   @return [::Google::Protobuf::Empty]
          #     A blank space.
          #
          #     Note: The following fields are mutually exclusive: `blank`, `xy_chart`, `scorecard`, `text`, `alert_chart`, `time_series_table`, `collapsible_group`, `logs_panel`, `incident_list`, `pie_chart`, `error_reporting_panel`, `section_header`, `single_view_group`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] alert_chart
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::AlertChart]
          #     A chart of alert policy data.
          #
          #     Note: The following fields are mutually exclusive: `alert_chart`, `xy_chart`, `scorecard`, `text`, `blank`, `time_series_table`, `collapsible_group`, `logs_panel`, `incident_list`, `pie_chart`, `error_reporting_panel`, `section_header`, `single_view_group`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] time_series_table
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::TimeSeriesTable]
          #     A widget that displays time series data in a tabular format.
          #
          #     Note: The following fields are mutually exclusive: `time_series_table`, `xy_chart`, `scorecard`, `text`, `blank`, `alert_chart`, `collapsible_group`, `logs_panel`, `incident_list`, `pie_chart`, `error_reporting_panel`, `section_header`, `single_view_group`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] collapsible_group
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::CollapsibleGroup]
          #     A widget that groups the other widgets. All widgets that are within
          #     the area spanned by the grouping widget are considered member widgets.
          #
          #     Note: The following fields are mutually exclusive: `collapsible_group`, `xy_chart`, `scorecard`, `text`, `blank`, `alert_chart`, `time_series_table`, `logs_panel`, `incident_list`, `pie_chart`, `error_reporting_panel`, `section_header`, `single_view_group`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] logs_panel
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::LogsPanel]
          #     A widget that shows a stream of logs.
          #
          #     Note: The following fields are mutually exclusive: `logs_panel`, `xy_chart`, `scorecard`, `text`, `blank`, `alert_chart`, `time_series_table`, `collapsible_group`, `incident_list`, `pie_chart`, `error_reporting_panel`, `section_header`, `single_view_group`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] incident_list
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::IncidentList]
          #     A widget that shows list of incidents.
          #
          #     Note: The following fields are mutually exclusive: `incident_list`, `xy_chart`, `scorecard`, `text`, `blank`, `alert_chart`, `time_series_table`, `collapsible_group`, `logs_panel`, `pie_chart`, `error_reporting_panel`, `section_header`, `single_view_group`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] pie_chart
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::PieChart]
          #     A widget that displays timeseries data as a pie chart.
          #
          #     Note: The following fields are mutually exclusive: `pie_chart`, `xy_chart`, `scorecard`, `text`, `blank`, `alert_chart`, `time_series_table`, `collapsible_group`, `logs_panel`, `incident_list`, `error_reporting_panel`, `section_header`, `single_view_group`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] error_reporting_panel
          #   @return [::Google::Monitoring::Dashboard::V1::ErrorReportingPanel]
          #     A widget that displays a list of error groups.
          #
          #     Note: The following fields are mutually exclusive: `error_reporting_panel`, `xy_chart`, `scorecard`, `text`, `blank`, `alert_chart`, `time_series_table`, `collapsible_group`, `logs_panel`, `incident_list`, `pie_chart`, `section_header`, `single_view_group`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] section_header
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::SectionHeader]
          #     A widget that defines a section header for easier navigation of the
          #     dashboard.
          #
          #     Note: The following fields are mutually exclusive: `section_header`, `xy_chart`, `scorecard`, `text`, `blank`, `alert_chart`, `time_series_table`, `collapsible_group`, `logs_panel`, `incident_list`, `pie_chart`, `error_reporting_panel`, `single_view_group`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] single_view_group
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::SingleViewGroup]
          #     A widget that groups the other widgets by using a dropdown menu.
          #
          #     Note: The following fields are mutually exclusive: `single_view_group`, `xy_chart`, `scorecard`, `text`, `blank`, `alert_chart`, `time_series_table`, `collapsible_group`, `logs_panel`, `incident_list`, `pie_chart`, `error_reporting_panel`, `section_header`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] id
          #   @return [::String]
          #     Optional. The widget id. Ids may be made up of alphanumerics, dashes and
          #     underscores. Widget ids are optional.
          class Widget
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
