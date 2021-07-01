import 'package:call_api_bloc/api/api_const.dart';
import 'package:call_api_bloc/posts/models/models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio,{String baseUrl})=_RestClient;

  @GET(APIConst.PATH_POST)
  Future<List<Post>> getPosts();

}