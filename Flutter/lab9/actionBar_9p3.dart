import 'package:flutter/material.dart';

class Actionbar9p3 extends StatelessWidget {
  //const Actionbar9p3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            // showDialog(context: context, builder: (context){
            //   return AlertDialog(
            //
            //   ),
            // });
          }, icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
