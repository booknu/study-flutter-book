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

main() async {
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      print('[request] method=${options.method}, path=${options.path}');
      print('[request data] ${options.data}');
      /// 서버가 응답을 내려준 것처럼 결과를 내림
      /// 단, 이 경우 [onResponse] 가 실행되지 않음
      handler.resolve(
        Response(
          requestOptions: options,
          data: {
            'fake': 'respnse',
          },
        ),
      );
    },

    onResponse: (response, handler) {
      print('[response] status=${response.statusCode}, path=${response.requestOptions.path}');
      print('[response data] ${response.data}');
      handler.next(response);
    },
  ));

  var requests = List.generate(3, (index) => request());
  var responses = await Future.wait(requests);

  responses.forEach((element) {
    print(element.data);
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
