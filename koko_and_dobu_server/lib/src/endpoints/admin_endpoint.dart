import 'package:koko_and_dobu_server/src/generated/protocol.dart';
import 'package:koko_and_dobu_server/src/services/user_service.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

class AdminEndpoint extends Endpoint {
  @override
  Set<Scope> get requiredScopes => {Scope.admin};

  @override
  bool get requireLogin => true;

  Future<void> makeAdmin(Session session, int userId) async {
    final user = await UserService.getUserById(session, userId, include: User.include(userInfo: UserInfo.include()));
    final hasAdminRole = user.userInfo!.scopeNames.contains(Scope.admin.name);
    if (hasAdminRole) {
      throw Exception('Already admin');
    }

    final previousScopes = user.userInfo?.scopeNames.map(Scope.new) ?? {};

    await Users.updateUserScopes(session, user.userInfoId, {...previousScopes, Scope.admin});
  }

  Future<void> removeAdmin(Session session, int userId) async {
    final user = await UserService.getUserById(session, userId, include: User.include(userInfo: UserInfo.include()));
    final hasAdminRole = user.userInfo!.scopeNames.contains(Scope.admin.name);
    if (!hasAdminRole) {
      throw Exception('This user is not an admin.');
    }
    final previousScopes = user.userInfo?.scopeNames.map(Scope.new) ?? {};
    await Users.updateUserScopes(session, userId, previousScopes.where((scope) => scope != Scope.admin).toSet());
  }
}
