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
import '../protocol.dart' as _i2;

abstract class DormJoinRequest
    implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = DormJoinRequestTable();

  static const db = DormJoinRequestRepository._();

  @override
  int? id;

  int dormId;

  _i2.Dorm? dorm;

  int userId;

  _i2.User? user;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'dormId': dormId,
      if (dorm != null) 'dorm': dorm?.toJsonForProtocol(),
      'userId': userId,
      if (user != null) 'user': user?.toJsonForProtocol(),
    };
  }

  static DormJoinRequestInclude include({
    _i2.DormInclude? dorm,
    _i2.UserInclude? user,
  }) {
    return DormJoinRequestInclude._(
      dorm: dorm,
      user: user,
    );
  }

  static DormJoinRequestIncludeList includeList({
    _i1.WhereExpressionBuilder<DormJoinRequestTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DormJoinRequestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DormJoinRequestTable>? orderByList,
    DormJoinRequestInclude? include,
  }) {
    return DormJoinRequestIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(DormJoinRequest.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(DormJoinRequest.t),
      include: include,
    );
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

class DormJoinRequestTable extends _i1.Table {
  DormJoinRequestTable({super.tableRelation})
      : super(tableName: 'dorm_join_request') {
    dormId = _i1.ColumnInt(
      'dormId',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
  }

  late final _i1.ColumnInt dormId;

  _i2.DormTable? _dorm;

  late final _i1.ColumnInt userId;

  _i2.UserTable? _user;

  _i2.DormTable get dorm {
    if (_dorm != null) return _dorm!;
    _dorm = _i1.createRelationTable(
      relationFieldName: 'dorm',
      field: DormJoinRequest.t.dormId,
      foreignField: _i2.Dorm.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.DormTable(tableRelation: foreignTableRelation),
    );
    return _dorm!;
  }

  _i2.UserTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: DormJoinRequest.t.userId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        dormId,
        userId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'dorm') {
      return dorm;
    }
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

class DormJoinRequestInclude extends _i1.IncludeObject {
  DormJoinRequestInclude._({
    _i2.DormInclude? dorm,
    _i2.UserInclude? user,
  }) {
    _dorm = dorm;
    _user = user;
  }

  _i2.DormInclude? _dorm;

  _i2.UserInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {
        'dorm': _dorm,
        'user': _user,
      };

  @override
  _i1.Table get table => DormJoinRequest.t;
}

class DormJoinRequestIncludeList extends _i1.IncludeList {
  DormJoinRequestIncludeList._({
    _i1.WhereExpressionBuilder<DormJoinRequestTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(DormJoinRequest.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => DormJoinRequest.t;
}

class DormJoinRequestRepository {
  const DormJoinRequestRepository._();

  final attachRow = const DormJoinRequestAttachRowRepository._();

  Future<List<DormJoinRequest>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<DormJoinRequestTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DormJoinRequestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DormJoinRequestTable>? orderByList,
    _i1.Transaction? transaction,
    DormJoinRequestInclude? include,
  }) async {
    return databaseAccessor.db.find<DormJoinRequest>(
      where: where?.call(DormJoinRequest.t),
      orderBy: orderBy?.call(DormJoinRequest.t),
      orderByList: orderByList?.call(DormJoinRequest.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<DormJoinRequest?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<DormJoinRequestTable>? where,
    int? offset,
    _i1.OrderByBuilder<DormJoinRequestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DormJoinRequestTable>? orderByList,
    _i1.Transaction? transaction,
    DormJoinRequestInclude? include,
  }) async {
    return databaseAccessor.db.findFirstRow<DormJoinRequest>(
      where: where?.call(DormJoinRequest.t),
      orderBy: orderBy?.call(DormJoinRequest.t),
      orderByList: orderByList?.call(DormJoinRequest.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<DormJoinRequest?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
    DormJoinRequestInclude? include,
  }) async {
    return databaseAccessor.db.findById<DormJoinRequest>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<List<DormJoinRequest>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<DormJoinRequest> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<DormJoinRequest>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<DormJoinRequest> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    DormJoinRequest row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<DormJoinRequest>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<DormJoinRequest>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<DormJoinRequest> rows, {
    _i1.ColumnSelections<DormJoinRequestTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<DormJoinRequest>(
      rows,
      columns: columns?.call(DormJoinRequest.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<DormJoinRequest> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    DormJoinRequest row, {
    _i1.ColumnSelections<DormJoinRequestTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<DormJoinRequest>(
      row,
      columns: columns?.call(DormJoinRequest.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<DormJoinRequest>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<DormJoinRequest> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<DormJoinRequest>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<DormJoinRequest> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    DormJoinRequest row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<DormJoinRequest>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<DormJoinRequest>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<DormJoinRequestTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<DormJoinRequest>(
      where: where(DormJoinRequest.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<DormJoinRequestTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<DormJoinRequest>(
      where: where?.call(DormJoinRequest.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class DormJoinRequestAttachRowRepository {
  const DormJoinRequestAttachRowRepository._();

  Future<void> dorm(
    _i1.DatabaseAccessor databaseAccessor,
    DormJoinRequest dormJoinRequest,
    _i2.Dorm dorm, {
    _i1.Transaction? transaction,
  }) async {
    if (dormJoinRequest.id == null) {
      throw ArgumentError.notNull('dormJoinRequest.id');
    }
    if (dorm.id == null) {
      throw ArgumentError.notNull('dorm.id');
    }

    var $dormJoinRequest = dormJoinRequest.copyWith(dormId: dorm.id);
    await databaseAccessor.db.updateRow<DormJoinRequest>(
      $dormJoinRequest,
      columns: [DormJoinRequest.t.dormId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<void> user(
    _i1.DatabaseAccessor databaseAccessor,
    DormJoinRequest dormJoinRequest,
    _i2.User user, {
    _i1.Transaction? transaction,
  }) async {
    if (dormJoinRequest.id == null) {
      throw ArgumentError.notNull('dormJoinRequest.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $dormJoinRequest = dormJoinRequest.copyWith(userId: user.id);
    await databaseAccessor.db.updateRow<DormJoinRequest>(
      $dormJoinRequest,
      columns: [DormJoinRequest.t.userId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
