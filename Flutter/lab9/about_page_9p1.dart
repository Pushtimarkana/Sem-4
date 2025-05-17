import 'package:flutter/material.dart';
import 'package:flutter_demo/main.dart';

class AboutPage9p1 extends StatelessWidget {
  //const HomePage9p1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          children: [
            Text("Hello from About ....",style: TextStyle(fontSize: 50,color: Colors.black),)
          ],
        ),
      ),
    );
  }
}
