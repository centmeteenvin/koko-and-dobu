import 'package:koko_and_dobu_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

/// automatically creates a custom user object when a new auth user is identified.
Future<void> onUserCreated(Session session, UserInfo userInfo) async {
  if (userInfo.id == null) {
    throw Exception("The created user had userInfo with id null");
  }
  final user = await User.db.insertRow(session, User(userInfoId: userInfo.id!));
  await User.db.attachRow.userInfo(session, user, userInfo);
}
