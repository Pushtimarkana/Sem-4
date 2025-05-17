import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextWidget7p1 extends StatelessWidget {
  //const TextWidget7p1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Hello World",
            style: TextStyle(fontSize: 50,color: Colors.pink,fontWeight:FontWeight.bold,),)
        ],

      ),
    );
  }

}
