import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Text(
          'Some multiline text!!\n1\n2',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.blue,
            fontSize: 18, // 폰트 크기
            height: 2, // 세로 크기 (줄 간격) -> fontSize 의 n 배
            backgroundColor: Colors.amber,
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.wavy
          ),
        )
      ),
    );
  }
}
