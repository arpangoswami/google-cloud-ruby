# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/kms/v1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/kms/v1/resources_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/wrappers_pb'


descriptor_data = "\n!google/cloud/kms/v1/service.proto\x12\x13google.cloud.kms.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/cloud/kms/v1/resources.proto\x1a google/protobuf/field_mask.proto\x1a\x1egoogle/protobuf/wrappers.proto\"\xad\x01\n\x13ListKeyRingsRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\xff\x01\n\x15ListCryptoKeysRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x63loudkms.googleapis.com/KeyRing\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12P\n\x0cversion_view\x18\x04 \x01(\x0e\x32:.google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionView\x12\x13\n\x06\x66ilter\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x06 \x01(\tB\x03\xe0\x41\x01\"\x80\x02\n\x1cListCryptoKeyVersionsRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12H\n\x04view\x18\x04 \x01(\x0e\x32:.google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionView\x12\x13\n\x06\x66ilter\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x06 \x01(\tB\x03\xe0\x41\x01\"\xad\x01\n\x15ListImportJobsRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x63loudkms.googleapis.com/KeyRing\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"t\n\x14ListKeyRingsResponse\x12/\n\tkey_rings\x18\x01 \x03(\x0b\x32\x1c.google.cloud.kms.v1.KeyRing\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x12\n\ntotal_size\x18\x03 \x01(\x05\"z\n\x16ListCryptoKeysResponse\x12\x33\n\x0b\x63rypto_keys\x18\x01 \x03(\x0b\x32\x1e.google.cloud.kms.v1.CryptoKey\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x12\n\ntotal_size\x18\x03 \x01(\x05\"\x90\x01\n\x1dListCryptoKeyVersionsResponse\x12\x42\n\x13\x63rypto_key_versions\x18\x01 \x03(\x0b\x32%.google.cloud.kms.v1.CryptoKeyVersion\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x12\n\ntotal_size\x18\x03 \x01(\x05\"z\n\x16ListImportJobsResponse\x12\x33\n\x0bimport_jobs\x18\x01 \x03(\x0b\x32\x1e.google.cloud.kms.v1.ImportJob\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x12\n\ntotal_size\x18\x03 \x01(\x05\"J\n\x11GetKeyRingRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x63loudkms.googleapis.com/KeyRing\"N\n\x13GetCryptoKeyRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\"\\\n\x1aGetCryptoKeyVersionRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(cloudkms.googleapis.com/CryptoKeyVersion\"U\n\x13GetPublicKeyRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(cloudkms.googleapis.com/CryptoKeyVersion\"N\n\x13GetImportJobRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!cloudkms.googleapis.com/ImportJob\"\xa0\x01\n\x14\x43reateKeyRingRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x18\n\x0bkey_ring_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x33\n\x08key_ring\x18\x03 \x01(\x0b\x32\x1c.google.cloud.kms.v1.KeyRingB\x03\xe0\x41\x02\"\xcd\x01\n\x16\x43reateCryptoKeyRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x63loudkms.googleapis.com/KeyRing\x12\x1a\n\rcrypto_key_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x37\n\ncrypto_key\x18\x03 \x01(\x0b\x32\x1e.google.cloud.kms.v1.CryptoKeyB\x03\xe0\x41\x02\x12%\n\x1dskip_initial_version_creation\x18\x05 \x01(\x08\"\xa2\x01\n\x1d\x43reateCryptoKeyVersionRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\x12\x46\n\x12\x63rypto_key_version\x18\x02 \x01(\x0b\x32%.google.cloud.kms.v1.CryptoKeyVersionB\x03\xe0\x41\x02\"\xf0\x02\n\x1dImportCryptoKeyVersionRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\x12L\n\x12\x63rypto_key_version\x18\x06 \x01(\tB0\xe0\x41\x01\xfa\x41*\n(cloudkms.googleapis.com/CryptoKeyVersion\x12W\n\talgorithm\x18\x02 \x01(\x0e\x32?.google.cloud.kms.v1.CryptoKeyVersion.CryptoKeyVersionAlgorithmB\x03\xe0\x41\x02\x12\x17\n\nimport_job\x18\x04 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0bwrapped_key\x18\x08 \x01(\x0c\x42\x03\xe0\x41\x01\x12\"\n\x13rsa_aes_wrapped_key\x18\x05 \x01(\x0c\x42\x03\xe0\x41\x01H\x00\x42\x16\n\x14wrapped_key_material\"\xa6\x01\n\x16\x43reateImportJobRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x63loudkms.googleapis.com/KeyRing\x12\x1a\n\rimport_job_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x37\n\nimport_job\x18\x03 \x01(\x0b\x32\x1e.google.cloud.kms.v1.ImportJobB\x03\xe0\x41\x02\"\x87\x01\n\x16UpdateCryptoKeyRequest\x12\x37\n\ncrypto_key\x18\x01 \x01(\x0b\x32\x1e.google.cloud.kms.v1.CryptoKeyB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"\x9d\x01\n\x1dUpdateCryptoKeyVersionRequest\x12\x46\n\x12\x63rypto_key_version\x18\x01 \x01(\x0b\x32%.google.cloud.kms.v1.CryptoKeyVersionB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"\x83\x01\n$UpdateCryptoKeyPrimaryVersionRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\x12\"\n\x15\x63rypto_key_version_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\"`\n\x1e\x44\x65stroyCryptoKeyVersionRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(cloudkms.googleapis.com/CryptoKeyVersion\"`\n\x1eRestoreCryptoKeyVersionRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(cloudkms.googleapis.com/CryptoKeyVersion\"\xf9\x01\n\x0e\x45ncryptRequest\x12\x17\n\x04name\x18\x01 \x01(\tB\t\xe0\x41\x02\xfa\x41\x03\n\x01*\x12\x16\n\tplaintext\x18\x02 \x01(\x0c\x42\x03\xe0\x41\x02\x12*\n\x1d\x61\x64\x64itional_authenticated_data\x18\x03 \x01(\x0c\x42\x03\xe0\x41\x01\x12:\n\x10plaintext_crc32c\x18\x07 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x01\x12N\n$additional_authenticated_data_crc32c\x18\x08 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x01\"\x9b\x02\n\x0e\x44\x65\x63ryptRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\x12\x17\n\nciphertext\x18\x02 \x01(\x0c\x42\x03\xe0\x41\x02\x12*\n\x1d\x61\x64\x64itional_authenticated_data\x18\x03 \x01(\x0c\x42\x03\xe0\x41\x01\x12;\n\x11\x63iphertext_crc32c\x18\x05 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x01\x12N\n$additional_authenticated_data_crc32c\x18\x06 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x01\"\xe2\x02\n\x11RawEncryptRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x16\n\tplaintext\x18\x02 \x01(\x0c\x42\x03\xe0\x41\x02\x12*\n\x1d\x61\x64\x64itional_authenticated_data\x18\x03 \x01(\x0c\x42\x03\xe0\x41\x01\x12:\n\x10plaintext_crc32c\x18\x04 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x01\x12N\n$additional_authenticated_data_crc32c\x18\x05 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x01\x12\"\n\x15initialization_vector\x18\x06 \x01(\x0c\x42\x03\xe0\x41\x01\x12\x46\n\x1cinitialization_vector_crc32c\x18\x07 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x01\"\xf8\x02\n\x11RawDecryptRequest\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\nciphertext\x18\x02 \x01(\x0c\x42\x03\xe0\x41\x02\x12*\n\x1d\x61\x64\x64itional_authenticated_data\x18\x03 \x01(\x0c\x42\x03\xe0\x41\x01\x12\"\n\x15initialization_vector\x18\x04 \x01(\x0c\x42\x03\xe0\x41\x02\x12\x12\n\ntag_length\x18\x05 \x01(\x05\x12;\n\x11\x63iphertext_crc32c\x18\x06 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x01\x12N\n$additional_authenticated_data_crc32c\x18\x07 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x01\x12\x46\n\x1cinitialization_vector_crc32c\x18\x08 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x01\"\x8c\x02\n\x15\x41symmetricSignRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(cloudkms.googleapis.com/CryptoKeyVersion\x12\x30\n\x06\x64igest\x18\x03 \x01(\x0b\x32\x1b.google.cloud.kms.v1.DigestB\x03\xe0\x41\x01\x12\x37\n\rdigest_crc32c\x18\x04 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x01\x12\x11\n\x04\x64\x61ta\x18\x06 \x01(\x0c\x42\x03\xe0\x41\x01\x12\x35\n\x0b\x64\x61ta_crc32c\x18\x07 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x01\"\xb0\x01\n\x18\x41symmetricDecryptRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(cloudkms.googleapis.com/CryptoKeyVersion\x12\x17\n\nciphertext\x18\x03 \x01(\x0c\x42\x03\xe0\x41\x02\x12;\n\x11\x63iphertext_crc32c\x18\x04 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x01\"\x9a\x01\n\x0eMacSignRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(cloudkms.googleapis.com/CryptoKeyVersion\x12\x11\n\x04\x64\x61ta\x18\x02 \x01(\x0c\x42\x03\xe0\x41\x02\x12\x35\n\x0b\x64\x61ta_crc32c\x18\x03 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x01\"\xe4\x01\n\x10MacVerifyRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(cloudkms.googleapis.com/CryptoKeyVersion\x12\x11\n\x04\x64\x61ta\x18\x02 \x01(\x0c\x42\x03\xe0\x41\x02\x12\x35\n\x0b\x64\x61ta_crc32c\x18\x03 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x01\x12\x10\n\x03mac\x18\x04 \x01(\x0c\x42\x03\xe0\x41\x02\x12\x34\n\nmac_crc32c\x18\x05 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x01\"\x84\x01\n\x1aGenerateRandomBytesRequest\x12\x10\n\x08location\x18\x01 \x01(\t\x12\x14\n\x0clength_bytes\x18\x02 \x01(\x05\x12>\n\x10protection_level\x18\x03 \x01(\x0e\x32$.google.cloud.kms.v1.ProtectionLevel\"\x85\x02\n\x0f\x45ncryptResponse\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x12\n\nciphertext\x18\x02 \x01(\x0c\x12\x36\n\x11\x63iphertext_crc32c\x18\x04 \x01(\x0b\x32\x1b.google.protobuf.Int64Value\x12!\n\x19verified_plaintext_crc32c\x18\x05 \x01(\x08\x12\x35\n-verified_additional_authenticated_data_crc32c\x18\x06 \x01(\x08\x12>\n\x10protection_level\x18\x07 \x01(\x0e\x32$.google.cloud.kms.v1.ProtectionLevel\"\xb1\x01\n\x0f\x44\x65\x63ryptResponse\x12\x11\n\tplaintext\x18\x01 \x01(\x0c\x12\x35\n\x10plaintext_crc32c\x18\x02 \x01(\x0b\x32\x1b.google.protobuf.Int64Value\x12\x14\n\x0cused_primary\x18\x03 \x01(\x08\x12>\n\x10protection_level\x18\x04 \x01(\x0e\x32$.google.cloud.kms.v1.ProtectionLevel\"\xad\x03\n\x12RawEncryptResponse\x12\x12\n\nciphertext\x18\x01 \x01(\x0c\x12\x1d\n\x15initialization_vector\x18\x02 \x01(\x0c\x12\x12\n\ntag_length\x18\x03 \x01(\x05\x12\x36\n\x11\x63iphertext_crc32c\x18\x04 \x01(\x0b\x32\x1b.google.protobuf.Int64Value\x12\x41\n\x1cinitialization_vector_crc32c\x18\x05 \x01(\x0b\x32\x1b.google.protobuf.Int64Value\x12!\n\x19verified_plaintext_crc32c\x18\x06 \x01(\x08\x12\x35\n-verified_additional_authenticated_data_crc32c\x18\x07 \x01(\x08\x12-\n%verified_initialization_vector_crc32c\x18\n \x01(\x08\x12\x0c\n\x04name\x18\x08 \x01(\t\x12>\n\x10protection_level\x18\t \x01(\x0e\x32$.google.cloud.kms.v1.ProtectionLevel\"\xa8\x02\n\x12RawDecryptResponse\x12\x11\n\tplaintext\x18\x01 \x01(\x0c\x12\x35\n\x10plaintext_crc32c\x18\x02 \x01(\x0b\x32\x1b.google.protobuf.Int64Value\x12>\n\x10protection_level\x18\x03 \x01(\x0e\x32$.google.cloud.kms.v1.ProtectionLevel\x12\"\n\x1averified_ciphertext_crc32c\x18\x04 \x01(\x08\x12\x35\n-verified_additional_authenticated_data_crc32c\x18\x05 \x01(\x08\x12-\n%verified_initialization_vector_crc32c\x18\x06 \x01(\x08\"\xee\x01\n\x16\x41symmetricSignResponse\x12\x11\n\tsignature\x18\x01 \x01(\x0c\x12\x35\n\x10signature_crc32c\x18\x02 \x01(\x0b\x32\x1b.google.protobuf.Int64Value\x12\x1e\n\x16verified_digest_crc32c\x18\x03 \x01(\x08\x12\x0c\n\x04name\x18\x04 \x01(\t\x12\x1c\n\x14verified_data_crc32c\x18\x05 \x01(\x08\x12>\n\x10protection_level\x18\x06 \x01(\x0e\x32$.google.cloud.kms.v1.ProtectionLevel\"\xc9\x01\n\x19\x41symmetricDecryptResponse\x12\x11\n\tplaintext\x18\x01 \x01(\x0c\x12\x35\n\x10plaintext_crc32c\x18\x02 \x01(\x0b\x32\x1b.google.protobuf.Int64Value\x12\"\n\x1averified_ciphertext_crc32c\x18\x03 \x01(\x08\x12>\n\x10protection_level\x18\x04 \x01(\x0e\x32$.google.cloud.kms.v1.ProtectionLevel\"\xbb\x01\n\x0fMacSignResponse\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0b\n\x03mac\x18\x02 \x01(\x0c\x12/\n\nmac_crc32c\x18\x03 \x01(\x0b\x32\x1b.google.protobuf.Int64Value\x12\x1c\n\x14verified_data_crc32c\x18\x04 \x01(\x08\x12>\n\x10protection_level\x18\x05 \x01(\x0e\x32$.google.cloud.kms.v1.ProtectionLevel\"\xd1\x01\n\x11MacVerifyResponse\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0f\n\x07success\x18\x02 \x01(\x08\x12\x1c\n\x14verified_data_crc32c\x18\x03 \x01(\x08\x12\x1b\n\x13verified_mac_crc32c\x18\x04 \x01(\x08\x12\"\n\x1averified_success_integrity\x18\x05 \x01(\x08\x12>\n\x10protection_level\x18\x06 \x01(\x0e\x32$.google.cloud.kms.v1.ProtectionLevel\"]\n\x1bGenerateRandomBytesResponse\x12\x0c\n\x04\x64\x61ta\x18\x01 \x01(\x0c\x12\x30\n\x0b\x64\x61ta_crc32c\x18\x03 \x01(\x0b\x32\x1b.google.protobuf.Int64Value\"H\n\x06\x44igest\x12\x10\n\x06sha256\x18\x01 \x01(\x0cH\x00\x12\x10\n\x06sha384\x18\x02 \x01(\x0cH\x00\x12\x10\n\x06sha512\x18\x03 \x01(\x0cH\x00\x42\x08\n\x06\x64igest\"@\n\x10LocationMetadata\x12\x15\n\rhsm_available\x18\x01 \x01(\x08\x12\x15\n\rekm_available\x18\x02 \x01(\x08\x32\x90.\n\x14KeyManagementService\x12\xa2\x01\n\x0cListKeyRings\x12(.google.cloud.kms.v1.ListKeyRingsRequest\x1a).google.cloud.kms.v1.ListKeyRingsResponse\"=\xda\x41\x06parent\x82\xd3\xe4\x93\x02.\x12,/v1/{parent=projects/*/locations/*}/keyRings\x12\xb5\x01\n\x0eListCryptoKeys\x12*.google.cloud.kms.v1.ListCryptoKeysRequest\x1a+.google.cloud.kms.v1.ListCryptoKeysResponse\"J\xda\x41\x06parent\x82\xd3\xe4\x93\x02;\x12\x39/v1/{parent=projects/*/locations/*/keyRings/*}/cryptoKeys\x12\xde\x01\n\x15ListCryptoKeyVersions\x12\x31.google.cloud.kms.v1.ListCryptoKeyVersionsRequest\x1a\x32.google.cloud.kms.v1.ListCryptoKeyVersionsResponse\"^\xda\x41\x06parent\x82\xd3\xe4\x93\x02O\x12M/v1/{parent=projects/*/locations/*/keyRings/*/cryptoKeys/*}/cryptoKeyVersions\x12\xb5\x01\n\x0eListImportJobs\x12*.google.cloud.kms.v1.ListImportJobsRequest\x1a+.google.cloud.kms.v1.ListImportJobsResponse\"J\xda\x41\x06parent\x82\xd3\xe4\x93\x02;\x12\x39/v1/{parent=projects/*/locations/*/keyRings/*}/importJobs\x12\x8f\x01\n\nGetKeyRing\x12&.google.cloud.kms.v1.GetKeyRingRequest\x1a\x1c.google.cloud.kms.v1.KeyRing\";\xda\x41\x04name\x82\xd3\xe4\x93\x02.\x12,/v1/{name=projects/*/locations/*/keyRings/*}\x12\xa2\x01\n\x0cGetCryptoKey\x12(.google.cloud.kms.v1.GetCryptoKeyRequest\x1a\x1e.google.cloud.kms.v1.CryptoKey\"H\xda\x41\x04name\x82\xd3\xe4\x93\x02;\x12\x39/v1/{name=projects/*/locations/*/keyRings/*/cryptoKeys/*}\x12\xcb\x01\n\x13GetCryptoKeyVersion\x12/.google.cloud.kms.v1.GetCryptoKeyVersionRequest\x1a%.google.cloud.kms.v1.CryptoKeyVersion\"\\\xda\x41\x04name\x82\xd3\xe4\x93\x02O\x12M/v1/{name=projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*}\x12\xc0\x01\n\x0cGetPublicKey\x12(.google.cloud.kms.v1.GetPublicKeyRequest\x1a\x1e.google.cloud.kms.v1.PublicKey\"f\xda\x41\x04name\x82\xd3\xe4\x93\x02Y\x12W/v1/{name=projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*}/publicKey\x12\xa2\x01\n\x0cGetImportJob\x12(.google.cloud.kms.v1.GetImportJobRequest\x1a\x1e.google.cloud.kms.v1.ImportJob\"H\xda\x41\x04name\x82\xd3\xe4\x93\x02;\x12\x39/v1/{name=projects/*/locations/*/keyRings/*/importJobs/*}\x12\xb6\x01\n\rCreateKeyRing\x12).google.cloud.kms.v1.CreateKeyRingRequest\x1a\x1c.google.cloud.kms.v1.KeyRing\"\\\xda\x41\x1bparent,key_ring_id,key_ring\x82\xd3\xe4\x93\x02\x38\",/v1/{parent=projects/*/locations/*}/keyRings:\x08key_ring\x12\xcf\x01\n\x0f\x43reateCryptoKey\x12+.google.cloud.kms.v1.CreateCryptoKeyRequest\x1a\x1e.google.cloud.kms.v1.CryptoKey\"o\xda\x41\x1fparent,crypto_key_id,crypto_key\x82\xd3\xe4\x93\x02G\"9/v1/{parent=projects/*/locations/*/keyRings/*}/cryptoKeys:\ncrypto_key\x12\xfb\x01\n\x16\x43reateCryptoKeyVersion\x12\x32.google.cloud.kms.v1.CreateCryptoKeyVersionRequest\x1a%.google.cloud.kms.v1.CryptoKeyVersion\"\x85\x01\xda\x41\x19parent,crypto_key_version\x82\xd3\xe4\x93\x02\x63\"M/v1/{parent=projects/*/locations/*/keyRings/*/cryptoKeys/*}/cryptoKeyVersions:\x12\x63rypto_key_version\x12\xd4\x01\n\x16ImportCryptoKeyVersion\x12\x32.google.cloud.kms.v1.ImportCryptoKeyVersionRequest\x1a%.google.cloud.kms.v1.CryptoKeyVersion\"_\x82\xd3\xe4\x93\x02Y\"T/v1/{parent=projects/*/locations/*/keyRings/*/cryptoKeys/*}/cryptoKeyVersions:import:\x01*\x12\xcf\x01\n\x0f\x43reateImportJob\x12+.google.cloud.kms.v1.CreateImportJobRequest\x1a\x1e.google.cloud.kms.v1.ImportJob\"o\xda\x41\x1fparent,import_job_id,import_job\x82\xd3\xe4\x93\x02G\"9/v1/{parent=projects/*/locations/*/keyRings/*}/importJobs:\nimport_job\x12\xd1\x01\n\x0fUpdateCryptoKey\x12+.google.cloud.kms.v1.UpdateCryptoKeyRequest\x1a\x1e.google.cloud.kms.v1.CryptoKey\"q\xda\x41\x16\x63rypto_key,update_mask\x82\xd3\xe4\x93\x02R2D/v1/{crypto_key.name=projects/*/locations/*/keyRings/*/cryptoKeys/*}:\ncrypto_key\x12\x93\x02\n\x16UpdateCryptoKeyVersion\x12\x32.google.cloud.kms.v1.UpdateCryptoKeyVersionRequest\x1a%.google.cloud.kms.v1.CryptoKeyVersion\"\x9d\x01\xda\x41\x1e\x63rypto_key_version,update_mask\x82\xd3\xe4\x93\x02v2`/v1/{crypto_key_version.name=projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*}:\x12\x63rypto_key_version\x12\xf2\x01\n\x1dUpdateCryptoKeyPrimaryVersion\x12\x39.google.cloud.kms.v1.UpdateCryptoKeyPrimaryVersionRequest\x1a\x1e.google.cloud.kms.v1.CryptoKey\"v\xda\x41\x1aname,crypto_key_version_id\x82\xd3\xe4\x93\x02S\"N/v1/{name=projects/*/locations/*/keyRings/*/cryptoKeys/*}:updatePrimaryVersion:\x01*\x12\xde\x01\n\x17\x44\x65stroyCryptoKeyVersion\x12\x33.google.cloud.kms.v1.DestroyCryptoKeyVersionRequest\x1a%.google.cloud.kms.v1.CryptoKeyVersion\"g\xda\x41\x04name\x82\xd3\xe4\x93\x02Z\"U/v1/{name=projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*}:destroy:\x01*\x12\xde\x01\n\x17RestoreCryptoKeyVersion\x12\x33.google.cloud.kms.v1.RestoreCryptoKeyVersionRequest\x1a%.google.cloud.kms.v1.CryptoKeyVersion\"g\xda\x41\x04name\x82\xd3\xe4\x93\x02Z\"U/v1/{name=projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*}:restore:\x01*\x12\xb4\x01\n\x07\x45ncrypt\x12#.google.cloud.kms.v1.EncryptRequest\x1a$.google.cloud.kms.v1.EncryptResponse\"^\xda\x41\x0ename,plaintext\x82\xd3\xe4\x93\x02G\"B/v1/{name=projects/*/locations/*/keyRings/*/cryptoKeys/**}:encrypt:\x01*\x12\xb4\x01\n\x07\x44\x65\x63rypt\x12#.google.cloud.kms.v1.DecryptRequest\x1a$.google.cloud.kms.v1.DecryptResponse\"^\xda\x41\x0fname,ciphertext\x82\xd3\xe4\x93\x02\x46\"A/v1/{name=projects/*/locations/*/keyRings/*/cryptoKeys/*}:decrypt:\x01*\x12\xc2\x01\n\nRawEncrypt\x12&.google.cloud.kms.v1.RawEncryptRequest\x1a\'.google.cloud.kms.v1.RawEncryptResponse\"c\x82\xd3\xe4\x93\x02]\"X/v1/{name=projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*}:rawEncrypt:\x01*\x12\xc2\x01\n\nRawDecrypt\x12&.google.cloud.kms.v1.RawDecryptRequest\x1a\'.google.cloud.kms.v1.RawDecryptResponse\"c\x82\xd3\xe4\x93\x02]\"X/v1/{name=projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*}:rawDecrypt:\x01*\x12\xe0\x01\n\x0e\x41symmetricSign\x12*.google.cloud.kms.v1.AsymmetricSignRequest\x1a+.google.cloud.kms.v1.AsymmetricSignResponse\"u\xda\x41\x0bname,digest\x82\xd3\xe4\x93\x02\x61\"\\/v1/{name=projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*}:asymmetricSign:\x01*\x12\xf0\x01\n\x11\x41symmetricDecrypt\x12-.google.cloud.kms.v1.AsymmetricDecryptRequest\x1a..google.cloud.kms.v1.AsymmetricDecryptResponse\"|\xda\x41\x0fname,ciphertext\x82\xd3\xe4\x93\x02\x64\"_/v1/{name=projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*}:asymmetricDecrypt:\x01*\x12\xc2\x01\n\x07MacSign\x12#.google.cloud.kms.v1.MacSignRequest\x1a$.google.cloud.kms.v1.MacSignResponse\"l\xda\x41\tname,data\x82\xd3\xe4\x93\x02Z\"U/v1/{name=projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*}:macSign:\x01*\x12\xce\x01\n\tMacVerify\x12%.google.cloud.kms.v1.MacVerifyRequest\x1a&.google.cloud.kms.v1.MacVerifyResponse\"r\xda\x41\rname,data,mac\x82\xd3\xe4\x93\x02\\\"W/v1/{name=projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*}:macVerify:\x01*\x12\xe7\x01\n\x13GenerateRandomBytes\x12/.google.cloud.kms.v1.GenerateRandomBytesRequest\x1a\x30.google.cloud.kms.v1.GenerateRandomBytesResponse\"m\xda\x41&location,length_bytes,protection_level\x82\xd3\xe4\x93\x02>\"9/v1/{location=projects/*/locations/*}:generateRandomBytes:\x01*\x1at\xca\x41\x17\x63loudkms.googleapis.com\xd2\x41Whttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/cloudkmsB|\n\x17\x63om.google.cloud.kms.v1B\x08KmsProtoP\x01Z)cloud.google.com/go/kms/apiv1/kmspb;kmspb\xaa\x02\x13Google.Cloud.Kms.V1\xca\x02\x13Google\\Cloud\\Kms\\V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.cloud.kms.v1.KeyRing", "google/cloud/kms/v1/resources.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.protobuf.Int64Value", "google/protobuf/wrappers.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Kms
      module V1
        ListKeyRingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListKeyRingsRequest").msgclass
        ListCryptoKeysRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListCryptoKeysRequest").msgclass
        ListCryptoKeyVersionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListCryptoKeyVersionsRequest").msgclass
        ListImportJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListImportJobsRequest").msgclass
        ListKeyRingsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListKeyRingsResponse").msgclass
        ListCryptoKeysResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListCryptoKeysResponse").msgclass
        ListCryptoKeyVersionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListCryptoKeyVersionsResponse").msgclass
        ListImportJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListImportJobsResponse").msgclass
        GetKeyRingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.GetKeyRingRequest").msgclass
        GetCryptoKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.GetCryptoKeyRequest").msgclass
        GetCryptoKeyVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.GetCryptoKeyVersionRequest").msgclass
        GetPublicKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.GetPublicKeyRequest").msgclass
        GetImportJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.GetImportJobRequest").msgclass
        CreateKeyRingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CreateKeyRingRequest").msgclass
        CreateCryptoKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CreateCryptoKeyRequest").msgclass
        CreateCryptoKeyVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CreateCryptoKeyVersionRequest").msgclass
        ImportCryptoKeyVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ImportCryptoKeyVersionRequest").msgclass
        CreateImportJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CreateImportJobRequest").msgclass
        UpdateCryptoKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.UpdateCryptoKeyRequest").msgclass
        UpdateCryptoKeyVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.UpdateCryptoKeyVersionRequest").msgclass
        UpdateCryptoKeyPrimaryVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.UpdateCryptoKeyPrimaryVersionRequest").msgclass
        DestroyCryptoKeyVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.DestroyCryptoKeyVersionRequest").msgclass
        RestoreCryptoKeyVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.RestoreCryptoKeyVersionRequest").msgclass
        EncryptRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.EncryptRequest").msgclass
        DecryptRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.DecryptRequest").msgclass
        RawEncryptRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.RawEncryptRequest").msgclass
        RawDecryptRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.RawDecryptRequest").msgclass
        AsymmetricSignRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.AsymmetricSignRequest").msgclass
        AsymmetricDecryptRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.AsymmetricDecryptRequest").msgclass
        MacSignRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.MacSignRequest").msgclass
        MacVerifyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.MacVerifyRequest").msgclass
        GenerateRandomBytesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.GenerateRandomBytesRequest").msgclass
        EncryptResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.EncryptResponse").msgclass
        DecryptResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.DecryptResponse").msgclass
        RawEncryptResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.RawEncryptResponse").msgclass
        RawDecryptResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.RawDecryptResponse").msgclass
        AsymmetricSignResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.AsymmetricSignResponse").msgclass
        AsymmetricDecryptResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.AsymmetricDecryptResponse").msgclass
        MacSignResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.MacSignResponse").msgclass
        MacVerifyResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.MacVerifyResponse").msgclass
        GenerateRandomBytesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.GenerateRandomBytesResponse").msgclass
        Digest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.Digest").msgclass
        LocationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.LocationMetadata").msgclass
      end
    end
  end
end
