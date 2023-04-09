import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        body: const MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: ElevatedButton(
              child: const Text('Show Date Picker'),
              onPressed: () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2016),
                  lastDate: DateTime(2030),
                );

                print('picked: ${DateFormat('yyyy-MM-dd').format(picked!)}');
              },
            ),
          ),
          ElevatedButton(
            child: const Text('Show time Picker'),
            onPressed: () async {
              TimeOfDay? picked = await showTimePicker(
                initialTime: TimeOfDay.now(),
                context: context,
              );

              print('picked: $picked');
            },
          ),
        ],
      ),
    );
  }
}
