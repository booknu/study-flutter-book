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
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
                width: 50,
              ),
            ),
            Container(
              color: Colors.green,
              width: 300,
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue,
                width: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
