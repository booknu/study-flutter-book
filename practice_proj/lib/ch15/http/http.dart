import 'dart:convert';

import 'package:http/http.dart' as http;

main() async {
  await simpleGet();
  await withHeader();
  await simplePost();
  await multipleRequestsBySingleConnection();
}

simpleGet() async {
  http.Response response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

  print(response.statusCode);
  print(response.body);
  print(jsonDecode(response.body));
}

withHeader() async {
  Map<String, String> headers = {
    'content-type': 'application/json',
    'accept': 'application/json'
  };

  http.Response response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
    headers: headers,
  );

  print('with header: ${response.statusCode}');
}

simplePost() async {
  http.Response response = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    body: {
      'title': 'hello',
      'body': 'world',
      'userId': '1',
    },
  );

  print('post: ${response.statusCode}');
  print(response.body);
}

multipleRequestsBySingleConnection() async {
  // 하나의 연결을 여러번 재사용
  http.Client client = http.Client();

  try {
    http.Response response = await client.post(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      body: {
        'title': 'hello',
        'body': 'world',
        'userId': '1',
      },
    );
    print('single connection: ${response.statusCode}');
  } finally {
    client.close();
  }
}