import 'package:koko_and_dobu_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class PostService {
  static Future<Post> getPostById(Session session, int postId) async {
    final post = await Post.db.findById(session, postId);
    if (post == null) {
      throw Exception('The post with id $postId does not exist');
    }
    return post;
  }
}
