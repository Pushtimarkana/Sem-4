import 'package:flutter/material.dart';
import 'package:flutter_demo/lab13/bottom_sheet.dart';
import 'package:flutter_demo/lab13/page1.dart';
import 'package:flutter_demo/lab13/page2.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {

  var index=0;
  List<Widget> list=[Page1(),BottomSheet13(),Page2()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value){
            setState(() {
              index=value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.add_box),label: "Page1"),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance),label: "Page2"),
      ]),
    );
  }
}
