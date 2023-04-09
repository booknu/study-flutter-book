import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String _textFile = 'assets/ch09/texts/1.txt';

  const MyApp({Key? key}) : super(key: key);

  Future<String> getTextByRootBundle() async {
    return await rootBundle.loadString(_textFile);
  }

  Future<String> getTextByDefaultAssetBundle(BuildContext buildContext) async {
    return await DefaultAssetBundle.of(buildContext).loadString(_textFile);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Image test')),
        body: Column(
          children: [
            Image.asset('assets/ch09/images/1.png'),
            FutureBuilder(
              future: getTextByRootBundle(),
              builder: (context, snapshot) {
                return Text('rootBundle 사용 : ${snapshot.data}');
              },
            ),
            FutureBuilder(
              future: getTextByDefaultAssetBundle(context),
              builder: (context, snapshot) {
                return Text('DefaultAssetBundle.of(context) 사용 : ${snapshot.data}');
              },
            )
          ],
        ),
      ),
    );
  }
}
