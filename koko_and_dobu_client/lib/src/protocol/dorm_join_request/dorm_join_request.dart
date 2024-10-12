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
import '../protocol.dart' as _i2;

abstract class DormJoinRequest implements _i1.SerializableModel {
  DormJoinRequest._({
    this.id,
    required this.dormId,
    this.dorm,
    required this.userId,
    this.user,
  });

  factory DormJoinRequest({
    int? id,
    required int dormId,
    _i2.Dorm? dorm,
    required int userId,
    _i2.User? user,
  }) = _DormJoinRequestImpl;

  factory DormJoinRequest.fromJson(Map<String, dynamic> jsonSerialization) {
    return DormJoinRequest(
      id: jsonSerialization['id'] as int?,
      dormId: jsonSerialization['dormId'] as int,
      dorm: jsonSerialization['dorm'] == null
          ? null
          : _i2.Dorm.fromJson(
              (jsonSerialization['dorm'] as Map<String, dynamic>)),
      userId: jsonSerialization['userId'] as int,
      user: jsonSerialization['user'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['user'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int dormId;

  _i2.Dorm? dorm;

  int userId;

  _i2.User? user;

  DormJoinRequest copyWith({
    int? id,
    int? dormId,
    _i2.Dorm? dorm,
    int? userId,
    _i2.User? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'dormId': dormId,
      if (dorm != null) 'dorm': dorm?.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DormJoinRequestImpl extends DormJoinRequest {
  _DormJoinRequestImpl({
    int? id,
    required int dormId,
    _i2.Dorm? dorm,
    required int userId,
    _i2.User? user,
  }) : super._(
          id: id,
          dormId: dormId,
          dorm: dorm,
          userId: userId,
          user: user,
        );

  @override
  DormJoinRequest copyWith({
    Object? id = _Undefined,
    int? dormId,
    Object? dorm = _Undefined,
    int? userId,
    Object? user = _Undefined,
  }) {
    return DormJoinRequest(
      id: id is int? ? id : this.id,
      dormId: dormId ?? this.dormId,
      dorm: dorm is _i2.Dorm? ? dorm : this.dorm?.copyWith(),
      userId: userId ?? this.userId,
      user: user is _i2.User? ? user : this.user?.copyWith(),
    );
  }
}
