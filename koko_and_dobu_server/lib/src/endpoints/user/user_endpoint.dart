import 'package:koko_and_dobu_server/src/generated/protocol.dart';
import 'package:koko_and_dobu_server/src/helpers/session_user_extension.dart';
import 'package:koko_and_dobu_server/src/models/user/user_data_mapper.dart';
import 'package:koko_and_dobu_server/src/services/user_service.dart';
import 'package:serverpod/serverpod.dart';

class UserEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  /// Fetches the user if and only if
  /// the user is part of the same dorm as current user
  /// or the user is not yet associated with any dorm
  /// or it is the current user itself
  Future<UserData> getUserById(Session session, int userId) async {
    final currentUser = await session.currentUserOrThrow;
    final user = await UserService.getUserById(
      session,
      userId,
      include: User.include(
        incomingJoinRequests: DormJoinRequest.includeList(),
      ),
    );
    final validRequest = currentUser.id! == userId || currentUser.dormId == user.dormId || user.dormId == null;
    if (!validRequest) {
      throw Exception('''
User ${currentUser.id} cannot access user $userId:
  current user dorm:   ${currentUser.dormId}
  requested user dorm: ${user.dorm}
''');
    }
    return user.asDTO;
  }
}
