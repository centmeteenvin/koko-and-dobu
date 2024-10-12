import 'package:koko_and_dobu_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

Future<User?> getUserByUserInfoId(Session session, int userInfoId) async {
  return User.db.findFirstRow(
    session,
    where: (user) => user.userInfoId.equals(userInfoId),
    include: User.include(
      userInfo: UserInfo.include(),
      dorm: Dorm.include(),
    ),
  );
}

extension SessionUser on Session {
  Future<User?> get currentUserOrNull async {
    final userInfoId = (await authenticated)?.userId;
    if (userInfoId == null) {
      return null;
    }

    final user = await User.db.findFirstRow(this, where: (user) => user.userInfoId.equals(userInfoId));

    return user;
  }

  Future<User> get currentUserOrThrow async {
    final userInfoId = (await authenticated)?.userId;

    if (userInfoId == null) {
      throw NotAuthorizedException(ResultAuthenticationFailed.unauthenticated('The user was not authenticated'));
    }

    final user = await User.db.findFirstRow(
      this,
      where: (user) => user.userInfoId.equals(userInfoId),
      include: User.include(
        userInfo: UserInfo.include(),
        incomingJoinRequests: DormJoinRequest.includeList(),
      ),
    );
    if (user == null) {
      throw StateError('Illegal state: an authenticated person did not have a User object associated with it');
    }
    return user;
  }
}
