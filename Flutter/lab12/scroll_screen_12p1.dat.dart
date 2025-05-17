import 'package:flutter/material.dart';

class ScrollScreen extends StatefulWidget {
  @override
  State<ScrollScreen> createState() => _ScrollScreenState();
}

class _ScrollScreenState extends State<ScrollScreen> {
  //const S({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scroll Screen",style: TextStyle(fontSize: 30,color: Colors.green),),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 200, color: Colors.red),
            Container(height: 200, color: Colors.yellow),
            Container(height: 200, color: Colors.green),
            Container(height: 200, color: Colors.pinkAccent),
          ],
        ),
      ),
    );
  }
}

