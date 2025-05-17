import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Customwidget7p2 extends StatelessWidget {
  //const TextWidget7p1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
            Padding(padding: const EdgeInsets.all(8.0),
              child: customwidget(title: "Hello",fontsize: 20,color: Colors.red),
    )
        ]

      )

    );



  }
  Widget customwidget ({required  String title,required  double? fontsize,required  Color color}){
    return Text(title,style: TextStyle(fontSize: fontsize,color:color ),);
  }
}
