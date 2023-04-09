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
        body: Stack(
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
              width: 300,
              height: 300,
            ),
            Container(
              color: Colors.blue,
              width: 150,
              height: 150,
            )
          ],
        )
      ),
    );
  }
}
