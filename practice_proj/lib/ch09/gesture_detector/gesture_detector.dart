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
        body: Row(
          children: [
            GestureDetector(
              child: const Icon(Icons.add),
              onTap: () {
                print('tab!');
              },
              /// 이벤트 정보가 존재하는 경우도 있음
              onVerticalDragStart: (DragStartDetails details) {
                print(details);
              },
            )
          ],
        ),
      ),
    );
  }
}
