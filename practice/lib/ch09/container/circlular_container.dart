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
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                // color: Colors.orange,
                image: DecorationImage(
                  image: AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10),
            )
          ],
        ),
      ),
    );
  }
}
