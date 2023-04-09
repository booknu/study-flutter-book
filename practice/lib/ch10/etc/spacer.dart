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
        body: Container(
          color: Colors.amber,
          child: Row(
            children: const [
              Icon(Icons.add),
              Icon(Icons.star),
              Icon(FontAwesomeIcons.heartPulse),
              Spacer(),
              Icon(Icons.message),
              Spacer(flex: 2),
              Icon(Icons.account_tree)
            ],
          ),
        ),
      ),
    );
  }
}
