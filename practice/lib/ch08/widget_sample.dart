import 'package:flutter/material.dart'; // material 스타일로 구성

void main() {
  runApp(
    const MyApp() // 위젯 트리의 루트에 루트 위젯 등록
  );
}

/// stateless 위젯 (뷰 갱신 불가)
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// 상중하로 앱을 구성하는 뼈대
      home: Scaffold(
        appBar: AppBar(
          title: const Text('test'),
        ),
        body: Center(
          /// 사용자 이벤트 처리
          child: GestureDetector(child: const Text('test body')),
        ),
      ),
    );
  }
}
