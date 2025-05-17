import 'package:flutter/material.dart';

class DemoPage3 extends StatelessWidget {
  //const DemoPage3({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Scaffold(appBar: AppBar(title: Text("Demo"),),
      body: Row(
        children: [
          Expanded(child:
                      Column(children: [Expanded(child:Container(color: Colors.red,),),
                                        Expanded(child:Container(color: Colors.brown,),),
                                        Expanded(child:Container(color: Colors.black,),)
                      ],)),
          Expanded(child:
                      Column(children:
                                      [Expanded(child:Container(color: Colors.green,) ,),
                                        Expanded(child:Container(color: Colors.blue,),),
                                      Expanded(child:Container(color: Colors.orange,),)
          ],)),
          Expanded(child:
                      Column(children:
                                      [Expanded(child:Container(color: Colors.blue,),),
                                      Expanded(child:Container(color: Colors.purple,),),
                                      Expanded(child:Container(color: Colors.pink,),)
          ],)),
        ],
      ),);
  }
}
