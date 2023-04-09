import 'package:dio/dio.dart';

main() async {
  var response = await Dio().request(
    'https://reqres.in/api/users',
    options: Options(method: 'GET'),
    queryParameters: {'page': 2},
  );
}
