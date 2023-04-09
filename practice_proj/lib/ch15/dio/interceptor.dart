import 'dart:io';
import 'package:dio/dio.dart';

var dio = Dio(
  BaseOptions(
    baseUrl: 'https://reqres.in/api/',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json'
    },
  ),
);


/// 필요한 함수들만 재정의
class MyInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('[request] method=${options.method}, path=${options.path}');
    print('[request data] ${options.data}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('[response] status=${response.statusCode}, path=${response.requestOptions.path}');
    print('[response data] ${response.data}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
        '[error] status=${err.response?.statusCode}, path=${err.requestOptions.path}');
    super.onError(err, handler);
  }
}


main() async {
  dio.interceptors.add(MyInterceptor());

  var requests = List.generate(3, (index) => request());
  var responses = await Future.wait(requests);

  responses.forEach((element) {
  });
}

Future<Response<dynamic>> request() {
  return dio.get(
    '/users',
    queryParameters: {
      'page': 2,
    },
  );
}
