/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dorm.dart' as _i2;
import 'dorm_join_request.dart' as _i3;
import 'post.dart' as _i4;
import 'user.dart' as _i5;
import 'protocol.dart' as _i6;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i7;
export 'dorm.dart';
export 'dorm_join_request.dart';
export 'post.dart';
export 'user.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Dorm) {
      return _i2.Dorm.fromJson(data) as T;
    }
    if (t == _i3.DormJoinRequest) {
      return _i3.DormJoinRequest.fromJson(data) as T;
    }
    if (t == _i4.Post) {
      return _i4.Post.fromJson(data) as T;
    }
    if (t == _i5.User) {
      return _i5.User.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Dorm?>()) {
      return (data != null ? _i2.Dorm.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.DormJoinRequest?>()) {
      return (data != null ? _i3.DormJoinRequest.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Post?>()) {
      return (data != null ? _i4.Post.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.User?>()) {
      return (data != null ? _i5.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i6.User>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i6.User>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i6.DormJoinRequest>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i6.DormJoinRequest>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i6.Post>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i6.Post>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i6.DormJoinRequest>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i6.DormJoinRequest>(e))
              .toList()
          : null) as dynamic;
    }
    try {
      return _i7.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Dorm) {
      return 'Dorm';
    }
    if (data is _i3.DormJoinRequest) {
      return 'DormJoinRequest';
    }
    if (data is _i4.Post) {
      return 'Post';
    }
    if (data is _i5.User) {
      return 'User';
    }
    className = _i7.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Dorm') {
      return deserialize<_i2.Dorm>(data['data']);
    }
    if (data['className'] == 'DormJoinRequest') {
      return deserialize<_i3.DormJoinRequest>(data['data']);
    }
    if (data['className'] == 'Post') {
      return deserialize<_i4.Post>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i5.User>(data['data']);
    }
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i7.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
