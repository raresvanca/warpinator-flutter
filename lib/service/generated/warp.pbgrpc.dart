//
//  Generated code. Do not modify.
//  source: warp.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'warp.pb.dart' as $0;

export 'warp.pb.dart';

@$pb.GrpcServiceName('Warp')
class WarpClient extends $grpc.Client {
  static final _$checkDuplexConnection =
      $grpc.ClientMethod<$0.LookupName, $0.HaveDuplex>(
          '/Warp/CheckDuplexConnection',
          ($0.LookupName value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.HaveDuplex.fromBuffer(value));
  static final _$waitingForDuplex =
      $grpc.ClientMethod<$0.LookupName, $0.HaveDuplex>(
          '/Warp/WaitingForDuplex',
          ($0.LookupName value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.HaveDuplex.fromBuffer(value));
  static final _$getRemoteMachineInfo =
      $grpc.ClientMethod<$0.LookupName, $0.RemoteMachineInfo>(
          '/Warp/GetRemoteMachineInfo',
          ($0.LookupName value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RemoteMachineInfo.fromBuffer(value));
  static final _$getRemoteMachineAvatar =
      $grpc.ClientMethod<$0.LookupName, $0.RemoteMachineAvatar>(
          '/Warp/GetRemoteMachineAvatar',
          ($0.LookupName value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RemoteMachineAvatar.fromBuffer(value));
  static final _$processTransferOpRequest =
      $grpc.ClientMethod<$0.TransferOpRequest, $0.VoidType>(
          '/Warp/ProcessTransferOpRequest',
          ($0.TransferOpRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.VoidType.fromBuffer(value));
  static final _$pauseTransferOp = $grpc.ClientMethod<$0.OpInfo, $0.VoidType>(
      '/Warp/PauseTransferOp',
      ($0.OpInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.VoidType.fromBuffer(value));
  static final _$startTransfer = $grpc.ClientMethod<$0.OpInfo, $0.FileChunk>(
      '/Warp/StartTransfer',
      ($0.OpInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FileChunk.fromBuffer(value));
  static final _$cancelTransferOpRequest =
      $grpc.ClientMethod<$0.OpInfo, $0.VoidType>(
          '/Warp/CancelTransferOpRequest',
          ($0.OpInfo value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.VoidType.fromBuffer(value));
  static final _$stopTransfer = $grpc.ClientMethod<$0.StopInfo, $0.VoidType>(
      '/Warp/StopTransfer',
      ($0.StopInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.VoidType.fromBuffer(value));
  static final _$ping = $grpc.ClientMethod<$0.LookupName, $0.VoidType>(
      '/Warp/Ping',
      ($0.LookupName value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.VoidType.fromBuffer(value));

  WarpClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.HaveDuplex> checkDuplexConnection(
      $0.LookupName request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkDuplexConnection, request, options: options);
  }

  $grpc.ResponseFuture<$0.HaveDuplex> waitingForDuplex($0.LookupName request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$waitingForDuplex, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoteMachineInfo> getRemoteMachineInfo(
      $0.LookupName request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRemoteMachineInfo, request, options: options);
  }

  $grpc.ResponseStream<$0.RemoteMachineAvatar> getRemoteMachineAvatar(
      $0.LookupName request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getRemoteMachineAvatar, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.VoidType> processTransferOpRequest(
      $0.TransferOpRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$processTransferOpRequest, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.VoidType> pauseTransferOp($0.OpInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pauseTransferOp, request, options: options);
  }

  $grpc.ResponseStream<$0.FileChunk> startTransfer($0.OpInfo request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$startTransfer, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.VoidType> cancelTransferOpRequest($0.OpInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelTransferOpRequest, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.VoidType> stopTransfer($0.StopInfo request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stopTransfer, request, options: options);
  }

  $grpc.ResponseFuture<$0.VoidType> ping($0.LookupName request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ping, request, options: options);
  }
}

@$pb.GrpcServiceName('Warp')
abstract class WarpServiceBase extends $grpc.Service {
  $core.String get $name => 'Warp';

  WarpServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LookupName, $0.HaveDuplex>(
        'CheckDuplexConnection',
        checkDuplexConnection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LookupName.fromBuffer(value),
        ($0.HaveDuplex value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LookupName, $0.HaveDuplex>(
        'WaitingForDuplex',
        waitingForDuplex_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LookupName.fromBuffer(value),
        ($0.HaveDuplex value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LookupName, $0.RemoteMachineInfo>(
        'GetRemoteMachineInfo',
        getRemoteMachineInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LookupName.fromBuffer(value),
        ($0.RemoteMachineInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LookupName, $0.RemoteMachineAvatar>(
        'GetRemoteMachineAvatar',
        getRemoteMachineAvatar_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.LookupName.fromBuffer(value),
        ($0.RemoteMachineAvatar value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TransferOpRequest, $0.VoidType>(
        'ProcessTransferOpRequest',
        processTransferOpRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TransferOpRequest.fromBuffer(value),
        ($0.VoidType value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OpInfo, $0.VoidType>(
        'PauseTransferOp',
        pauseTransferOp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.OpInfo.fromBuffer(value),
        ($0.VoidType value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OpInfo, $0.FileChunk>(
        'StartTransfer',
        startTransfer_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.OpInfo.fromBuffer(value),
        ($0.FileChunk value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OpInfo, $0.VoidType>(
        'CancelTransferOpRequest',
        cancelTransferOpRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.OpInfo.fromBuffer(value),
        ($0.VoidType value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StopInfo, $0.VoidType>(
        'StopTransfer',
        stopTransfer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StopInfo.fromBuffer(value),
        ($0.VoidType value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LookupName, $0.VoidType>(
        'Ping',
        ping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LookupName.fromBuffer(value),
        ($0.VoidType value) => value.writeToBuffer()));
  }

  $async.Future<$0.HaveDuplex> checkDuplexConnection_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.LookupName> $request) async {
    return checkDuplexConnection($call, await $request);
  }

  $async.Future<$0.HaveDuplex> waitingForDuplex_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.LookupName> $request) async {
    return waitingForDuplex($call, await $request);
  }

  $async.Future<$0.RemoteMachineInfo> getRemoteMachineInfo_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.LookupName> $request) async {
    return getRemoteMachineInfo($call, await $request);
  }

  $async.Stream<$0.RemoteMachineAvatar> getRemoteMachineAvatar_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.LookupName> $request) async* {
    yield* getRemoteMachineAvatar($call, await $request);
  }

  $async.Future<$0.VoidType> processTransferOpRequest_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.TransferOpRequest> $request) async {
    return processTransferOpRequest($call, await $request);
  }

  $async.Future<$0.VoidType> pauseTransferOp_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.OpInfo> $request) async {
    return pauseTransferOp($call, await $request);
  }

  $async.Stream<$0.FileChunk> startTransfer_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.OpInfo> $request) async* {
    yield* startTransfer($call, await $request);
  }

  $async.Future<$0.VoidType> cancelTransferOpRequest_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.OpInfo> $request) async {
    return cancelTransferOpRequest($call, await $request);
  }

  $async.Future<$0.VoidType> stopTransfer_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.StopInfo> $request) async {
    return stopTransfer($call, await $request);
  }

  $async.Future<$0.VoidType> ping_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.LookupName> $request) async {
    return ping($call, await $request);
  }

  $async.Future<$0.HaveDuplex> checkDuplexConnection(
      $grpc.ServiceCall call, $0.LookupName request);
  $async.Future<$0.HaveDuplex> waitingForDuplex(
      $grpc.ServiceCall call, $0.LookupName request);
  $async.Future<$0.RemoteMachineInfo> getRemoteMachineInfo(
      $grpc.ServiceCall call, $0.LookupName request);
  $async.Stream<$0.RemoteMachineAvatar> getRemoteMachineAvatar(
      $grpc.ServiceCall call, $0.LookupName request);
  $async.Future<$0.VoidType> processTransferOpRequest(
      $grpc.ServiceCall call, $0.TransferOpRequest request);
  $async.Future<$0.VoidType> pauseTransferOp(
      $grpc.ServiceCall call, $0.OpInfo request);
  $async.Stream<$0.FileChunk> startTransfer(
      $grpc.ServiceCall call, $0.OpInfo request);
  $async.Future<$0.VoidType> cancelTransferOpRequest(
      $grpc.ServiceCall call, $0.OpInfo request);
  $async.Future<$0.VoidType> stopTransfer(
      $grpc.ServiceCall call, $0.StopInfo request);
  $async.Future<$0.VoidType> ping(
      $grpc.ServiceCall call, $0.LookupName request);
}

@$pb.GrpcServiceName('WarpRegistration')
class WarpRegistrationClient extends $grpc.Client {
  static final _$requestCertificate =
      $grpc.ClientMethod<$0.RegRequest, $0.RegResponse>(
          '/WarpRegistration/RequestCertificate',
          ($0.RegRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.RegResponse.fromBuffer(value));
  static final _$registerService =
      $grpc.ClientMethod<$0.ServiceRegistration, $0.ServiceRegistration>(
          '/WarpRegistration/RegisterService',
          ($0.ServiceRegistration value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ServiceRegistration.fromBuffer(value));

  WarpRegistrationClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.RegResponse> requestCertificate($0.RegRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$requestCertificate, request, options: options);
  }

  $grpc.ResponseFuture<$0.ServiceRegistration> registerService(
      $0.ServiceRegistration request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerService, request, options: options);
  }
}

@$pb.GrpcServiceName('WarpRegistration')
abstract class WarpRegistrationServiceBase extends $grpc.Service {
  $core.String get $name => 'WarpRegistration';

  WarpRegistrationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RegRequest, $0.RegResponse>(
        'RequestCertificate',
        requestCertificate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RegRequest.fromBuffer(value),
        ($0.RegResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ServiceRegistration, $0.ServiceRegistration>(
            'RegisterService',
            registerService_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ServiceRegistration.fromBuffer(value),
            ($0.ServiceRegistration value) => value.writeToBuffer()));
  }

  $async.Future<$0.RegResponse> requestCertificate_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.RegRequest> $request) async {
    return requestCertificate($call, await $request);
  }

  $async.Future<$0.ServiceRegistration> registerService_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ServiceRegistration> $request) async {
    return registerService($call, await $request);
  }

  $async.Future<$0.RegResponse> requestCertificate(
      $grpc.ServiceCall call, $0.RegRequest request);
  $async.Future<$0.ServiceRegistration> registerService(
      $grpc.ServiceCall call, $0.ServiceRegistration request);
}
