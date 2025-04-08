//
//  Generated code. Do not modify.
//  source: warp.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RemoteMachineInfo extends $pb.GeneratedMessage {
  factory RemoteMachineInfo({
    $core.String? displayName,
    $core.String? userName,
  }) {
    final $result = create();
    if (displayName != null) {
      $result.displayName = displayName;
    }
    if (userName != null) {
      $result.userName = userName;
    }
    return $result;
  }
  RemoteMachineInfo._() : super();
  factory RemoteMachineInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RemoteMachineInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemoteMachineInfo',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'displayName')
    ..aOS(2, _omitFieldNames ? '' : 'userName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RemoteMachineInfo clone() => RemoteMachineInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RemoteMachineInfo copyWith(void Function(RemoteMachineInfo) updates) =>
      super.copyWith((message) => updates(message as RemoteMachineInfo))
          as RemoteMachineInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoteMachineInfo create() => RemoteMachineInfo._();
  RemoteMachineInfo createEmptyInstance() => create();
  static $pb.PbList<RemoteMachineInfo> createRepeated() =>
      $pb.PbList<RemoteMachineInfo>();
  @$core.pragma('dart2js:noInline')
  static RemoteMachineInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoteMachineInfo>(create);
  static RemoteMachineInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get displayName => $_getSZ(0);
  @$pb.TagNumber(1)
  set displayName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDisplayName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisplayName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get userName => $_getSZ(1);
  @$pb.TagNumber(2)
  set userName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUserName() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserName() => $_clearField(2);
}

class RemoteMachineAvatar extends $pb.GeneratedMessage {
  factory RemoteMachineAvatar({
    $core.List<$core.int>? avatarChunk,
  }) {
    final $result = create();
    if (avatarChunk != null) {
      $result.avatarChunk = avatarChunk;
    }
    return $result;
  }
  RemoteMachineAvatar._() : super();
  factory RemoteMachineAvatar.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RemoteMachineAvatar.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemoteMachineAvatar',
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'avatarChunk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RemoteMachineAvatar clone() => RemoteMachineAvatar()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RemoteMachineAvatar copyWith(void Function(RemoteMachineAvatar) updates) =>
      super.copyWith((message) => updates(message as RemoteMachineAvatar))
          as RemoteMachineAvatar;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoteMachineAvatar create() => RemoteMachineAvatar._();
  RemoteMachineAvatar createEmptyInstance() => create();
  static $pb.PbList<RemoteMachineAvatar> createRepeated() =>
      $pb.PbList<RemoteMachineAvatar>();
  @$core.pragma('dart2js:noInline')
  static RemoteMachineAvatar getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoteMachineAvatar>(create);
  static RemoteMachineAvatar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get avatarChunk => $_getN(0);
  @$pb.TagNumber(1)
  set avatarChunk($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAvatarChunk() => $_has(0);
  @$pb.TagNumber(1)
  void clearAvatarChunk() => $_clearField(1);
}

class LookupName extends $pb.GeneratedMessage {
  factory LookupName({
    $core.String? id,
    $core.String? readableName,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (readableName != null) {
      $result.readableName = readableName;
    }
    return $result;
  }
  LookupName._() : super();
  factory LookupName.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LookupName.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LookupName',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'readableName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LookupName clone() => LookupName()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LookupName copyWith(void Function(LookupName) updates) =>
      super.copyWith((message) => updates(message as LookupName)) as LookupName;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LookupName create() => LookupName._();
  LookupName createEmptyInstance() => create();
  static $pb.PbList<LookupName> createRepeated() => $pb.PbList<LookupName>();
  @$core.pragma('dart2js:noInline')
  static LookupName getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LookupName>(create);
  static LookupName? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get readableName => $_getSZ(1);
  @$pb.TagNumber(2)
  set readableName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasReadableName() => $_has(1);
  @$pb.TagNumber(2)
  void clearReadableName() => $_clearField(2);
}

class HaveDuplex extends $pb.GeneratedMessage {
  factory HaveDuplex({
    $core.bool? response,
  }) {
    final $result = create();
    if (response != null) {
      $result.response = response;
    }
    return $result;
  }
  HaveDuplex._() : super();
  factory HaveDuplex.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HaveDuplex.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HaveDuplex',
      createEmptyInstance: create)
    ..aOB(2, _omitFieldNames ? '' : 'response')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  HaveDuplex clone() => HaveDuplex()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  HaveDuplex copyWith(void Function(HaveDuplex) updates) =>
      super.copyWith((message) => updates(message as HaveDuplex)) as HaveDuplex;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HaveDuplex create() => HaveDuplex._();
  HaveDuplex createEmptyInstance() => create();
  static $pb.PbList<HaveDuplex> createRepeated() => $pb.PbList<HaveDuplex>();
  @$core.pragma('dart2js:noInline')
  static HaveDuplex getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HaveDuplex>(create);
  static HaveDuplex? _defaultInstance;

