import 'api_const.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NetworkUtils {
  static Dio getDioClient() {
    final dio = Dio(
      BaseOptions(
        baseUrl: APIConst.BASE_URL,
        contentType: "application/json",
      ),
    ); // Provide a dio instance
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
      ),
    );
    return dio;
  }
}
