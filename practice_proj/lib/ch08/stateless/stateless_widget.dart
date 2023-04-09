import 'package:flutter/material.dart';

void main() {
  runApp(MyStateless());
}

class MyStateless extends StatelessWidget {
  bool enabled = false;
  String stateText = 'disabled';

  /// [enabled] 와 [stateText] 의 값을 반전시키는 함수
  void changeCheck() {
    if (enabled) {
      stateText = 'disabled';
      enabled = false;
    } else {
      stateText = 'enabled';
      enabled = true;
    }

    print('changed! $enabled');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless Widget',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateless Test'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// 이 버튼을 누르면 클래스의 필드 값은 변경되지만, 화면은 갱신되지 않음
              /// 애초에 Stateless 위젯의 필드는 final 로 선언하라고 권고함
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
