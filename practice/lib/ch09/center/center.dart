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
        body: Container(
          color: Colors.yellow,
          child: const Center(
            heightFactor: 2,
            widthFactor: 2,
            child:  Icon(Icons.add_a_photo),
          ),
        ),
      )
    );
  }
}
