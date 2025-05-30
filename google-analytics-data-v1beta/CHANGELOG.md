# Changelog

### 0.16.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 0.15.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 0.14.0 (2024-12-04)

#### Features

* Filters now support empty values ([#27653](https://github.com/googleapis/google-cloud-ruby/issues/27653)) 

### 0.13.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` ([#27002](https://github.com/googleapis/google-cloud-ruby/issues/27002)) 

### 0.13.0 (2024-08-05)

#### Features

* add the `Comparison` type 
* add the `ComparisonMetadata` type 
* add the `comparisons` field to the `Metadata` resource ([#26569](https://github.com/googleapis/google-cloud-ruby/issues/26569)) 
* add the `comparisons` field to the `RunReportRequest`, `RunPivotReportRequest` resources 
#### Documentation

* a comment for field `custom_definition` in message `DimensionMetadata` is changed 

### 0.12.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24862](https://github.com/googleapis/google-cloud-ruby/issues/24862)) 

### 0.11.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.11.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.11.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23772](https://github.com/googleapis/google-cloud-ruby/issues/23772)) 

### 0.10.0 (2023-12-13)

#### Features

* Added calls for managing audience exports 
* Response metadata now includes sampling metadata 

### 0.9.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22916](https://github.com/googleapis/google-cloud-ruby/issues/22916)) 

### 0.8.1 (2023-08-15)

#### Documentation

* Add clarifications ([#22745](https://github.com/googleapis/google-cloud-ruby/issues/22745)) 

### 0.8.0 (2023-06-06)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21671](https://github.com/googleapis/google-cloud-ruby/issues/21671)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.7.0 (2023-03-08)

#### Features

* Support REST transport ([#20624](https://github.com/googleapis/google-cloud-ruby/issues/20624)) 

### 0.6.0 (2022-10-18)

#### Features

* add subject_to_thresholding field to ResponseMetadata type 
* add tokens_per_project_per_hour field to PropertyQuota type 

### 0.5.0 (2022-07-01)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 

### 0.4.3 / 2022-01-11

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.4.2 / 2021-11-11

#### Documentation

* Improved reference documentation formatting

### 0.4.1 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.4.0 / 2021-11-02

#### Features

* Support schema restrictions, currency code, and time zone fields

### 0.3.0 / 2021-09-07

#### Features

* Support for the check_compatibility RPC

### 0.2.1 / 2021-08-11

#### Bug Fixes

* Honor client-level timeout configuration

### 0.2.0 / 2021-07-12

#### Features

* Support for configuring minute ranges when running a realtime report

#### Documentation

* Clarified some language around authentication configuration

### 0.1.0 / 2021-06-21

#### Features

* Initial generation of google-analytics-data-v1beta
