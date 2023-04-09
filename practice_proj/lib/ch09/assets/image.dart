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
            Image.asset('assets/ch09/images/1.png')
          ],
        ),
      ),
    );
  }
}
