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
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i2;
import 'protocol.dart' as _i3;

abstract class User implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = UserTable();

  static const db = UserRepository._();

  @override
  int? id;

  int userInfoId;

  _i2.UserInfo? userInfo;

  int? dormId;

  _i3.Dorm? dorm;

  List<_i3.DormJoinRequest>? incomingJoinRequests;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJsonForProtocol(),
      if (dormId != null) 'dormId': dormId,
      if (dorm != null) 'dorm': dorm?.toJsonForProtocol(),
      if (incomingJoinRequests != null)
        'incomingJoinRequests': incomingJoinRequests?.toJson(
            valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static UserInclude include({
    _i2.UserInfoInclude? userInfo,
    _i3.DormInclude? dorm,
    _i3.DormJoinRequestIncludeList? incomingJoinRequests,
  }) {
    return UserInclude._(
      userInfo: userInfo,
      dorm: dorm,
      incomingJoinRequests: incomingJoinRequests,
    );
  }

  static UserIncludeList includeList({
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    UserInclude? include,
  }) {
    return UserIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(User.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(User.t),
      include: include,
    );
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

class UserTable extends _i1.Table {
  UserTable({super.tableRelation}) : super(tableName: 'user') {
    userInfoId = _i1.ColumnInt(
      'userInfoId',
      this,
    );
    dormId = _i1.ColumnInt(
      'dormId',
      this,
    );
  }

  late final _i1.ColumnInt userInfoId;

  _i2.UserInfoTable? _userInfo;

  late final _i1.ColumnInt dormId;

  _i3.DormTable? _dorm;

  _i3.DormJoinRequestTable? ___incomingJoinRequests;

  _i1.ManyRelation<_i3.DormJoinRequestTable>? _incomingJoinRequests;

  _i2.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: User.t.userInfoId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  _i3.DormTable get dorm {
    if (_dorm != null) return _dorm!;
    _dorm = _i1.createRelationTable(
      relationFieldName: 'dorm',
      field: User.t.dormId,
      foreignField: _i3.Dorm.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.DormTable(tableRelation: foreignTableRelation),
    );
    return _dorm!;
  }

  _i3.DormJoinRequestTable get __incomingJoinRequests {
    if (___incomingJoinRequests != null) return ___incomingJoinRequests!;
    ___incomingJoinRequests = _i1.createRelationTable(
      relationFieldName: '__incomingJoinRequests',
      field: User.t.id,
      foreignField: _i3.DormJoinRequest.t.userId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.DormJoinRequestTable(tableRelation: foreignTableRelation),
    );
    return ___incomingJoinRequests!;
  }

  _i1.ManyRelation<_i3.DormJoinRequestTable> get incomingJoinRequests {
    if (_incomingJoinRequests != null) return _incomingJoinRequests!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'incomingJoinRequests',
      field: User.t.id,
      foreignField: _i3.DormJoinRequest.t.userId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.DormJoinRequestTable(tableRelation: foreignTableRelation),
    );
    _incomingJoinRequests = _i1.ManyRelation<_i3.DormJoinRequestTable>(
      tableWithRelations: relationTable,
      table: _i3.DormJoinRequestTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _incomingJoinRequests!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        userInfoId,
        dormId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'userInfo') {
      return userInfo;
    }
    if (relationField == 'dorm') {
      return dorm;
    }
    if (relationField == 'incomingJoinRequests') {
      return __incomingJoinRequests;
    }
    return null;
  }
}

class UserInclude extends _i1.IncludeObject {
  UserInclude._({
    _i2.UserInfoInclude? userInfo,
    _i3.DormInclude? dorm,
    _i3.DormJoinRequestIncludeList? incomingJoinRequests,
  }) {
    _userInfo = userInfo;
    _dorm = dorm;
    _incomingJoinRequests = incomingJoinRequests;
  }

  _i2.UserInfoInclude? _userInfo;

  _i3.DormInclude? _dorm;

  _i3.DormJoinRequestIncludeList? _incomingJoinRequests;

  @override
  Map<String, _i1.Include?> get includes => {
        'userInfo': _userInfo,
        'dorm': _dorm,
        'incomingJoinRequests': _incomingJoinRequests,
      };

  @override
  _i1.Table get table => User.t;
}

class UserIncludeList extends _i1.IncludeList {
  UserIncludeList._({
    _i1.WhereExpressionBuilder<UserTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(User.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => User.t;
}

class UserRepository {
  const UserRepository._();

  final attach = const UserAttachRepository._();

  final attachRow = const UserAttachRowRepository._();

  final detachRow = const UserDetachRowRepository._();

  Future<List<User>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return databaseAccessor.db.find<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<User?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserTable>? orderByList,
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return databaseAccessor.db.findFirstRow<User>(
      where: where?.call(User.t),
      orderBy: orderBy?.call(User.t),
      orderByList: orderByList?.call(User.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<User?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
    UserInclude? include,
  }) async {
    return databaseAccessor.db.findById<User>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
      include: include,
    );
  }

  Future<List<User>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<User>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<User> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<User>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<User>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<User> rows, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<User>(
      rows,
      columns: columns?.call(User.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<User> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    User row, {
    _i1.ColumnSelections<UserTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<User>(
      row,
      columns: columns?.call(User.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<User>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<User> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<User>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<User> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    User row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<User>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<User>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<UserTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<User>(
      where: where(User.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<UserTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<User>(
      where: where?.call(User.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class UserAttachRepository {
  const UserAttachRepository._();

  Future<void> incomingJoinRequests(
    _i1.DatabaseAccessor databaseAccessor,
    User user,
    List<_i3.DormJoinRequest> dormJoinRequest, {
    _i1.Transaction? transaction,
  }) async {
    if (dormJoinRequest.any((e) => e.id == null)) {
      throw ArgumentError.notNull('dormJoinRequest.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $dormJoinRequest =
        dormJoinRequest.map((e) => e.copyWith(userId: user.id)).toList();
    await databaseAccessor.db.update<_i3.DormJoinRequest>(
      $dormJoinRequest,
      columns: [_i3.DormJoinRequest.t.userId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class UserAttachRowRepository {
  const UserAttachRowRepository._();

  Future<void> userInfo(
    _i1.DatabaseAccessor databaseAccessor,
    User user,
    _i2.UserInfo userInfo, {
    _i1.Transaction? transaction,
  }) async {
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $user = user.copyWith(userInfoId: userInfo.id);
    await databaseAccessor.db.updateRow<User>(
      $user,
      columns: [User.t.userInfoId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<void> dorm(
    _i1.DatabaseAccessor databaseAccessor,
    User user,
    _i3.Dorm dorm, {
    _i1.Transaction? transaction,
  }) async {
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }
    if (dorm.id == null) {
      throw ArgumentError.notNull('dorm.id');
    }

    var $user = user.copyWith(dormId: dorm.id);
    await databaseAccessor.db.updateRow<User>(
      $user,
      columns: [User.t.dormId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<void> incomingJoinRequests(
    _i1.DatabaseAccessor databaseAccessor,
    User user,
    _i3.DormJoinRequest dormJoinRequest, {
    _i1.Transaction? transaction,
  }) async {
    if (dormJoinRequest.id == null) {
      throw ArgumentError.notNull('dormJoinRequest.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $dormJoinRequest = dormJoinRequest.copyWith(userId: user.id);
    await databaseAccessor.db.updateRow<_i3.DormJoinRequest>(
      $dormJoinRequest,
      columns: [_i3.DormJoinRequest.t.userId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}

class UserDetachRowRepository {
  const UserDetachRowRepository._();

  Future<void> dorm(
    _i1.DatabaseAccessor databaseAccessor,
    User user, {
    _i1.Transaction? transaction,
  }) async {
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $user = user.copyWith(dormId: null);
    await databaseAccessor.db.updateRow<User>(
      $user,
      columns: [User.t.dormId],
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
