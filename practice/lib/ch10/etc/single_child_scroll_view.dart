import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.amber,
            child: Column(
              children: [
                Container(height: 500, color: Colors.red),
                Container(height: 500, color: Colors.green),
                Container(height: 500, color: Colors.blue),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
