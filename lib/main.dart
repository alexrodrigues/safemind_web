import 'package:safemind_web/widget/contact.dart';
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
  final ScrollController _scrollController = ScrollController();


  void _scrollToIndex(int index) {
    // Calculate the offset of each section based on the index
    double offset = 0.0;
    switch (index) {
      case 0:
        offset = 0.0; // HomeImage
        break;
      case 1:
        offset = 500.0; // PsicoInformation (set appropriate offset based on the widget's height)
        break;
      case 2:
        offset = 1000.0; // WhoAmI
        break;
      case 3:
        offset = 1100.0; // ContactForm
        break;
    }
    _scrollController.animateTo(
      offset,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: WebBar(onItemTap: (p0) => {
          _scrollToIndex(p0)
        }),
      ),
      body: ListView(
        controller: _scrollController,
        children: [
          HomeImage(),
          PsicoInformation(),
          WhoAmI(),
          ContactForm(),
        ],
      )
    );
  }
}