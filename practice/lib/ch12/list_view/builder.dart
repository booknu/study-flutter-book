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

class MyWidget extends StatelessWidget {
  static List<Color> colors = <Color>[
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple
  ];

  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 100, // 값을 주지 않으면 infinity scroll 가능
      cacheExtent: 1000, // 이 픽셀만큼 화면 밖 요소들을 미리 빌드 해놓을 수 있음
      itemBuilder: (context, index) {
        // 스크롤을 해서 해당 위젯이 화면에 보이는 시점에 생성됨
        print('render: $index');
        return Container(
          color: colors[index % colors.length],
          height: 100,
          margin: const EdgeInsets.only(left: 5, right: 5, top: 5),
          child: Text('index: $index'),
        );
      },
    );
  }
}