  @$pb.TagNumber(2)
  $core.bool get response => $_getBF(0);
  @$pb.TagNumber(2)
  set response($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(2)
  void clearResponse() => $_clearField(2);
}

class VoidType extends $pb.GeneratedMessage {
  factory VoidType({
    $core.int? dummy,
  }) {
    final $result = create();
    if (dummy != null) {
      $result.dummy = dummy;
    }
    return $result;
  }
  VoidType._() : super();
  factory VoidType.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VoidType.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VoidType',
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'dummy', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  VoidType clone() => VoidType()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  VoidType copyWith(void Function(VoidType) updates) =>
      super.copyWith((message) => updates(message as VoidType)) as VoidType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VoidType create() => VoidType._();
  VoidType createEmptyInstance() => create();
  static $pb.PbList<VoidType> createRepeated() => $pb.PbList<VoidType>();
  @$core.pragma('dart2js:noInline')
  static VoidType getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VoidType>(create);
  static VoidType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get dummy => $_getIZ(0);
  @$pb.TagNumber(1)
  set dummy($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDummy() => $_has(0);
  @$pb.TagNumber(1)
  void clearDummy() => $_clearField(1);
}

class OpInfo extends $pb.GeneratedMessage {
  factory OpInfo({
    $core.String? ident,
    $fixnum.Int64? timestamp,
    $core.String? readableName,
    $core.bool? useCompression,
  }) {
    final $result = create();
    if (ident != null) {
      $result.ident = ident;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (readableName != null) {
      $result.readableName = readableName;
    }
    if (useCompression != null) {
      $result.useCompression = useCompression;
    }
    return $result;
  }
  OpInfo._() : super();
  factory OpInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OpInfo',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ident')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'timestamp', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, _omitFieldNames ? '' : 'readableName')
    ..aOB(4, _omitFieldNames ? '' : 'useCompression')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpInfo clone() => OpInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpInfo copyWith(void Function(OpInfo) updates) =>
      super.copyWith((message) => updates(message as OpInfo)) as OpInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpInfo create() => OpInfo._();
  OpInfo createEmptyInstance() => create();
  static $pb.PbList<OpInfo> createRepeated() => $pb.PbList<OpInfo>();
  @$core.pragma('dart2js:noInline')
  static OpInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpInfo>(create);
  static OpInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ident => $_getSZ(0);
  @$pb.TagNumber(1)
  set ident($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIdent() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdent() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestamp => $_getI64(1);
  @$pb.TagNumber(2)
  set timestamp($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestamp() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get readableName => $_getSZ(2);
  @$pb.TagNumber(3)
  set readableName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasReadableName() => $_has(2);
  @$pb.TagNumber(3)
  void clearReadableName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get useCompression => $_getBF(3);
  @$pb.TagNumber(4)
  set useCompression($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUseCompression() => $_has(3);
  @$pb.TagNumber(4)
  void clearUseCompression() => $_clearField(4);
}

class StopInfo extends $pb.GeneratedMessage {
  factory StopInfo({
    OpInfo? info,
    $core.bool? error,
  }) {
    final $result = create();
    if (info != null) {
      $result.info = info;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  StopInfo._() : super();
  factory StopInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StopInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StopInfo',
      createEmptyInstance: create)
    ..aOM<OpInfo>(1, _omitFieldNames ? '' : 'info', subBuilder: OpInfo.create)
    ..aOB(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StopInfo clone() => StopInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StopInfo copyWith(void Function(StopInfo) updates) =>
      super.copyWith((message) => updates(message as StopInfo)) as StopInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StopInfo create() => StopInfo._();
  StopInfo createEmptyInstance() => create();
  static $pb.PbList<StopInfo> createRepeated() => $pb.PbList<StopInfo>();
  @$core.pragma('dart2js:noInline')
  static StopInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StopInfo>(create);
  static StopInfo? _defaultInstance;

  @$pb.TagNumber(1)
  OpInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(OpInfo v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  OpInfo ensureInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get error => $_getBF(1);
  @$pb.TagNumber(2)
  set error($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
}

class TransferOpRequest extends $pb.GeneratedMessage {
  factory TransferOpRequest({
    OpInfo? info,
    $core.String? senderName,
    $core.String? receiverName,
    $core.String? receiver,
    $fixnum.Int64? size,
    $fixnum.Int64? count,
    $core.String? nameIfSingle,
    $core.String? mimeIfSingle,
    $core.Iterable<$core.String>? topDirBasenames,
  }) {
    final $result = create();
    if (info != null) {
      $result.info = info;
    }
    if (senderName != null) {
      $result.senderName = senderName;
    }
    if (receiverName != null) {
      $result.receiverName = receiverName;
    }
    if (receiver != null) {
      $result.receiver = receiver;
    }
    if (size != null) {
      $result.size = size;
    }
    if (count != null) {
      $result.count = count;
    }
    if (nameIfSingle != null) {
      $result.nameIfSingle = nameIfSingle;
    }
    if (mimeIfSingle != null) {
      $result.mimeIfSingle = mimeIfSingle;
    }
    if (topDirBasenames != null) {
      $result.topDirBasenames.addAll(topDirBasenames);
    }
    return $result;
  }
  TransferOpRequest._() : super();
  factory TransferOpRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransferOpRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransferOpRequest',
      createEmptyInstance: create)
    ..aOM<OpInfo>(1, _omitFieldNames ? '' : 'info', subBuilder: OpInfo.create)
    ..aOS(2, _omitFieldNames ? '' : 'senderName')
    ..aOS(3, _omitFieldNames ? '' : 'receiverName')
    ..aOS(4, _omitFieldNames ? '' : 'receiver')
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'size', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'count', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(7, _omitFieldNames ? '' : 'nameIfSingle')
    ..aOS(8, _omitFieldNames ? '' : 'mimeIfSingle')
    ..pPS(9, _omitFieldNames ? '' : 'topDirBasenames')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransferOpRequest clone() => TransferOpRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransferOpRequest copyWith(void Function(TransferOpRequest) updates) =>
      super.copyWith((message) => updates(message as TransferOpRequest))
          as TransferOpRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransferOpRequest create() => TransferOpRequest._();
  TransferOpRequest createEmptyInstance() => create();
  static $pb.PbList<TransferOpRequest> createRepeated() =>
      $pb.PbList<TransferOpRequest>();
  @$core.pragma('dart2js:noInline')
  static TransferOpRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransferOpRequest>(create);
  static TransferOpRequest? _defaultInstance;

  @$pb.TagNumber(1)
  OpInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(OpInfo v) {
    $_setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  OpInfo ensureInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get senderName => $_getSZ(1);
  @$pb.TagNumber(2)
  set senderName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSenderName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSenderName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get receiverName => $_getSZ(2);
  @$pb.TagNumber(3)
  set receiverName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasReceiverName() => $_has(2);
  @$pb.TagNumber(3)
  void clearReceiverName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get receiver => $_getSZ(3);
  @$pb.TagNumber(4)
  set receiver($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasReceiver() => $_has(3);
  @$pb.TagNumber(4)
  void clearReceiver() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get size => $_getI64(4);
  @$pb.TagNumber(5)
  set size($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearSize() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get count => $_getI64(5);
  @$pb.TagNumber(6)
  set count($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearCount() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get nameIfSingle => $_getSZ(6);
  @$pb.TagNumber(7)
  set nameIfSingle($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasNameIfSingle() => $_has(6);
  @$pb.TagNumber(7)
  void clearNameIfSingle() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get mimeIfSingle => $_getSZ(7);
  @$pb.TagNumber(8)
  set mimeIfSingle($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasMimeIfSingle() => $_has(7);
  @$pb.TagNumber(8)
  void clearMimeIfSingle() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<$core.String> get topDirBasenames => $_getList(8);
}

class FileChunk extends $pb.GeneratedMessage {
  factory FileChunk({
    $core.String? relativePath,
    $core.int? fileType,
    $core.String? symlinkTarget,
    $core.List<$core.int>? chunk,
    $core.int? fileMode,
    FileTime? time,
  }) {
    final $result = create();
    if (relativePath != null) {
      $result.relativePath = relativePath;
    }
    if (fileType != null) {
      $result.fileType = fileType;
    }
    if (symlinkTarget != null) {
      $result.symlinkTarget = symlinkTarget;
    }
    if (chunk != null) {
      $result.chunk = chunk;
    }
    if (fileMode != null) {
      $result.fileMode = fileMode;
    }
    if (time != null) {
      $result.time = time;
    }
    return $result;
  }
  FileChunk._() : super();
  factory FileChunk.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FileChunk.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileChunk',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'relativePath')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'fileType', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'symlinkTarget')
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'chunk', $pb.PbFieldType.OY)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'fileMode', $pb.PbFieldType.OU3)
    ..aOM<FileTime>(6, _omitFieldNames ? '' : 'time',
        subBuilder: FileTime.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FileChunk clone() => FileChunk()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FileChunk copyWith(void Function(FileChunk) updates) =>
      super.copyWith((message) => updates(message as FileChunk)) as FileChunk;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileChunk create() => FileChunk._();
  FileChunk createEmptyInstance() => create();
  static $pb.PbList<FileChunk> createRepeated() => $pb.PbList<FileChunk>();
  @$core.pragma('dart2js:noInline')
  static FileChunk getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileChunk>(create);
  static FileChunk? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get relativePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set relativePath($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRelativePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearRelativePath() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get fileType => $_getIZ(1);
  @$pb.TagNumber(2)
  set fileType($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFileType() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get symlinkTarget => $_getSZ(2);
  @$pb.TagNumber(3)
  set symlinkTarget($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSymlinkTarget() => $_has(2);
  @$pb.TagNumber(3)
  void clearSymlinkTarget() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get chunk => $_getN(3);
  @$pb.TagNumber(4)
  set chunk($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasChunk() => $_has(3);
  @$pb.TagNumber(4)
  void clearChunk() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get fileMode => $_getIZ(4);
  @$pb.TagNumber(5)
  set fileMode($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasFileMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearFileMode() => $_clearField(5);

  @$pb.TagNumber(6)
  FileTime get time => $_getN(5);
  @$pb.TagNumber(6)
  set time(FileTime v) {
    $_setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearTime() => $_clearField(6);
  @$pb.TagNumber(6)
  FileTime ensureTime() => $_ensure(5);
}

class FileTime extends $pb.GeneratedMessage {
  factory FileTime({
    $fixnum.Int64? mtime,
    $core.int? mtimeUsec,
  }) {
    final $result = create();
    if (mtime != null) {
      $result.mtime = mtime;
    }
    if (mtimeUsec != null) {
      $result.mtimeUsec = mtimeUsec;
    }
    return $result;
  }
  FileTime._() : super();
  factory FileTime.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FileTime.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileTime',
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'mtime', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'mtimeUsec', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FileTime clone() => FileTime()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FileTime copyWith(void Function(FileTime) updates) =>
      super.copyWith((message) => updates(message as FileTime)) as FileTime;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileTime create() => FileTime._();
  FileTime createEmptyInstance() => create();
  static $pb.PbList<FileTime> createRepeated() => $pb.PbList<FileTime>();
  @$core.pragma('dart2js:noInline')
  static FileTime getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileTime>(create);
  static FileTime? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get mtime => $_getI64(0);
  @$pb.TagNumber(1)
  set mtime($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMtime() => $_has(0);
  @$pb.TagNumber(1)
  void clearMtime() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get mtimeUsec => $_getIZ(1);
  @$pb.TagNumber(2)
  set mtimeUsec($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMtimeUsec() => $_has(1);
  @$pb.TagNumber(2)
  void clearMtimeUsec() => $_clearField(2);
}

class RegRequest extends $pb.GeneratedMessage {
  factory RegRequest({
    $core.String? ip,
    $core.String? hostname,
  }) {
    final $result = create();
    if (ip != null) {
      $result.ip = ip;
    }
    if (hostname != null) {
      $result.hostname = hostname;
    }
    return $result;
  }
  RegRequest._() : super();
  factory RegRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegRequest',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ip')
    ..aOS(2, _omitFieldNames ? '' : 'hostname')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegRequest clone() => RegRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegRequest copyWith(void Function(RegRequest) updates) =>
      super.copyWith((message) => updates(message as RegRequest)) as RegRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegRequest create() => RegRequest._();
  RegRequest createEmptyInstance() => create();
  static $pb.PbList<RegRequest> createRepeated() => $pb.PbList<RegRequest>();
  @$core.pragma('dart2js:noInline')
  static RegRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegRequest>(create);
  static RegRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ip => $_getSZ(0);
  @$pb.TagNumber(1)
  set ip($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIp() => $_has(0);
  @$pb.TagNumber(1)
  void clearIp() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get hostname => $_getSZ(1);
  @$pb.TagNumber(2)
  set hostname($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHostname() => $_has(1);
  @$pb.TagNumber(2)
  void clearHostname() => $_clearField(2);
}

class RegResponse extends $pb.GeneratedMessage {
  factory RegResponse({
    $core.String? lockedCert,
  }) {
    final $result = create();
    if (lockedCert != null) {
      $result.lockedCert = lockedCert;
    }
    return $result;
  }
  RegResponse._() : super();
  factory RegResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegResponse',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'lockedCert')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegResponse clone() => RegResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegResponse copyWith(void Function(RegResponse) updates) =>
      super.copyWith((message) => updates(message as RegResponse))
          as RegResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegResponse create() => RegResponse._();
  RegResponse createEmptyInstance() => create();
  static $pb.PbList<RegResponse> createRepeated() => $pb.PbList<RegResponse>();
  @$core.pragma('dart2js:noInline')
  static RegResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegResponse>(create);
  static RegResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get lockedCert => $_getSZ(0);
  @$pb.TagNumber(1)
  set lockedCert($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLockedCert() => $_has(0);
  @$pb.TagNumber(1)
  void clearLockedCert() => $_clearField(1);
}

class ServiceRegistration extends $pb.GeneratedMessage {
  factory ServiceRegistration({
    $core.String? serviceId,
    $core.String? ip,
    $core.int? port,
    $core.String? hostname,
    $core.int? apiVersion,
    $core.int? authPort,
  }) {
    final $result = create();
    if (serviceId != null) {
      $result.serviceId = serviceId;
    }
    if (ip != null) {
      $result.ip = ip;
    }
    if (port != null) {
      $result.port = port;
    }
    if (hostname != null) {
      $result.hostname = hostname;
    }
    if (apiVersion != null) {
      $result.apiVersion = apiVersion;
    }
    if (authPort != null) {
      $result.authPort = authPort;
    }
    return $result;
  }
  ServiceRegistration._() : super();
  factory ServiceRegistration.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ServiceRegistration.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServiceRegistration',
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'serviceId')
    ..aOS(2, _omitFieldNames ? '' : 'ip')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'port', $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'hostname')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'apiVersion', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'authPort', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ServiceRegistration clone() => ServiceRegistration()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ServiceRegistration copyWith(void Function(ServiceRegistration) updates) =>
      super.copyWith((message) => updates(message as ServiceRegistration))
          as ServiceRegistration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceRegistration create() => ServiceRegistration._();
  ServiceRegistration createEmptyInstance() => create();
  static $pb.PbList<ServiceRegistration> createRepeated() =>
      $pb.PbList<ServiceRegistration>();
  @$core.pragma('dart2js:noInline')
  static ServiceRegistration getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServiceRegistration>(create);
  static ServiceRegistration? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set serviceId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasServiceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get ip => $_getSZ(1);
  @$pb.TagNumber(2)
  set ip($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIp() => $_has(1);
  @$pb.TagNumber(2)
  void clearIp() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get port => $_getIZ(2);
  @$pb.TagNumber(3)
  set port($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPort() => $_has(2);
  @$pb.TagNumber(3)
  void clearPort() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get hostname => $_getSZ(3);
  @$pb.TagNumber(4)
  set hostname($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasHostname() => $_has(3);
  @$pb.TagNumber(4)
  void clearHostname() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get apiVersion => $_getIZ(4);
  @$pb.TagNumber(5)
  set apiVersion($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasApiVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearApiVersion() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get authPort => $_getIZ(5);
  @$pb.TagNumber(6)
  set authPort($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasAuthPort() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthPort() => $_clearField(6);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
