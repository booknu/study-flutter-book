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
          title: const Center(child: Text('test')),
        ),
        body: const MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(height: 300, color: Colors.red),
        Container(height: 300, color: Colors.orange),
        Container(height: 300, color: Colors.yellow),
        Container(height: 300, color: Colors.green),
        Container(height: 300, color: Colors.blue),
        Container(height: 300, color: Colors.indigo),
        Container(height: 300, color: Colors.purple),
      ],
    );
  }
}
