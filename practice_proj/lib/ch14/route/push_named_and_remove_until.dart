import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainScreen(),
      routes: {
        '/main': (context) => const MainScreen(),
        '/a': (context) => const ScreenA()
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Main Screen')),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/a');
              },
              child: const Text('Push A !'),
            ),
          )
        ],
      ),
    );
  }
}

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Screen A')),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/a');
              },
              child: const Text('Push A again !'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  /// pop 이후 /a 를 push
                  '/a',
                  (route) {
                    /// 스택의 최상위 Route 가 /a 가 아닐 때까지 pop
                    return route.settings.name != '/a';
                  },
                );
              },
              child: const Text(
                  'Push named and remove until : Remove all /a and push /a!'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  /// pop 이후 /a 를 push
                  '/a',
                  /// ModalRoute.withName 을 사용하면 해당 라우트까지 pop
                  ModalRoute.withName('/main'),
                );
              },
              child: const Text(
                  'Push named and remove until (ModalRoute.withName) : Remove all /a and push /a!'),
            ),
          )
        ],
      ),
    );
  }
}
