import 'package:dio/dio.dart';

main() async {
  var response = await Dio().get('https://reqres.in/api/users', queryParameters: {'page': 2});

  print(response.statusCode);
  print(response.data);
}