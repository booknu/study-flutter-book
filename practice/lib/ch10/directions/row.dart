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
        appBar: AppBar(title: const Text('test'),),
        body: Column(
          children: [
            Row(
              children: const [
                Text('1'),
                Text('2'),
                Text('3'),
                Text('4'),
                Text('5')
              ],
            ),
            Row(
              children: const [
                Text('a'),
                Text('b')
              ],
            )
          ],
        ),
      ),
    );
  }
}
