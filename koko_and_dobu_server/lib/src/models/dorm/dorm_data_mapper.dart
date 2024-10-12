import 'package:koko_and_dobu_server/src/generated/protocol.dart';

extension DormDataMapper on Dorm {
  DormData get asDTO => DormData(
        name: name,
        lat: lat,
        long: long,
        websiteUrl: websiteUrl,
        ownerId: ownerId,
        memberIds: members!.map((member) => member.id!).toList(),
        postIds: posts!.map((post) => post.id!).toList(),
        outgoingRequestIds: outgoingRequests!.map((request) => request.id!).toList(),
      );
}
