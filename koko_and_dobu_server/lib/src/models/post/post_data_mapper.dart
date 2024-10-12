import 'package:koko_and_dobu_server/src/generated/protocol.dart';

extension PostDataMapper on Post {
  PostData get asDto => PostData(
        dormId: dormId,
        createdById: createdById,
        message: message,
        datePosted: datePosted,
      );
}
