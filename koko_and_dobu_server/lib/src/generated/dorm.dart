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

abstract class Dorm implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = DormTable();

  static const db = DormRepository._();

  @override
  int? id;

  double lat;

  double long;

  String? websiteUrl;

  List<_i2.User>? members;

  int ownerId;

  _i2.User? owner;

  List<_i2.DormJoinRequest>? outgoingRequests;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'lat': lat,
      'long': long,
      if (websiteUrl != null) 'websiteUrl': websiteUrl,
      if (members != null)
        'members': members?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'ownerId': ownerId,
      if (owner != null) 'owner': owner?.toJsonForProtocol(),
      if (outgoingRequests != null)
        'outgoingRequests':
            outgoingRequests?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static DormInclude include({
    _i2.UserIncludeList? members,
    _i2.UserInclude? owner,
    _i2.DormJoinRequestIncludeList? outgoingRequests,
  }) {
    return DormInclude._(
      members: members,
      owner: owner,
      outgoingRequests: outgoingRequests,
    );
  }

  static DormIncludeList includeList({
    _i1.WhereExpressionBuilder<DormTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DormTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DormTable>? orderByList,
    DormInclude? include,
  }) {
    return DormIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Dorm.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Dorm.t),
      include: include,
    );
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

class DormTable extends _i1.Table {
  DormTable({super.tableRelation}) : super(tableName: 'dorm') {
    lat = _i1.ColumnDouble(
      'lat',
      this,
    );
    long = _i1.ColumnDouble(
      'long',
      this,
    );
    websiteUrl = _i1.ColumnString(
      'websiteUrl',
      this,
    );
    ownerId = _i1.ColumnInt(
      'ownerId',
      this,
    );
  }

  late final _i1.ColumnDouble lat;

  late final _i1.ColumnDouble long;

  late final _i1.ColumnString websiteUrl;

  _i2.UserTable? ___members;

  _i1.ManyRelation<_i2.UserTable>? _members;

  late final _i1.ColumnInt ownerId;

  _i2.UserTable? _owner;

  _i2.DormJoinRequestTable? ___outgoingRequests;

  _i1.ManyRelation<_i2.DormJoinRequestTable>? _outgoingRequests;

  _i2.UserTable get __members {
    if (___members != null) return ___members!;
    ___members = _i1.createRelationTable(
      relationFieldName: '__members',
      field: Dorm.t.id,
      foreignField: _i2.User.t.dormId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return ___members!;
  }

  _i2.UserTable get owner {
    if (_owner != null) return _owner!;
    _owner = _i1.createRelationTable(
      relationFieldName: 'owner',
      field: Dorm.t.ownerId,
      foreignField: _i2.User.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    return _owner!;
  }

  _i2.DormJoinRequestTable get __outgoingRequests {
    if (___outgoingRequests != null) return ___outgoingRequests!;
    ___outgoingRequests = _i1.createRelationTable(
      relationFieldName: '__outgoingRequests',
      field: Dorm.t.id,
      foreignField: _i2.DormJoinRequest.t.dormId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.DormJoinRequestTable(tableRelation: foreignTableRelation),
    );
    return ___outgoingRequests!;
  }

  _i1.ManyRelation<_i2.UserTable> get members {
    if (_members != null) return _members!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'members',
      field: Dorm.t.id,
      foreignField: _i2.User.t.dormId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserTable(tableRelation: foreignTableRelation),
    );
    _members = _i1.ManyRelation<_i2.UserTable>(
      tableWithRelations: relationTable,
      table: _i2.UserTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _members!;
  }

  _i1.ManyRelation<_i2.DormJoinRequestTable> get outgoingRequests {
    if (_outgoingRequests != null) return _outgoingRequests!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'outgoingRequests',
      field: Dorm.t.id,
      foreignField: _i2.DormJoinRequest.t.dormId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.DormJoinRequestTable(tableRelation: foreignTableRelation),
    );
    _outgoingRequests = _i1.ManyRelation<_i2.DormJoinRequestTable>(
      tableWithRelations: relationTable,
      table: _i2.DormJoinRequestTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _outgoingRequests!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        lat,
        long,
        websiteUrl,
        ownerId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'members') {
      return __members;
    }
    if (relationField == 'owner') {
      return owner;
    }
    if (relationField == 'outgoingRequests') {
      return __outgoingRequests;
    }
    return null;
  }
}

class DormInclude extends _i1.IncludeObject {
  DormInclude._({
    _i2.UserIncludeList? members,
    _i2.UserInclude? owner,
    _i2.DormJoinRequestIncludeList? outgoingRequests,
  }) {
    _members = members;
    _owner = owner;
    _outgoingRequests = outgoingRequests;
  }

