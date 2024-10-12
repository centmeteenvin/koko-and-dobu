import 'package:koko_and_dobu_server/src/generated/protocol.dart';
import 'package:koko_and_dobu_server/src/helpers/session_user_extension.dart';
import 'package:koko_and_dobu_server/src/models/dorm/dorm_data_mapper.dart';
import 'package:serverpod/serverpod.dart';

Future<DormData> createDormImplementation(
  Session session, {
  required double lat,
  required double long,
  required String name,
  String? websiteUrl,
}) async {
  final currentUser = await session.currentUserOrThrow;
  if (currentUser.dormId != null) {
    throw Exception('User is already part of a dorm');
  }
  final dorm = await Dorm.db.insertRow(
    session,
    Dorm(
      lat: lat,
      long: long,
      ownerId: currentUser.id!,
      websiteUrl: websiteUrl,
      name: name,
    ),
  );
  await Dorm.db.attachRow.owner(session, dorm, currentUser);
  await Dorm.db.attachRow.members(session, dorm, currentUser);
  return dorm.asDTO;
}
