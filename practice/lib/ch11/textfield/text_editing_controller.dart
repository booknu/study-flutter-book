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
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      print('onKeyPressed, controller.text=${controller.text}');
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          style: const TextStyle(fontSize: 15.0),
          controller: controller,
        ),
        ElevatedButton(
          child: const Text('submit'),
          onPressed: () {
            print('onSubmit, controller.text=${controller.text}');
          },
        )
      ],
    );
  }
}
