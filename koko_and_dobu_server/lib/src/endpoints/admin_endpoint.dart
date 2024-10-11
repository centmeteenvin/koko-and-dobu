import 'package:koko_and_dobu_server/src/services/user_service.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

class AdminEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  @override
  Set<Scope> get requiredScopes => {Scope.admin};

  Future<void> makeAdmin(Session session, int userId) async {
    final user = await UserService.getUserById(session, userId);
    final hasAdminRole = user.userInfo?.scopeNames.contains(Scope.admin.name!) ?? false;
    if (hasAdminRole) {
      throw Exception("Already admin");
    }

    final previousScopes = user.userInfo?.scopeNames.map(Scope.new) ?? {};

    await Users.updateUserScopes(session, user.userInfoId, {...previousScopes, Scope.admin});
  }

  Future<void> removeAdmin(Session session, int userId) async {
    final user = await UserService.getUserById(session, userId);
    final hasAdminRole = user.userInfo?.scopeNames.contains(Scope.admin.name!) ?? false;
    if (!hasAdminRole) {
      throw Exception("This user is not an admin.");
    }
    final previousScopes = user.userInfo?.scopeNames.map(Scope.new) ?? {};
    await Users.updateUserScopes(session, userId, previousScopes.where((scope) => scope != Scope.admin).toSet());
  }
}
