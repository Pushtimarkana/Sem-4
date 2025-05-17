import 'package:flutter/material.dart';
import 'package:flutter_demo/main.dart';

class HomePage9p1 extends StatelessWidget {
  const HomePage9p1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello from Home 🏠",style: TextStyle(fontSize: 50,color: Colors.black),)
          ],
        ),
      ),
    );
  }
}
