//
//  Generated code. Do not modify.
//  source: warp.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use remoteMachineInfoDescriptor instead')
const RemoteMachineInfo$json = {
  '1': 'RemoteMachineInfo',
  '2': [
    {'1': 'display_name', '3': 1, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'user_name', '3': 2, '4': 1, '5': 9, '10': 'userName'},
  ],
};

/// Descriptor for `RemoteMachineInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List remoteMachineInfoDescriptor = $convert.base64Decode(
    'ChFSZW1vdGVNYWNoaW5lSW5mbxIhCgxkaXNwbGF5X25hbWUYASABKAlSC2Rpc3BsYXlOYW1lEh'
    'sKCXVzZXJfbmFtZRgCIAEoCVIIdXNlck5hbWU=');

@$core.Deprecated('Use remoteMachineAvatarDescriptor instead')
const RemoteMachineAvatar$json = {
  '1': 'RemoteMachineAvatar',
  '2': [
    {'1': 'avatar_chunk', '3': 1, '4': 1, '5': 12, '10': 'avatarChunk'},
  ],
};

/// Descriptor for `RemoteMachineAvatar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List remoteMachineAvatarDescriptor = $convert.base64Decode(
    'ChNSZW1vdGVNYWNoaW5lQXZhdGFyEiEKDGF2YXRhcl9jaHVuaxgBIAEoDFILYXZhdGFyQ2h1bm'
    's=');

@$core.Deprecated('Use lookupNameDescriptor instead')
const LookupName$json = {
  '1': 'LookupName',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'readable_name', '3': 2, '4': 1, '5': 9, '10': 'readableName'},
  ],
};

/// Descriptor for `LookupName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lookupNameDescriptor = $convert.base64Decode(
    'CgpMb29rdXBOYW1lEg4KAmlkGAEgASgJUgJpZBIjCg1yZWFkYWJsZV9uYW1lGAIgASgJUgxyZW'
    'FkYWJsZU5hbWU=');

@$core.Deprecated('Use haveDuplexDescriptor instead')
const HaveDuplex$json = {
  '1': 'HaveDuplex',
  '2': [
    {'1': 'response', '3': 2, '4': 1, '5': 8, '10': 'response'},
  ],
};

/// Descriptor for `HaveDuplex`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List haveDuplexDescriptor = $convert
    .base64Decode('CgpIYXZlRHVwbGV4EhoKCHJlc3BvbnNlGAIgASgIUghyZXNwb25zZQ==');

@$core.Deprecated('Use voidTypeDescriptor instead')
const VoidType$json = {
  '1': 'VoidType',
  '2': [
    {'1': 'dummy', '3': 1, '4': 1, '5': 5, '10': 'dummy'},
  ],
};

/// Descriptor for `VoidType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List voidTypeDescriptor =
    $convert.base64Decode('CghWb2lkVHlwZRIUCgVkdW1teRgBIAEoBVIFZHVtbXk=');

@$core.Deprecated('Use opInfoDescriptor instead')
const OpInfo$json = {
  '1': 'OpInfo',
  '2': [
    {'1': 'ident', '3': 1, '4': 1, '5': 9, '10': 'ident'},
    {'1': 'timestamp', '3': 2, '4': 1, '5': 4, '10': 'timestamp'},
    {'1': 'readable_name', '3': 3, '4': 1, '5': 9, '10': 'readableName'},
    {'1': 'use_compression', '3': 4, '4': 1, '5': 8, '10': 'useCompression'},
  ],
};

/// Descriptor for `OpInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List opInfoDescriptor = $convert.base64Decode(
    'CgZPcEluZm8SFAoFaWRlbnQYASABKAlSBWlkZW50EhwKCXRpbWVzdGFtcBgCIAEoBFIJdGltZX'
    'N0YW1wEiMKDXJlYWRhYmxlX25hbWUYAyABKAlSDHJlYWRhYmxlTmFtZRInCg91c2VfY29tcHJl'
    'c3Npb24YBCABKAhSDnVzZUNvbXByZXNzaW9u');

