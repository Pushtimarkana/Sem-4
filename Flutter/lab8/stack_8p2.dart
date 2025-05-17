import 'package:flutter/material.dart';

class Stack8p2 extends StatelessWidget {
  //const Stack8p2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("asets/Images/img.png",fit: BoxFit.cover,),
            Text("Hello World ",style: TextStyle(fontSize: 30,color: Colors.red),),
            Positioned(right: 0,top: 0,child: Text("Hello",style: TextStyle(fontSize:50 ),))
          ],
        ),
      ),
      
    );
  }
}
