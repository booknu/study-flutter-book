import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            /// true 인 경우 리스트 중간 스크롤 중에도 위로 살짝 올리면 앱바가 다시 펴짐
            floating: true,
            /// true 인 경우 접히더라도 한 줄 정도는 남음
            pinned: true,
            /// (floating=true) 인 경우만 :
            /// true 인 경우 스크롤이 멈춰도 앱바가 접히던/펴지던 애니매이션이 계속됨
            snap: true,
            /// 펴지는 크기 조절 가능
            expandedHeight: 300,
            /// elevation 효과 조절 가능
            elevation: 10,
            leading: IconButton(
              splashRadius: 20,
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
            title: const Text('AppBar Title'),
            actions: [
              IconButton(
                onPressed: () => {},
                icon: const FaIcon(FontAwesomeIcons.mapLocation),
              )
            ],
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(48.0),
              child: Theme(
                data: Theme.of(context).copyWith(
                    colorScheme:
                    ColorScheme.fromSwatch().copyWith(secondary: Colors.white)),
                child: Container(
                  height: 48.0,
                  alignment: Alignment.center,
                  child: const Text('AppBar Bottom Text'),
                ),
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 60.0,
            delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return ListTile(
                    title: Text('Item $index'),
                    subtitle: Text('subtitle $index'),
                    onTap: () {},
                  );
                },
                childCount: 100
            ),
          )
        ],
      ),
    );
  }
}
