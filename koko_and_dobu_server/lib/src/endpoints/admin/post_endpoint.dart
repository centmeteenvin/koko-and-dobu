import 'package:koko_and_dobu_server/src/generated/protocol.dart';
import 'package:koko_and_dobu_server/src/helpers/session_user_extension.dart';
import 'package:koko_and_dobu_server/src/models/post/post_data_mapper.dart';
import 'package:koko_and_dobu_server/src/services/dorm_service.dart';
import 'package:koko_and_dobu_server/src/services/post_service.dart';
import 'package:koko_and_dobu_server/src/services/user_service.dart';
import 'package:serverpod/serverpod.dart';

class PostEndpoint extends Endpoint {
  @override
  bool get requireLogin => true;

  Future<Post> createPost(Session session, {required int dormId, required int userId, required String message}) async {
    final (:dorm, :user) = await DormService.getUserAndDormById(session, dormId, userId);

    final post = await Post.db.insertRow(session, Post(dormId: dormId, createdById: userId, message: message, datePosted: DateTime.now().toUtc()));
    await Post.db.attachRow.dorm(session, post, dorm);
    await Post.db.attachRow.createdBy(session, post, user);
    return post;
  }

  Future<void> deletePost(Session session, int postId, int userId) async {
    final post = await PostService.getPostById(session, postId);
    final user = await UserService.getUserById(session, userId);
    if (user.id != post.createdById) {
      throw Exception("User ${user.id} tried to delete post $postId that wasn't theirs");
    }
    await Post.db.deleteRow(session, post);
  }

  /// Fetch the given post by it's id given that the current User is part of the same dorm
  Future<PostData> getPostById(Session session, int postId) async {
    final post = await PostService.getPostById(session, postId);
    final currentUser = await session.currentUserOrThrow;
    if (currentUser.dormId != post.dormId) {
      throw Exception('User ${currentUser.id} cannot fetch post $postId from dorm ${post.dormId} because the user is part of dorm ${currentUser.dormId}');
    }
    return post.asDto;
  }

  Future<void> seenBy(Session session, int postId, int userId) async {
    final post = await PostService.getPostById(session, postId);
    final user = await UserService.getUserById(session, userId);
    if (user.dormId != post.dormId) {
      throw Exception(
        'User $userId cannot have seen post $postId because the users dorm ${user.dormId} does not correspond with the posts dorm ${post.dormId}',
      );
    }
    await Post.db.attachRow.seenBy(session, post, user);
  }
}
