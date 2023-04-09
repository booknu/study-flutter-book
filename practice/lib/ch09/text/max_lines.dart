import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Text(
          'Some very long text! Some very long text! Some very long text! Some very long text! '
          'Some very long text! Some very long text! Some very long text! Some very long text! '
          'Some very long text! Some very long text! Some very long text! Some very long text! '
          'Some very long text! Some very long text! Some very long text! Some very long text! ',
          maxLines: 2,
          overflow: TextOverflow.fade,
        )
      ),
    );
  }
}