  _i2.UserIncludeList? _members;

  _i2.UserInclude? _owner;

  _i2.DormJoinRequestIncludeList? _outgoingRequests;

  @override
  Map<String, _i1.Include?> get includes => {
        'members': _members,
        'owner': _owner,
        'outgoingRequests': _outgoingRequests,
      };

  @override
  _i1.Table get table => Dorm.t;
}

class DormIncludeList extends _i1.IncludeList {
  DormIncludeList._({
    _i1.WhereExpressionBuilder<DormTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Dorm.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Dorm.t;
}

class DormRepository {
  const DormRepository._();

  final attach = const DormAttachRepository._();

  final attachRow = const DormAttachRowRepository._();

  final detach = const DormDetachRepository._();

  final detachRow = const DormDetachRowRepository._();

  Future<List<Dorm>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<DormTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DormTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DormTable>? orderByList,
    _i1.Transaction? transaction,
    DormInclude? include,
  }) async {
    return databaseAccessor.db.find<Dorm>(
      where: where?.call(Dorm.t),
      orderBy: orderBy?.call(Dorm.t),
      orderByList: orderByList?.call(Dorm.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<Dorm?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<DormTable>? where,
    int? offset,
    _i1.OrderByBuilder<DormTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DormTable>? orderByList,
    _i1.Transaction? transaction,
    DormInclude? include,
  }) async {
    return databaseAccessor.db.findFirstRow<Dorm>(
      where: where?.call(Dorm.t),
      orderBy: orderBy?.call(Dorm.t),
      orderByList: orderByList?.call(Dorm.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<Dorm?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
    DormInclude? include,
  }) async {
    return databaseAccessor.db.findById<Dorm>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<List<Dorm>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<Dorm> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<Dorm>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Dorm> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    Dorm row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<Dorm>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Dorm>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<Dorm> rows, {
    _i1.ColumnSelections<DormTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<Dorm>(
      rows,
      columns: columns?.call(Dorm.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Dorm> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    Dorm row, {
    _i1.ColumnSelections<DormTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<Dorm>(
      row,
      columns: columns?.call(Dorm.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Dorm>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<Dorm> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<Dorm>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<Dorm> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    Dorm row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<Dorm>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<Dorm>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<DormTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<Dorm>(
      where: where(Dorm.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<DormTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<Dorm>(
      where: where?.call(Dorm.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class DormAttachRepository {
  const DormAttachRepository._();

  Future<void> members(
    _i1.DatabaseAccessor databaseAccessor,
    Dorm dorm,
    List<_i2.User> user, {
    _i1.Transaction? transaction,
  }) async {
    if (user.any((e) => e.id == null)) {
      throw ArgumentError.notNull('user.id');
    }
    if (dorm.id == null) {
      throw ArgumentError.notNull('dorm.id');
    }

    var $user = user.map((e) => e.copyWith(dormId: dorm.id)).toList();
    await databaseAccessor.db.update<_i2.User>(
      $user,
      columns: [_i2.User.t.dormId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<void> outgoingRequests(
    _i1.DatabaseAccessor databaseAccessor,
    Dorm dorm,
    List<_i2.DormJoinRequest> dormJoinRequest, {
    _i1.Transaction? transaction,
  }) async {
    if (dormJoinRequest.any((e) => e.id == null)) {
      throw ArgumentError.notNull('dormJoinRequest.id');
    }
    if (dorm.id == null) {
      throw ArgumentError.notNull('dorm.id');
    }

    var $dormJoinRequest =
        dormJoinRequest.map((e) => e.copyWith(dormId: dorm.id)).toList();
    await databaseAccessor.db.update<_i2.DormJoinRequest>(
      $dormJoinRequest,
      columns: [_i2.DormJoinRequest.t.dormId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class DormAttachRowRepository {
  const DormAttachRowRepository._();

  Future<void> owner(
    _i1.DatabaseAccessor databaseAccessor,
    Dorm dorm,
    _i2.User owner, {
    _i1.Transaction? transaction,
  }) async {
    if (dorm.id == null) {
      throw ArgumentError.notNull('dorm.id');
    }
    if (owner.id == null) {
      throw ArgumentError.notNull('owner.id');
    }

    var $dorm = dorm.copyWith(ownerId: owner.id);
    await databaseAccessor.db.updateRow<Dorm>(
      $dorm,
      columns: [Dorm.t.ownerId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<void> members(
    _i1.DatabaseAccessor databaseAccessor,
    Dorm dorm,
    _i2.User user, {
    _i1.Transaction? transaction,
  }) async {
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }
    if (dorm.id == null) {
      throw ArgumentError.notNull('dorm.id');
    }

    var $user = user.copyWith(dormId: dorm.id);
    await databaseAccessor.db.updateRow<_i2.User>(
      $user,
      columns: [_i2.User.t.dormId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<void> outgoingRequests(
    _i1.DatabaseAccessor databaseAccessor,
    Dorm dorm,
    _i2.DormJoinRequest dormJoinRequest, {
    _i1.Transaction? transaction,
  }) async {
    if (dormJoinRequest.id == null) {
      throw ArgumentError.notNull('dormJoinRequest.id');
    }
    if (dorm.id == null) {
      throw ArgumentError.notNull('dorm.id');
    }

    var $dormJoinRequest = dormJoinRequest.copyWith(dormId: dorm.id);
    await databaseAccessor.db.updateRow<_i2.DormJoinRequest>(
      $dormJoinRequest,
      columns: [_i2.DormJoinRequest.t.dormId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class DormDetachRepository {
  const DormDetachRepository._();

  Future<void> members(
    _i1.DatabaseAccessor databaseAccessor,
    List<_i2.User> user, {
    _i1.Transaction? transaction,
  }) async {
    if (user.any((e) => e.id == null)) {
      throw ArgumentError.notNull('user.id');
    }

    var $user = user.map((e) => e.copyWith(dormId: null)).toList();
    await databaseAccessor.db.update<_i2.User>(
      $user,
      columns: [_i2.User.t.dormId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<void> outgoingRequests(
    _i1.DatabaseAccessor databaseAccessor,
    List<_i2.DormJoinRequest> dormJoinRequest, {
    _i1.Transaction? transaction,
  }) async {
    if (dormJoinRequest.any((e) => e.id == null)) {
      throw ArgumentError.notNull('dormJoinRequest.id');
    }

    var $dormJoinRequest =
        dormJoinRequest.map((e) => e.copyWith(dormId: null)).toList();
    await databaseAccessor.db.update<_i2.DormJoinRequest>(
      $dormJoinRequest,
      columns: [_i2.DormJoinRequest.t.dormId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class DormDetachRowRepository {
  const DormDetachRowRepository._();

  Future<void> members(
    _i1.DatabaseAccessor databaseAccessor,
    _i2.User user, {
    _i1.Transaction? transaction,
  }) async {
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $user = user.copyWith(dormId: null);
    await databaseAccessor.db.updateRow<_i2.User>(
      $user,
      columns: [_i2.User.t.dormId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<void> outgoingRequests(
    _i1.DatabaseAccessor databaseAccessor,
    _i2.DormJoinRequest dormJoinRequest, {
    _i1.Transaction? transaction,
  }) async {
    if (dormJoinRequest.id == null) {
      throw ArgumentError.notNull('dormJoinRequest.id');
    }

    var $dormJoinRequest = dormJoinRequest.copyWith(dormId: null);
    await databaseAccessor.db.updateRow<_i2.DormJoinRequest>(
      $dormJoinRequest,
      columns: [_i2.DormJoinRequest.t.dormId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
