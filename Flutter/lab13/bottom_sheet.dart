import 'package:flutter/material.dart';
import 'package:flutter_demo/lab13/page1.dart';

class BottomSheet13 extends StatelessWidget {
  //const BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet",style: TextStyle(color: Colors.green),),
        centerTitle: true,

      ),
      body: Container(
        child:Column(
          children: [
            Text("Click button to show Bottom sheet"),
            ElevatedButton(onPressed: (){
              showModalBottomSheet(context: context, builder: (context){
                return Page1();
              });
            }, child: Text("Show"))
          ],
        ),
      ),
    ));
  }
}
