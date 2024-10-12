import 'package:koko_and_dobu_server/src/generated/protocol.dart';
import 'package:koko_and_dobu_server/src/models/dto/user_data_mapper.dart';
import 'package:koko_and_dobu_server/src/services/user_service.dart';
import 'package:serverpod/serverpod.dart';

class UserEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<UserData> getUserById(Session session, int userId) async {
    final user = await UserService.getUserById(
      session,
      userId,
      include: User.include(
        incomingJoinRequests: DormJoinRequest.includeList(),
      ),
    );
    return user.asDTO;
  }
}
