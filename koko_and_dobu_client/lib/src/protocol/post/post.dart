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

abstract class Post implements _i1.SerializableModel {
  Post._({
    this.id,
    required this.dormId,
    this.dorm,
    required this.createdById,
    this.createdBy,
    required this.message,
    required this.datePosted,
  });

  factory Post({
    int? id,
    required int dormId,
    _i2.Dorm? dorm,
    required int createdById,
    _i2.User? createdBy,
    required String message,
    required DateTime datePosted,
  }) = _PostImpl;

  factory Post.fromJson(Map<String, dynamic> jsonSerialization) {
    return Post(
      id: jsonSerialization['id'] as int?,
      dormId: jsonSerialization['dormId'] as int,
      dorm: jsonSerialization['dorm'] == null
          ? null
          : _i2.Dorm.fromJson(
              (jsonSerialization['dorm'] as Map<String, dynamic>)),
      createdById: jsonSerialization['createdById'] as int,
      createdBy: jsonSerialization['createdBy'] == null
          ? null
          : _i2.User.fromJson(
              (jsonSerialization['createdBy'] as Map<String, dynamic>)),
      message: jsonSerialization['message'] as String,
      datePosted:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['datePosted']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int dormId;

  _i2.Dorm? dorm;

  int createdById;

  _i2.User? createdBy;

  String message;

  DateTime datePosted;

  Post copyWith({
    int? id,
    int? dormId,
    _i2.Dorm? dorm,
    int? createdById,
    _i2.User? createdBy,
    String? message,
    DateTime? datePosted,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'dormId': dormId,
      if (dorm != null) 'dorm': dorm?.toJson(),
      'createdById': createdById,
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      'message': message,
      'datePosted': datePosted.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PostImpl extends Post {
  _PostImpl({
    int? id,
    required int dormId,
    _i2.Dorm? dorm,
    required int createdById,
    _i2.User? createdBy,
    required String message,
    required DateTime datePosted,
  }) : super._(
          id: id,
          dormId: dormId,
          dorm: dorm,
          createdById: createdById,
          createdBy: createdBy,
          message: message,
          datePosted: datePosted,
        );

  @override
  Post copyWith({
    Object? id = _Undefined,
    int? dormId,
    Object? dorm = _Undefined,
    int? createdById,
    Object? createdBy = _Undefined,
    String? message,
    DateTime? datePosted,
  }) {
    return Post(
      id: id is int? ? id : this.id,
      dormId: dormId ?? this.dormId,
      dorm: dorm is _i2.Dorm? ? dorm : this.dorm?.copyWith(),
      createdById: createdById ?? this.createdById,
      createdBy:
          createdBy is _i2.User? ? createdBy : this.createdBy?.copyWith(),
      message: message ?? this.message,
      datePosted: datePosted ?? this.datePosted,
    );
  }
}
