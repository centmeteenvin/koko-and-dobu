import 'package:koko_and_dobu_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

extension SessionUser on Session {
  Future<User?> get currentUserOrNull async {
    final userInfoId = (await authenticated)?.userId;
    if (userInfoId == null) return null;

    final user = await User.db.findFirstRow(this, where: (user) => user.userInfoId.equals(userInfoId));

    return user;
  }

  Future<User> get currentUserOrThrow async {
    final userInfoId = (await authenticated)?.userId;

    if (userInfoId == null) {
      throw NotAuthorizedException(ResultAuthenticationFailed.unauthenticated('The user was not authenticated'));
    }

    final user = await User.db.findFirstRow(this, where: (user) => user.userInfoId.equals(userInfoId));
    if (user == null) {
      throw StateError("Illegal state: an authenticated person did not have a User object associated with it");
    }
    return user;
  }
}
