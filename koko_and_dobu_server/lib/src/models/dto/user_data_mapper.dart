import 'package:koko_and_dobu_server/src/generated/protocol.dart';

extension UserDataMapper on User {
  UserData get asDTO => UserData(
        userName: userInfo!.userName ?? userInfo!.fullName ?? userInfo!.email ?? 'anonymous',
        email: email,
        profileUrl: profileUrl,
        incomingJoinRequestIds: incomingJoinRequestIds,
      );
}
