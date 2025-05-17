import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  //const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Scaffold(appBar: AppBar(title: Text("Demo"),),
                    body: Row(
                      children: [
                        Expanded(child: Container(color: Colors.blue,)),
                        Expanded(child: Container(color: Colors.red,)),
                        Expanded(child: Container(color: Colors.green,))
                      ],
                    ),);
  }
}
