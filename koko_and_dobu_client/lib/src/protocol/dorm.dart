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
import 'protocol.dart' as _i2;

abstract class Dorm implements _i1.SerializableModel {
  Dorm._({
    this.id,
    required this.lat,
    required this.long,
    this.websiteUrl,
    this.members,
    required this.ownerId,
    this.owner,
    this.outgoingRequests,
  });

  factory Dorm({
    int? id,
    required double lat,
    required double long,
    String? websiteUrl,
    List<_i2.User>? members,
    required int ownerId,
    _i2.User? owner,
    List<_i2.DormJoinRequest>? outgoingRequests,
  }) = _DormImpl;

  factory Dorm.fromJson(Map<String, dynamic> jsonSerialization) {
    return Dorm(
      id: jsonSerialization['id'] as int?,
      lat: (jsonSerialization['lat'] as num).toDouble(),
      long: (jsonSerialization['long'] as num).toDouble(),
      websiteUrl: jsonSerialization['websiteUrl'] as String?,
      members: (jsonSerialization['members'] as List?)
          ?.map((e) => _i2.User.fromJson((e as Map<String, dynamic>)))
          .toList(),
      ownerId: jsonSerialization['ownerId'] as int,
      owner: jsonSerialization['owner'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['owner'] as Map<String, dynamic>)),
      outgoingRequests: (jsonSerialization['outgoingRequests'] as List?)
          ?.map(
              (e) => _i2.DormJoinRequest.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  double lat;

  double long;

  String? websiteUrl;

  List<_i2.User>? members;

  int ownerId;

  _i2.User? owner;

  List<_i2.DormJoinRequest>? outgoingRequests;

  Dorm copyWith({
    int? id,
    double? lat,
    double? long,
    String? websiteUrl,
    List<_i2.User>? members,
    int? ownerId,
    _i2.User? owner,
    List<_i2.DormJoinRequest>? outgoingRequests,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'lat': lat,
      'long': long,
      if (websiteUrl != null) 'websiteUrl': websiteUrl,
      if (members != null)
        'members': members?.toJson(valueToJson: (v) => v.toJson()),
      'ownerId': ownerId,
      if (owner != null) 'owner': owner?.toJson(),
      if (outgoingRequests != null)
        'outgoingRequests':
            outgoingRequests?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DormImpl extends Dorm {
  _DormImpl({
    int? id,
    required double lat,
    required double long,
    String? websiteUrl,
    List<_i2.User>? members,
    required int ownerId,
    _i2.User? owner,
    List<_i2.DormJoinRequest>? outgoingRequests,
  }) : super._(
          id: id,
          lat: lat,
          long: long,
          websiteUrl: websiteUrl,
          members: members,
          ownerId: ownerId,
          owner: owner,
          outgoingRequests: outgoingRequests,
        );

  @override
  Dorm copyWith({
    Object? id = _Undefined,
    double? lat,
    double? long,
    Object? websiteUrl = _Undefined,
    Object? members = _Undefined,
    int? ownerId,
    Object? owner = _Undefined,
    Object? outgoingRequests = _Undefined,
  }) {
    return Dorm(
      id: id is int? ? id : this.id,
      lat: lat ?? this.lat,
      long: long ?? this.long,
      websiteUrl: websiteUrl is String? ? websiteUrl : this.websiteUrl,
      members: members is List<_i2.User>?
          ? members
          : this.members?.map((e0) => e0.copyWith()).toList(),
      ownerId: ownerId ?? this.ownerId,
      owner: owner is _i2.User? ? owner : this.owner?.copyWith(),
      outgoingRequests: outgoingRequests is List<_i2.DormJoinRequest>?
          ? outgoingRequests
          : this.outgoingRequests?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
