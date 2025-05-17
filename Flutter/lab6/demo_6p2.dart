
import 'package:flutter/material.dart';

class DemoPage2 extends StatelessWidget {
  //const ({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Scaffold(appBar: AppBar(title: Text("Demo"),),
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.blue,)),
          Expanded(child: Container(color: Colors.red,)),
          Expanded(child: Container(color: Colors.green,))
        ],
      ),);
  }
}
