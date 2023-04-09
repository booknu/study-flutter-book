import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
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
      body: Navigator(
        pages: const [
          MaterialPage(
            child: ScreenOne(text: 'One'),
          ),
          MaterialPage(
            child: ScreenOne(text: 'Two'),
          )
        ],
        onPopPage: (route, result) => route.didPop(result),
      ),
    );
  }
}

class ScreenOne extends StatelessWidget {
  final String text;

  const ScreenOne({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Title : $text')),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenOne(text: 'Two'),
                  ),
                )
              },
              child: const Text('goto two'),
            )
          ],
        ),
      ),
    );
  }
}
