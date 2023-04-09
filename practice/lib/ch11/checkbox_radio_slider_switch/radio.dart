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
  String? _selected = null;

  void onSelectedChanged(String? selected) {
    print(selected);
    setState(() {
      _selected = selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Radio(
                value: 'a',
                groupValue: _selected,
                onChanged: onSelectedChanged,
              ),
              const Text('select a!')
            ],
          ),
          Row(
            children: [
              Radio(
                value: 'b',
                groupValue: _selected,
                onChanged: onSelectedChanged,
              ),
              const Text('select b!')
            ],
          ),
          RadioListTile(
            title: const Text('select ccc!'),
            value: 'ccc',
            groupValue: _selected,
            onChanged: onSelectedChanged,
          ),
          Text('selected value: $_selected')
        ],
      ),
    );
  }
}
