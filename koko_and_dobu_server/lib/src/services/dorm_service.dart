import 'package:koko_and_dobu_server/src/generated/protocol.dart';
import 'package:koko_and_dobu_server/src/services/user_service.dart';
import 'package:serverpod/serverpod.dart';

class DormService {
  static Future<Dorm> getDormById(Session session, int dormId, {DormInclude? include}) async {
    final dorm = await Dorm.db.findById(session, dormId, include: include);
    if (dorm == null) {
      throw Exception('Dorm with id $dormId not found');
    }
    return dorm;
  }

  /// Fetches the requested dorm and user if and only if the user is part of the dorm
  static Future<({Dorm dorm, User user})> getUserAndDormById(Session session, int dormId, int userId) async {
    final user = await UserService.getUserById(session, userId);
    if (user.dormId == dormId) {
      throw Exception('Tried to fetch a user dorm combination of a user who is not port of the dorm');
    }
    final dorm = await getDormById(session, dormId);
    return (dorm: dorm, user: user);
  }
}
