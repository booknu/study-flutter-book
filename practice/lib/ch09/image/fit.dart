import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String _assetImagePath = 'assets/ch09/images/1.png';
  static const String _networkImagePath = 'https://github.com/flutter/assets-for-api-docs/blob/master/assets/widgets/owl.jpg?raw=true';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 300,
          height: 200,
          color: Colors.red,
          child: Image.asset(
            _assetImagePath,
            width: 200,
            height: 200,
            // fit: BoxFit.fill
          ),
        )
      ),
    );
  }
}
