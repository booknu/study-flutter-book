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
        body: const TextFieldWidget(),
      ),
    );
  }
}

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: const TextField(
            style: TextStyle(fontSize: 15.0),
            decoration: InputDecoration(
              labelText: 'labelText',
              prefixIcon: Icon(Icons.search),
              /// OutlineInputBorder, UnderlineInputBorder
              border: OutlineInputBorder(),
              hintText: 'hintText',
              helperText: '입력창 왼쪽 아래에 표시되는 helperText',
              counterText: '입력창 오른쪽 아래에 표시되는 counterText',
              errorText: '입력창 왼쪽 아래에 표시되는 errorText'
            ),
          ),
        )
      ],
    );
  }
}
