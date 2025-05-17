import 'package:flutter/material.dart';
import 'package:flutter_demo/lab9/about_page_9p1.dart';
import 'package:flutter_demo/lab9/home_page_9p1.dart';

class Tabview9p1 extends StatefulWidget {
  @override
  State<Tabview9p1> createState() => _Tabview9p1State();
}

class _Tabview9p1State extends State<Tabview9p1> {
  //const Tabview9p1({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "About",
              ),
            ]),
          ),
          body: TabBarView(children: [
            HomePage9p1(),
            AboutPage9p1()

          ]),
        ));
  }
}
