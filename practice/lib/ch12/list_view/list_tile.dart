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
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: 100,
      // 값을 주지 않으면 infinity scroll 가능
      cacheExtent: 1000,
      // 이 픽셀만큼 화면 밖 요소들을 미리 빌드 해놓을 수 있음
      itemBuilder: (context, index) {
        // 스크롤을 해서 해당 위젯이 화면에 보이는 시점에 생성됨
        print('render: $index');
        return ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: colors[index % colors.length],
          ),
          title: Text("I'm index $index !!"),
          subtitle: Text("subtitle for - $index"),
          trailing: const Icon(Icons.add_circle_outline),
          /// [onTap] 을 주지 않으면 클릭 애니매이션이 나오지 않는다.
          onTap: () {
            print('pressed $index!');
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(height: 2,);
      },
    );
  }
}
