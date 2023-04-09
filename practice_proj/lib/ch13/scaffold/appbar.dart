import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.map),
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
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: Theme(
              data: Theme.of(context).copyWith(
                  colorScheme: ColorScheme.fromSwatch()
                      .copyWith(secondary: Colors.white)),
              child: Container(
                height: 48.0,
                alignment: Alignment.center,
                child: const Text('AppBar Bottom Text'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
