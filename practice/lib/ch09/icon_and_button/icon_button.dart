import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void onPressed() {
    print('!!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(
                iconSize: 20,
                onPressed: onPressed,
                icon: const Icon(
                  Icons.add,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
