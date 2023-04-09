import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: const CupertinoThemeData(
        brightness: Brightness.light,
      ),
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Title'),
        ),
        child: ListView(
          children: [
            CupertinoButton(
              child: const Text('button'),
              onPressed: () => {},
            ),
            const Center(child: Text('some text'))
          ],
        ),
      ),
    );
  }
}
