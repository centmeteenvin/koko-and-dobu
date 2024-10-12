import 'package:koko_and_dobu_server/src/generated/protocol.dart';

extension UserDataMapper on User {
  UserData get asDTO => UserData(
        userName: userInfo!.userName ?? userInfo!.fullName ?? userInfo!.email,
        email: userInfo!.email,
        profileUrl: userInfo!.imageUrl,
        incomingJoinRequestIds: incomingJoinRequests!.map((request) => request.id!).toList(),
      );
}
