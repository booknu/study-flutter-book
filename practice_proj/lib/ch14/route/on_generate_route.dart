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
      },

      /// routes 에서 처리되지 않은 경로는 여기서 처리됨
      /// null 반환 시 알 수 없는 경로
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/dynamicRoute':
            RouteArgument argument = settings.arguments as RouteArgument;
            switch (argument.target) {
              case 'A':
                return MaterialPageRoute(
                  builder: (context) => const ScreenA(),
                  settings: settings,
                );
              case 'B':
                return MaterialPageRoute(
                  builder: (context) => const ScreenB(),
                  settings: settings,
                );
            }
            break;
        }
      },

      /// 알 수 없는 경로는 여기서 처리함
      onUnknownRoute: (settings) {
        print('unknown route: $settings');
        return MaterialPageRoute(builder: (context) => const ScreenOne());
      },
    );
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RouteArgument routeArgumentForA = RouteArgument(
      target: 'A',
      title: 'Target is A!',
      message: 'A!',
    );

    RouteArgument routeArgumentForB = RouteArgument(
      target: 'B',
      title: 'Target is B!',
      message: 'B!',
    );

    RouteArgument routeArgumentForUnknown = RouteArgument(
      target: 'Unknown',
      title: 'Target is UNK!',
      message: 'UNK!',
    );

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
                  '/dynamicRoute',
                  arguments: routeArgumentForA,
                );
              },
              child:
                  Text('Go to /dynamicRoute with argument: $routeArgumentForA'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/dynamicRoute',
                  arguments: routeArgumentForB,
                );
              },
              child:
                  Text('Go to /dynamicRoute with argument: $routeArgumentForB'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/dynamicRoute',
                  arguments: routeArgumentForUnknown,
                );
              },
              child: Text(
                  'Go to /dynamicRoute with argument: $routeArgumentForUnknown'),
            ),
          ),
        ],
      ),
    );
  }
}

class RouteArgument {
  final String target;
  final String title;
  final String message;

  RouteArgument(
      {required this.target, required this.title, required this.message});

  @override
  String toString() {
    // TODO: implement toString
    return 'target=$target, title=$title, message=$message';
  }
}

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RouteArgument args =
        ModalRoute.of(context)!.settings.arguments as RouteArgument;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Screen A')),
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
        ],
      ),
    );
  }
}

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RouteArgument args =
        ModalRoute.of(context)!.settings.arguments as RouteArgument;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Screen B')),
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
        ],
      ),
    );
  }
}
