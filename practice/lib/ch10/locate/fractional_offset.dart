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
        body: Stack(
          children: [
            Container(
              color: Colors.red,
            ),
            Align(
              alignment: FractionalOffset.center,
              child: Container(
                color: Colors.green,
                width: 300,
                height: 300,
              ),
            ),
            Align(
              alignment: const FractionalOffset(0.1, 0.5),
              child: Container(
                color: Colors.blue,
                width: 150,
                height: 150,
              ),
            )
          ],
        ),
      ),
    );
  }
}
