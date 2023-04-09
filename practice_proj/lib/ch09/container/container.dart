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
              decoration: BoxDecoration(
                border: Border.all(
                  width: 10,
                  color: Colors.black
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8)
                )
              ),
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10),
              child: Image.asset('assets/images/1.png'),
            )
          ],
        ),
      ),
    );
  }
}
