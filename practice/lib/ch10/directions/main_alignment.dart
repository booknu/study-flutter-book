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
        appBar: AppBar(title: const Text('test'),),
        body: Container(
          color: Colors.amber,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 50, height: 50, color: Colors.red,),
                  Container(width: 50, height: 50, color: Colors.blue,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(width: 50, height: 50, color: Colors.red,),
                  Container(width: 50, height: 50, color: Colors.blue,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 50, height: 50, color: Colors.red,),
                  Container(width: 50, height: 50, color: Colors.blue,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
