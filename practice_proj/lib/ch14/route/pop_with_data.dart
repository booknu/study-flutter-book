import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenOne(),
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
              onPressed: () async {
                ScreenTwoResult result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ScreenTwo(printText: 'This is parameter!'),
                  ),
                );

                print('push result: $result');
              },
              child: const Text('Go to Screen 2!'),
            ),
          )
        ],
      ),
    );
  }
}

class ScreenTwoResult {
  final String name;
  final String password;

  ScreenTwoResult({required this.name, required this.password});

  @override
  String toString() {
    // TODO: implement toString
    return '{name=$name, password=$password}';
  }
}

class ScreenTwo extends StatelessWidget {
  final String printText;

  const ScreenTwo({super.key, this.printText = 'default text'});

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
            child: Text(printText),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  ScreenTwoResult(
                    name: 'return name!',
                    password: 'return password!',
                  ),
                );
              },
              child: const Text('Pop screen!'),
            ),
          )
        ],
      ),
    );
  }
}
