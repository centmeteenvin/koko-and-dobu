import 'package:koko_and_dobu_server/src/generated/protocol.dart';

extension DormJoinRequestDataMapper on DormJoinRequest {
  DormJoinRequestData get asDto => DormJoinRequestData(
        dormId: dormId,
        userId: userId,
        sendDate: sendDate,
      );
}
