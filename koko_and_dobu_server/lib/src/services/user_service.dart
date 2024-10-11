import 'package:koko_and_dobu_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

class UserService {
  static Future<User> getUserById(Session session, int userId) async {
    final user = await User.db.findById(
      session,
      userId,
      include: User.include(
        userInfo: UserInfo.include(),
        dorm: Dorm.include(),
        incomingJoinRequests: DormJoinRequest.includeList(),
      ),
    );
    if (user == null) {
      throw Exception("User with id $userId not found.");
    }
    return user;
  }
}
