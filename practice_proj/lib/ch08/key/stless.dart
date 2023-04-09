import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListWidget(),
    );
  }
}

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  List<Widget> widgetList = [
    const ColorItemWidget(Colors.red),
    const ColorItemWidget(Colors.blue)
  ];

  onButtonClick() {
    setState(() {
      widgetList.insert(1, widgetList.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('test'), ),
      body: Column(
        children: [
          Row(children: widgetList,),
          ElevatedButton(onPressed: onButtonClick, child: const Text('toggle'))
        ],
      ),
    );
  }
}

class ColorItemWidget extends StatelessWidget {
  final Color color;

  const ColorItemWidget(this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        width: 150,
        height: 150,
      )
    );
  }
}
