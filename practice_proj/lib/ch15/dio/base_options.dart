import 'dart:io';

import 'package:dio/dio.dart';

main() async {
  var dio = Dio(
    BaseOptions(
        baseUrl: 'https://reqres.in/api/',
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.acceptHeader: 'application/json'
        }),
  );

  var response = await dio.get(
    '/users',
    queryParameters: {
      'page': 2,
    },
  );

  print(response.data);
}
