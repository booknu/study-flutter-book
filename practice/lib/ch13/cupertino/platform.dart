import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isWindows) {
      return windowsUi();
    } else if(Platform.isAndroid) {
      return androidUi();
    }
    return const Text('Unknown');
  }

  Widget androidUi() {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(child: const Text('button'), onPressed: () => {}),
            const Text('I am Android')
          ],
        ),
      ),
    );
  }

  Widget windowsUi() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(child: const Text('button'), onPressed: () => {}),
            const Text('I am Windows')
          ],
        ),
      ),
    );
  }
}
