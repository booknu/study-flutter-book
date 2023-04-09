import 'package:flutter/material.dart';

main() {
  runApp(const MyStateful());
}

class MyStateful extends StatefulWidget {
  const MyStateful({Key? key}) : super(key: key);

  @override
  State<MyStateful> createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {
  bool enabled = false;
  String stateText = 'disabled';

  /// [enabled] 와 [stateText] 의 값을 반전시키는 함수
  void changeCheck() {
    setState(() {
      if (enabled) {
        stateText = 'disabled';
        enabled = false;
      } else {
        stateText = 'enabled';
        enabled = true;
      }
    });

    print('changed! $enabled');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Widget',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Stateful Test'),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// 버튼을 누르면 상태가 변경되고, 화면이 갱신됨
                /// 화면 갱신 시 MyStateful 은 새로 생성 되지만, _MyStatefulState 는 유지됨
                IconButton(
                    onPressed: changeCheck,
                    icon: enabled
                        ? const Icon(
                      Icons.check_box,
                      size: 20,
                    )
                        : const Icon(Icons.check_box_outline_blank, size: 20)
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    stateText,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
