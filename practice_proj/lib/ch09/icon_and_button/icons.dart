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
          children: const [
            Icon(Icons.add, color: Colors.red,),
            /// [Icons.alarm] 이 아래와 같은 IconData 상수로 선언되어 있음
            Icon(IconData(0xe072, fontFamily: 'MaterialIcons'))
          ],
        ),
      ),
    );
  }
}
