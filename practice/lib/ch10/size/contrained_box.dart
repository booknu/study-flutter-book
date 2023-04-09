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
        body: Column(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints.expand(
                width: 300,
                height: 300,
              ),
              child: Container(
                color: Colors.red,
                width: 200,
                height: 200,
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 200,
                maxHeight: 50
              ),
              child: Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
