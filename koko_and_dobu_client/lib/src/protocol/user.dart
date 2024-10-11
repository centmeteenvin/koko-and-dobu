/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i2;
import 'protocol.dart' as _i3;

abstract class User implements _i1.SerializableModel {
  User._({
    this.id,
    required this.userInfoId,
    this.userInfo,
    this.dormId,
    this.dorm,
    this.incomingJoinRequests,
  });

  factory User({
    int? id,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    int? dormId,
    _i3.Dorm? dorm,
    List<_i3.DormJoinRequest>? incomingJoinRequests,
  }) = _UserImpl;

  factory User.fromJson(Map<String, dynamic> jsonSerialization) {
    return User(
      id: jsonSerialization['id'] as int?,
      userInfoId: jsonSerialization['userInfoId'] as int,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['userInfo'] as Map<String, dynamic>)),
      dormId: jsonSerialization['dormId'] as int?,
      dorm: jsonSerialization['dorm'] == null
          ? null
          : _i3.Dorm.fromJson(
              (jsonSerialization['dorm'] as Map<String, dynamic>)),
      incomingJoinRequests: (jsonSerialization['incomingJoinRequests'] as List?)
          ?.map(
              (e) => _i3.DormJoinRequest.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userInfoId;

  _i2.UserInfo? userInfo;

  int? dormId;

  _i3.Dorm? dorm;

  List<_i3.DormJoinRequest>? incomingJoinRequests;

  User copyWith({
    int? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    int? dormId,
    _i3.Dorm? dorm,
    List<_i3.DormJoinRequest>? incomingJoinRequests,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      if (dormId != null) 'dormId': dormId,
      if (dorm != null) 'dorm': dorm?.toJson(),
      if (incomingJoinRequests != null)
        'incomingJoinRequests':
            incomingJoinRequests?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    int? dormId,
    _i3.Dorm? dorm,
    List<_i3.DormJoinRequest>? incomingJoinRequests,
  }) : super._(
          id: id,
          userInfoId: userInfoId,
          userInfo: userInfo,
          dormId: dormId,
          dorm: dorm,
          incomingJoinRequests: incomingJoinRequests,
        );

  @override
  User copyWith({
    Object? id = _Undefined,
    int? userInfoId,
    Object? userInfo = _Undefined,
    Object? dormId = _Undefined,
    Object? dorm = _Undefined,
    Object? incomingJoinRequests = _Undefined,
  }) {
    return User(
      id: id is int? ? id : this.id,
      userInfoId: userInfoId ?? this.userInfoId,
      userInfo:
          userInfo is _i2.UserInfo? ? userInfo : this.userInfo?.copyWith(),
      dormId: dormId is int? ? dormId : this.dormId,
      dorm: dorm is _i3.Dorm? ? dorm : this.dorm?.copyWith(),
      incomingJoinRequests: incomingJoinRequests is List<_i3.DormJoinRequest>?
          ? incomingJoinRequests
          : this.incomingJoinRequests?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
