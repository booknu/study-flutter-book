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
                Navigator.pushNamed(
                  context,
                  '/two',
                  arguments: ScreenTwoArguments(
                    title: 'title of parameter!',
                    message: 'title of message!',
                  ),
                );
              },
              child: const Text('Go to Screen 2!'),
            ),
          )
        ],
      ),
    );
  }
}

class ScreenTwoArguments {
  final String title;
  final String message;

  ScreenTwoArguments({required this.title, required this.message});
}

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenTwoArguments args =
        ModalRoute.of(context)!.settings.arguments as ScreenTwoArguments;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Screen 2')),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text('args.title: ${args.title}'),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text('args.message: ${args.message}'),
          ),
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
