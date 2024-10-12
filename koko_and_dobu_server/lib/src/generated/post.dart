/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class Post implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = PostTable();

  static const db = PostRepository._();

  @override
  int? id;

  int dormId;

  _i2.Dorm? dorm;

  int createdById;

  _i2.User? createdBy;

  String message;

  DateTime datePosted;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'dormId': dormId,
      if (dorm != null) 'dorm': dorm?.toJsonForProtocol(),
      'createdById': createdById,
      if (createdBy != null) 'createdBy': createdBy?.toJsonForProtocol(),
      'message': message,
      'datePosted': datePosted.toJson(),
    };
  }

  static PostInclude include({
    _i2.DormInclude? dorm,
    _i2.UserInclude? createdBy,
  }) {
    return PostInclude._(
      dorm: dorm,
      createdBy: createdBy,
    );
  }

  static PostIncludeList includeList({
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTable>? orderByList,
    PostInclude? include,
  }) {
    return PostIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Post.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Post.t),
      include: include,
    );
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

class PostTable extends _i1.Table {
  PostTable({super.tableRelation}) : super(tableName: 'post') {
    dormId = _i1.ColumnInt(
      'dormId',
      this,
    );
    createdById = _i1.ColumnInt(
      'createdById',
      this,
    );
    message = _i1.ColumnString(
      'message',
      this,
    );
    datePosted = _i1.ColumnDateTime(
      'datePosted',
      this,
    );
  }

  late final _i1.ColumnInt dormId;

  _i2.DormTable? _dorm;

  late final _i1.ColumnInt createdById;

  _i2.UserTable? _createdBy;

  late final _i1.ColumnString message;

  late final _i1.ColumnDateTime datePosted;

  _i2.DormTable get dorm {
    if (_dorm != null) return _dorm!;
    _dorm = _i1.createRelationTable(
      relationFieldName: 'dorm',
      field: Post.t.dormId,
      foreignField: _i2.Dorm.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.DormTable(tableRelation: foreignTableRelation),
    );
    return _dorm!;
  }

  _i2.UserTable get createdBy {
    if (_createdBy != null) return _createdBy!;
    _createdBy = _i1.createRelationTable(
      relationFieldName: 'createdBy',
      field: Post.t.createdById,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _createdBy!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        dormId,
        createdById,
        message,
        datePosted,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'dorm') {
      return dorm;
    }
    if (relationField == 'createdBy') {
      return createdBy;
    }
    return null;
  }
}

class PostInclude extends _i1.IncludeObject {
  PostInclude._({
    _i2.DormInclude? dorm,
    _i2.UserInclude? createdBy,
  }) {
    _dorm = dorm;
    _createdBy = createdBy;
  }

  _i2.DormInclude? _dorm;

  _i2.UserInclude? _createdBy;

  @override
  Map<String, _i1.Include?> get includes => {
        'dorm': _dorm,
        'createdBy': _createdBy,
      };

  @override
  _i1.Table get table => Post.t;
}

class PostIncludeList extends _i1.IncludeList {
  PostIncludeList._({
    _i1.WhereExpressionBuilder<PostTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Post.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Post.t;
}

class PostRepository {
  const PostRepository._();

  final attachRow = const PostAttachRowRepository._();

  Future<List<Post>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTable>? orderByList,
    _i1.Transaction? transaction,
    PostInclude? include,
  }) async {
    return databaseAccessor.db.find<Post>(
      where: where?.call(Post.t),
      orderBy: orderBy?.call(Post.t),
      orderByList: orderByList?.call(Post.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<Post?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? offset,
    _i1.OrderByBuilder<PostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTable>? orderByList,
    _i1.Transaction? transaction,
    PostInclude? include,
  }) async {
    return databaseAccessor.db.findFirstRow<Post>(
      where: where?.call(Post.t),
      orderBy: orderBy?.call(Post.t),
      orderByList: orderByList?.call(Post.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<Post?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
    PostInclude? include,
  }) async {
    return databaseAccessor.db.findById<Post>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<List<Post>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<Post> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<Post>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Post> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<Post>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Post>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<Post> rows, {
    _i1.ColumnSelections<PostTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<Post>(
      rows,
      columns: columns?.call(Post.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Post> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    Post row, {
    _i1.ColumnSelections<PostTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<Post>(
      row,
      columns: columns?.call(Post.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Post>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<Post> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<Post>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Post> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<Post>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Post>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<PostTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<Post>(
      where: where(Post.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<Post>(
      where: where?.call(Post.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class PostAttachRowRepository {
  const PostAttachRowRepository._();

  Future<void> dorm(
    _i1.DatabaseAccessor databaseAccessor,
    Post post,
    _i2.Dorm dorm, {
    _i1.Transaction? transaction,
  }) async {
    if (post.id == null) {
      throw ArgumentError.notNull('post.id');
    }
    if (dorm.id == null) {
      throw ArgumentError.notNull('dorm.id');
    }

    var $post = post.copyWith(dormId: dorm.id);
    await databaseAccessor.db.updateRow<Post>(
      $post,
      columns: [Post.t.dormId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<void> createdBy(
    _i1.DatabaseAccessor databaseAccessor,
    Post post,
    _i2.User createdBy, {
    _i1.Transaction? transaction,
  }) async {
    if (post.id == null) {
      throw ArgumentError.notNull('post.id');
    }
    if (createdBy.id == null) {
      throw ArgumentError.notNull('createdBy.id');
    }

    var $post = post.copyWith(createdById: createdBy.id);
    await databaseAccessor.db.updateRow<Post>(
      $post,
      columns: [Post.t.createdById],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
