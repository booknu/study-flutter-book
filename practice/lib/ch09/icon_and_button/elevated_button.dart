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
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                print('pressed!');
              },
              child: const Text('Click me!'),
            ),
            const ElevatedButton(
              onPressed: null, // null 이 입력되면 비활성화
              child: Text('Disabled...'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Red!!');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
              ),
              child: const Text('Click me!'),
            )
          ],
        ),
      ),
    );
  }
}
