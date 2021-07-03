import 'api_const.dart';
import 'package:call_api_bloc/models/models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part '../api/rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET(APIConst.PATH_POST)
  Future<List<Post>> getPosts();

  @GET("${APIConst.PATH_POST}/{id}")
  Future<Post> getDetailPosts(
    @Path("id") String id
  );
}
