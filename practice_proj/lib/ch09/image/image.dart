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
        body: Column(
          children: [
            const Image(image: AssetImage(_assetImagePath)),
            const Image(image: ResizeImage(AssetImage(_assetImagePath), width: 100,height: 500)),
            const Image(image: NetworkImage(_networkImagePath)),
            Image.network(_networkImagePath)
          ],
        ),
      ),
    );
  }
}
