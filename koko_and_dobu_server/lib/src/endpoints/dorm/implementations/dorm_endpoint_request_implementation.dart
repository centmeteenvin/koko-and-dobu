import 'package:koko_and_dobu_server/src/generated/protocol.dart';
import 'package:koko_and_dobu_server/src/services/dorm_service.dart';
import 'package:koko_and_dobu_server/src/services/user_service.dart';
import 'package:serverpod/serverpod.dart';

Future<void> acceptDormJoinRequestImplementation(
  Session session,
  int dormId,
  int userId,
) async {
  final user = await UserService.getUserById(session, userId);
  if (user.dormId != null) {
    throw Exception('This user already is part of a dorm');
  }

  final request = await DormJoinRequest.db.findFirstRow(
    session,
    where: (request) => request.dormId.equals(dormId) & request.userId.equals(userId),
  );

  if (request == null) {
    throw Exception('User $userId tried to join dorm $dormId while no request was send');
  }

  final dorm = await DormService.getDormById(session, dormId, include: Dorm.include(members: User.includeList()));
  if (dorm.members!.any((member) => member.id! == userId)) {
    // ignore: lines_longer_than_80_chars
    throw StateError('The user $userId tried to accept an invitation to the dorm $dormId while they already were a port of this dorm');
  }

  final result = await session.db.transaction((transaction) async {
    await DormJoinRequest.db.deleteWhere(session, where: (request) => request.userId.equals(userId));
    await Dorm.db.attachRow.members(session, dorm, user, transaction: transaction);
    return true;
  });
  if (!result) {
    throw Exception('An exception occurred while joining the dorm, try again');
  }
}

Future<void> denyDormJoinRequestImplementation(Session session, int dormId, int userId) async {
  final request = await DormJoinRequest.db.findFirstRow(session, where: (request) => request.dormId.equals(dormId) & request.userId.equals(userId));
  if (request == null) {
    throw Exception('User $userId tried to cancel a request from dorm $dormId while no request was found');
  }

  await DormJoinRequest.db.deleteRow(session, request);
}

Future<void> sendDormJoinRequestImplementation(Session session, int dormId, int userId) async {
  final user = await UserService.getUserById(session, userId, include: User.include(incomingJoinRequests: DormJoinRequest.includeList()));
  if (user.dormId != null) {
    throw Exception('This user already is part of a dorm');
  }

  if (user.incomingJoinRequests!.any((request) => request.dormId == dormId)) {
    throw Exception('This user already has a request to join this dorm');
  }

  final dorm = await DormService.getDormById(session, dormId);
  final request = await DormJoinRequest.db.insertRow(session, DormJoinRequest(dormId: dormId, userId: userId, sendDate: DateTime.now().toUtc()));

  await Dorm.db.attachRow.outgoingRequests(session, dorm, request);
  await User.db.attachRow.incomingJoinRequests(session, user, request);
}
