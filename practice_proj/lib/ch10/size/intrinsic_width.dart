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
        appBar: AppBar(
          title: const Text('test'),
        ),
        body: Container(
          color: Colors.yellow,
          child: IntrinsicWidth(
            child: Column(
              /// stretch 를 해줘야 실제로 크기가 늘어난다.
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(color: Colors.red, width: 50, height: 50),
                Container(color: Colors.green, width: 150, height: 150),
                Container(color: Colors.blue, width: 100, height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
