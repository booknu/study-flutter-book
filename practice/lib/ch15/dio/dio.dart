import 'package:dio/dio.dart';

main() async {
  await simple();
}

simple() async {
  var response = await Dio().get('https://reqres.in/api/users?page=2');

  print(response.statusCode); // 200
  print(response.data.runtimeType); // Map<String, dynamic>
}

