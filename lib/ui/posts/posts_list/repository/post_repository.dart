import 'package:call_api_bloc/commons/api/api.dart';
import 'package:call_api_bloc/models/post.dart';

class PostRepository {
  fetchPosts() async {
    final client = RestClient(NetworkUtils.getDioClient());
    try {
      List<Post> post = await client.getPosts();
      return post;
    } catch (error) {
      throw (error);
    }
  }
}
