import 'package:flutter/material.dart';

class Image8p1 extends StatelessWidget {
  //const ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          height: 500,
          width: 500,
          child: Image.network("https://tse4.mm.bing.net/th?id=OIP.7jpvMIikT02Kvy7-EU8maQHaEK&pid=Api&P=0&h=180",fit: BoxFit.cover,),
          // decoration: BoxDecoration(
          //   image: DecorationImage(image: AssetImage("asets/Images/img.png")),
          // ),
        ),
      )

    );
  }
}
