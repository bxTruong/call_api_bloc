import 'package:call_api_bloc/commons/api/api.dart';
import 'package:call_api_bloc/models/post.dart';

class PostDetailRepository {
  requestDetailPost(id) async {
    final client = RestClient(NetworkUtils.getDioClient());
    try {
      Post post = await client.getDetailPosts(id);
      return post;
    } catch (error) {
      throw (error);
    }
  }
}
