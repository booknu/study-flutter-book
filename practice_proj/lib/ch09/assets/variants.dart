import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Image test')),
        body: Column(
          children: [
            /// 이 경로의 실제 아이콘은 Home 이지만, 해상도에 따라 2.0x 의 Heart 아이콘이 출력됨
            Image.asset('assets/ch09/variants/1.png')
          ],
        ),
      ),
    );
  }
}
