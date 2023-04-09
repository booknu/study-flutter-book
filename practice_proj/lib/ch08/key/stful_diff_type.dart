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
    RedItemWidget(),
    BlueItemWidget()
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


class RedItemWidget extends StatefulWidget {
  const RedItemWidget({Key? key}) : super(key: key);

  /// Warning: Don't put any logic in `createState`
  @override
  State<RedItemWidget> createState() => _RedItemWidgetState(Colors.red);
}

class _RedItemWidgetState extends State<RedItemWidget> {
  Color color;

  _RedItemWidgetState(this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        width: 150,
        height: 150,
      ),
    );
  }
}

class BlueItemWidget extends StatefulWidget {
  const BlueItemWidget({Key? key}) : super(key: key);

  /// Warning: Don't put any logic in `createState`
  @override
  State<BlueItemWidget> createState() => _BlueItemWidgetState(Colors.blue);
}

class _BlueItemWidgetState extends State<BlueItemWidget> {
  Color color;

  _BlueItemWidgetState(this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        width: 150,
        height: 150,
      ),
    );
  }
}