@$core.Deprecated('Use stopInfoDescriptor instead')
const StopInfo$json = {
  '1': 'StopInfo',
  '2': [
    {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.OpInfo', '10': 'info'},
    {'1': 'error', '3': 2, '4': 1, '5': 8, '10': 'error'},
  ],
};

/// Descriptor for `StopInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopInfoDescriptor = $convert.base64Decode(
    'CghTdG9wSW5mbxIbCgRpbmZvGAEgASgLMgcuT3BJbmZvUgRpbmZvEhQKBWVycm9yGAIgASgIUg'
    'VlcnJvcg==');

@$core.Deprecated('Use transferOpRequestDescriptor instead')
const TransferOpRequest$json = {
  '1': 'TransferOpRequest',
  '2': [
    {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.OpInfo', '10': 'info'},
    {'1': 'sender_name', '3': 2, '4': 1, '5': 9, '10': 'senderName'},
    {'1': 'receiver_name', '3': 3, '4': 1, '5': 9, '10': 'receiverName'},
    {'1': 'receiver', '3': 4, '4': 1, '5': 9, '10': 'receiver'},
    {'1': 'size', '3': 5, '4': 1, '5': 4, '10': 'size'},
    {'1': 'count', '3': 6, '4': 1, '5': 4, '10': 'count'},
    {'1': 'name_if_single', '3': 7, '4': 1, '5': 9, '10': 'nameIfSingle'},
    {'1': 'mime_if_single', '3': 8, '4': 1, '5': 9, '10': 'mimeIfSingle'},
    {'1': 'top_dir_basenames', '3': 9, '4': 3, '5': 9, '10': 'topDirBasenames'},
  ],
};

/// Descriptor for `TransferOpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferOpRequestDescriptor = $convert.base64Decode(
    'ChFUcmFuc2Zlck9wUmVxdWVzdBIbCgRpbmZvGAEgASgLMgcuT3BJbmZvUgRpbmZvEh8KC3Nlbm'
    'Rlcl9uYW1lGAIgASgJUgpzZW5kZXJOYW1lEiMKDXJlY2VpdmVyX25hbWUYAyABKAlSDHJlY2Vp'
    'dmVyTmFtZRIaCghyZWNlaXZlchgEIAEoCVIIcmVjZWl2ZXISEgoEc2l6ZRgFIAEoBFIEc2l6ZR'
    'IUCgVjb3VudBgGIAEoBFIFY291bnQSJAoObmFtZV9pZl9zaW5nbGUYByABKAlSDG5hbWVJZlNp'
    'bmdsZRIkCg5taW1lX2lmX3NpbmdsZRgIIAEoCVIMbWltZUlmU2luZ2xlEioKEXRvcF9kaXJfYm'
    'FzZW5hbWVzGAkgAygJUg90b3BEaXJCYXNlbmFtZXM=');

@$core.Deprecated('Use fileChunkDescriptor instead')
const FileChunk$json = {
  '1': 'FileChunk',
  '2': [
    {'1': 'relative_path', '3': 1, '4': 1, '5': 9, '10': 'relativePath'},
    {'1': 'file_type', '3': 2, '4': 1, '5': 5, '10': 'fileType'},
    {'1': 'symlink_target', '3': 3, '4': 1, '5': 9, '10': 'symlinkTarget'},
    {'1': 'chunk', '3': 4, '4': 1, '5': 12, '10': 'chunk'},
    {'1': 'file_mode', '3': 5, '4': 1, '5': 13, '10': 'fileMode'},
    {'1': 'time', '3': 6, '4': 1, '5': 11, '6': '.FileTime', '10': 'time'},
  ],
};

