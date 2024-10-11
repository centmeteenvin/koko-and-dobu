import 'package:koko_and_dobu_server/src/generated/protocol.dart';
import 'package:koko_and_dobu_server/src/services/user_service.dart';
import 'package:serverpod/serverpod.dart';

class UserEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<User> getUserById(Session session, int userId) async {
    return UserService.getUserById(session, userId);
  }
}
