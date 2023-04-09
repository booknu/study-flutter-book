import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const ScreenOne(),
        '/two': (context) => const ScreenTwo()
      },
    );
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Screen 1')),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/two');
              },
              child: const Text('Go to Screen 2!'),
            ),
          )
        ],
      ),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Screen 2')),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                /// Navigator 에서 pop
                // Navigator.pop(context);
                /// pop 하지 않고 push
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Go to Screen 1!'),
            ),
          )
        ],
      ),
    );
  }
}
