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
        body: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 30, top: 100),
              child: Image.asset('assets/images/1.png'),
            )
          ],
        ),
      ),
    );
  }
}
