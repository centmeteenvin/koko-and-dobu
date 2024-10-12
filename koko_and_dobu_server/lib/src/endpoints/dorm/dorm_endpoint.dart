import 'package:koko_and_dobu_server/src/endpoints/dorm/implementations/dorm_endpoint_creation_implementation.dart';
import 'package:koko_and_dobu_server/src/endpoints/dorm/implementations/dorm_endpoint_request_mixin.dart';
import 'package:koko_and_dobu_server/src/generated/protocol.dart';
import 'package:koko_and_dobu_server/src/helpers/session_user_extension.dart';
import 'package:koko_and_dobu_server/src/models/dorm/dorm_data_mapper.dart';
import 'package:koko_and_dobu_server/src/services/dorm_service.dart';
import 'package:serverpod/serverpod.dart';

class DormEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<void> acceptDormJoinRequest(
    Session session,
    int dormId,
    int userId,
  ) async =>
      acceptDormJoinRequestImplementation(session, dormId, userId);

  Future<DormData> createDorm(
    Session session, {
    required double lat,
    required double long,
    required String name,
    String? websiteUrl,
  }) async =>
      createDormImplementation(session, lat: lat, long: long, name: name);

  Future<void> denyDormJoinRequest(Session session, int dormId, int userId) async => denyDormJoinRequestImplementation(session, dormId, userId);

  /// Fetched the dorm if the current user is part of the dorm or invited to the dorm
  Future<DormData> getDormById(Session session, int dormId) async {
    final user = await session.currentUserOrThrow;
    if (user.dormId != dormId || !user.incomingJoinRequests!.any((request) => request.dormId == dormId)) {
      throw Exception('''
User ${user.id} cannot fetch dorm $dormId because they are not affiliated with it in any way:
user's dormId: ${user.dormId}
user's requestIds: ${user.incomingJoinRequests!.map((request) => request.dormId)}
''');
    }
    final dorm = await DormService.getDormById(
      session,
      dormId,
      include: Dorm.include(
        members: User.includeList(),
        outgoingRequests: DormJoinRequest.includeList(),
      ),
    );
    return dorm.asDTO;
  }

  Future<void> sendDormJoinRequest(Session session, int dormId, int userId) async => sendDormJoinRequestImplementation(session, dormId, userId);
}
