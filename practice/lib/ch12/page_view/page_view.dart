import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('test')),
        ),
        body: const MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  static List<Color> colors = <Color>[
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple
  ];

  PageController pageController = PageController(
    /// 0-indexed
    initialPage: 0,
    /// 현재 페이지가 화면의 80% 에만 보임 (즉, 앞 뒤 페이지를 약간씩 볼 수 있음)
    viewportFraction: 0.8
  );

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(20),
          color: colors[index % colors.length],
        );
      },
    );
  }
}
