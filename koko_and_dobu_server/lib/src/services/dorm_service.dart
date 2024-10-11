import 'package:koko_and_dobu_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

class DormService {
  static Future<Dorm> getDormById(Session session, int dormId) async {
    final dorm = await Dorm.db.findById(session, dormId,
        include: Dorm.include(
            members: User.includeList(
                include: User.include(
              userInfo: UserInfo.include(),
            )),
            outgoingRequests: DormJoinRequest.includeList(),
            owner: User.include(
              userInfo: UserInfo.include(),
            )));
    if (dorm == null) {
      throw Exception("Dorm with id $dormId not found");
    }
    return dorm;
  }
}
