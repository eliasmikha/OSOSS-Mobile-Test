import 'package:dio/dio.dart';
import 'package:ososs/core/constants/enums/http_method.dart';

class HttpClient {
  static final dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),

    ),
  );

  static Future<Response> sendRequest({
    required HttpMethod httpMethod,
    required String url,
    Map<String, dynamic>? queryParameters,
  }) async {
    switch (httpMethod) {
      case HttpMethod.Get:
        return await dio.get(
          url,
          queryParameters: queryParameters,
        );
      default:
        return Response(requestOptions: RequestOptions());
    }
  }
}
