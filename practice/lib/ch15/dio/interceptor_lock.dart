import 'dart:async';
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
      /// lock, unlock 은 deprecated 된 것 같음
      // dio.lock();
      handler.next(options);
      Timer(const Duration(seconds: 3), () {
        // dio.unlock();
      });
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
