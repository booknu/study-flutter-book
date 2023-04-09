import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

/// SingleTickerProviderStateMixin : 위젯이 애니메이션 효과로 나타나게 하기 위함
class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  /// `late` 로 선언하여 [initState] 에서 초기화 되도록 함
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Test')),
          bottom: TabBar(
            controller: tabController,
            tabs: const [
              Tab(text: 'One'),
              Tab(text: 'Two'),
              Tab(text: 'Three'),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            Center(child: Text('One !!!')),
            Center(child: Text('Two !!!')),
            Center(child: Text('Three !!!')),
          ],
        ),
      ),
    );
  }
}