/// Descriptor for `FileChunk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileChunkDescriptor = $convert.base64Decode(
    'CglGaWxlQ2h1bmsSIwoNcmVsYXRpdmVfcGF0aBgBIAEoCVIMcmVsYXRpdmVQYXRoEhsKCWZpbG'
    'VfdHlwZRgCIAEoBVIIZmlsZVR5cGUSJQoOc3ltbGlua190YXJnZXQYAyABKAlSDXN5bWxpbmtU'
    'YXJnZXQSFAoFY2h1bmsYBCABKAxSBWNodW5rEhsKCWZpbGVfbW9kZRgFIAEoDVIIZmlsZU1vZG'
    'USHQoEdGltZRgGIAEoCzIJLkZpbGVUaW1lUgR0aW1l');

@$core.Deprecated('Use fileTimeDescriptor instead')
const FileTime$json = {
  '1': 'FileTime',
  '2': [
    {'1': 'mtime', '3': 1, '4': 1, '5': 4, '10': 'mtime'},
    {'1': 'mtime_usec', '3': 2, '4': 1, '5': 13, '10': 'mtimeUsec'},
  ],
};

/// Descriptor for `FileTime`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileTimeDescriptor = $convert.base64Decode(
    'CghGaWxlVGltZRIUCgVtdGltZRgBIAEoBFIFbXRpbWUSHQoKbXRpbWVfdXNlYxgCIAEoDVIJbX'
    'RpbWVVc2Vj');

@$core.Deprecated('Use regRequestDescriptor instead')
const RegRequest$json = {
  '1': 'RegRequest',
  '2': [
    {'1': 'ip', '3': 1, '4': 1, '5': 9, '10': 'ip'},
    {'1': 'hostname', '3': 2, '4': 1, '5': 9, '10': 'hostname'},
  ],
};

/// Descriptor for `RegRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regRequestDescriptor = $convert.base64Decode(
    'CgpSZWdSZXF1ZXN0Eg4KAmlwGAEgASgJUgJpcBIaCghob3N0bmFtZRgCIAEoCVIIaG9zdG5hbW'
    'U=');

@$core.Deprecated('Use regResponseDescriptor instead')
const RegResponse$json = {
  '1': 'RegResponse',
  '2': [
    {'1': 'locked_cert', '3': 1, '4': 1, '5': 9, '10': 'lockedCert'},
  ],
};

/// Descriptor for `RegResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regResponseDescriptor = $convert.base64Decode(
    'CgtSZWdSZXNwb25zZRIfCgtsb2NrZWRfY2VydBgBIAEoCVIKbG9ja2VkQ2VydA==');

@$core.Deprecated('Use serviceRegistrationDescriptor instead')
const ServiceRegistration$json = {
  '1': 'ServiceRegistration',
  '2': [
    {'1': 'service_id', '3': 1, '4': 1, '5': 9, '10': 'serviceId'},
    {'1': 'ip', '3': 2, '4': 1, '5': 9, '10': 'ip'},
    {'1': 'port', '3': 3, '4': 1, '5': 13, '10': 'port'},
    {'1': 'hostname', '3': 4, '4': 1, '5': 9, '10': 'hostname'},
    {'1': 'api_version', '3': 5, '4': 1, '5': 13, '10': 'apiVersion'},
    {'1': 'auth_port', '3': 6, '4': 1, '5': 13, '10': 'authPort'},
  ],
};

/// Descriptor for `ServiceRegistration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceRegistrationDescriptor = $convert.base64Decode(
    'ChNTZXJ2aWNlUmVnaXN0cmF0aW9uEh0KCnNlcnZpY2VfaWQYASABKAlSCXNlcnZpY2VJZBIOCg'
    'JpcBgCIAEoCVICaXASEgoEcG9ydBgDIAEoDVIEcG9ydBIaCghob3N0bmFtZRgEIAEoCVIIaG9z'
    'dG5hbWUSHwoLYXBpX3ZlcnNpb24YBSABKA1SCmFwaVZlcnNpb24SGwoJYXV0aF9wb3J0GAYgAS'
    'gNUghhdXRoUG9ydA==');
