import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _createContainers() {
      return [
        Container(
          width: 50,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.green,
        ),
        Container(
          width: 50,
          height: 150,
          color: Colors.blue,
        ),
      ];
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('test'),
        ),
        body: Container(
          color: Colors.amber,
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _createContainers(),
                ),
              ),
              Container(color: Colors.grey, height: 10),

              SizedBox(
                height: 200,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: _createContainers(),
                ),
              ),
              Container(color: Colors.grey, height: 10),

              SizedBox(
                height: 200,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: _createContainers(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
