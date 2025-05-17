import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("Page1",style: TextStyle(color: Colors.greenAccent,fontSize: 50),),
        decoration: BoxDecoration(
          borderRadius:BorderRadius.only(topLeft: Radius.zero,)
        ),
      ),
    );
  }
}
