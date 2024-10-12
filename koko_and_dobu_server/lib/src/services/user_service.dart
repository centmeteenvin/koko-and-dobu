import 'package:koko_and_dobu_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class UserService {
  static Future<User> getUserById(Session session, int userId, {UserInclude? include}) async {
    final user = await User.db.findById(
      session,
      userId,
      include: include,
    );
    if (user == null) {
      throw Exception("User with id $userId not found.");
    }
    return user;
  }
}
