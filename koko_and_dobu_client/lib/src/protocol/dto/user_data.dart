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

abstract class UserData implements _i1.SerializableModel {
  UserData._({
    required this.userName,
    required this.email,
    required this.profileUrl,
    this.dormId,
    required this.incomingJoinRequestIds,
  });

  factory UserData({
    required String userName,
    required String email,
    required String profileUrl,
    int? dormId,
    required List<int> incomingJoinRequestIds,
  }) = _UserDataImpl;

  factory UserData.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserData(
      userName: jsonSerialization['userName'] as String,
      email: jsonSerialization['email'] as String,
      profileUrl: jsonSerialization['profileUrl'] as String,
      dormId: jsonSerialization['dormId'] as int?,
      incomingJoinRequestIds:
          (jsonSerialization['incomingJoinRequestIds'] as List)
              .map((e) => e as int)
              .toList(),
    );
  }

  String userName;

  String email;

  String profileUrl;

  int? dormId;

  List<int> incomingJoinRequestIds;

  UserData copyWith({
    String? userName,
    String? email,
    String? profileUrl,
    int? dormId,
    List<int>? incomingJoinRequestIds,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'email': email,
      'profileUrl': profileUrl,
      if (dormId != null) 'dormId': dormId,
      'incomingJoinRequestIds': incomingJoinRequestIds.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserDataImpl extends UserData {
  _UserDataImpl({
    required String userName,
    required String email,
    required String profileUrl,
    int? dormId,
    required List<int> incomingJoinRequestIds,
  }) : super._(
          userName: userName,
          email: email,
          profileUrl: profileUrl,
          dormId: dormId,
          incomingJoinRequestIds: incomingJoinRequestIds,
        );

  @override
  UserData copyWith({
    String? userName,
    String? email,
    String? profileUrl,
    Object? dormId = _Undefined,
    List<int>? incomingJoinRequestIds,
  }) {
    return UserData(
      userName: userName ?? this.userName,
      email: email ?? this.email,
      profileUrl: profileUrl ?? this.profileUrl,
      dormId: dormId is int? ? dormId : this.dormId,
      incomingJoinRequestIds: incomingJoinRequestIds ??
          this.incomingJoinRequestIds.map((e0) => e0).toList(),
    );
  }
}
