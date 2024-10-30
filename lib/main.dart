import 'package:safemind_web/widget/home_image.dart';
import 'package:safemind_web/widget/psico_information.dart';
import 'package:safemind_web/widget/web_bar.dart';
import 'package:flutter/material.dart';
import 'package:safemind_web/widget/who_am_i.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: WebBar(),
      ),
      body: ListView(
        children: [
          HomeImage(),
          PsicoInformation(),
          WhoAmI()
        ],
      )
    );
  }
}