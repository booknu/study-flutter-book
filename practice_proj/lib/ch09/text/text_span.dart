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
        body: Text.rich(
          TextSpan(
            text: 'Normal',
            style: TextStyle(
              fontSize: 20
            ),
            children: [
              TextSpan(
                text: ':Italic',
                style: TextStyle(
                  fontStyle: FontStyle.italic
                ),
                children: [ // 자식들은 부모 스타일을 물려받는다.
                  TextSpan(text: ':ItalicChild'),
                  TextSpan(text: ':ItalicChildRed', style: TextStyle(color: Colors.red))
                ]
              ),
              TextSpan(
                text: ':NormalBold',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                )
              )
            ]
          )
        )
      ),
    );
  }
}
