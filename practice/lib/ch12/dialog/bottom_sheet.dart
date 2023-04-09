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
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        child: const Text('Show Dialog'),
        onPressed: () {
          /// 다이얼로그가 나타나도 다른 위젯 이용 가능
          // showBottomSheet(
          /// 다이얼로그가 나타나면 다른 위젯 이용 불가
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.blueAccent.shade100,
            builder: (context) => SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(Icons.add),
                    title: const Text('추가'),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.remove),
                    title: const Text('삭제'),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
