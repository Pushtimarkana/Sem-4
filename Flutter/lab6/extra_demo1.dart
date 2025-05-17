import 'package:flutter/material.dart';

class  ExtraDemo1 extends StatelessWidget {
  //const ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Extra demo 1",style: TextStyle(fontSize: 20,color: Colors.white,),
                                                textAlign: TextAlign.center,),
                      backgroundColor: Colors.black,titleSpacing: 120,),
      body:Column(
        children: [
          Expanded(child: Row(children: [Expanded(child:Container(color: Colors.cyanAccent,) )],), flex: 1,),
          Expanded(child: Row(children: [Expanded(child: Container(color: Colors.greenAccent,),flex: 2,),
                                          Expanded(child: Column(
                                            children: [Expanded(child: Container(color: Colors.purple,),),
                                                        Expanded(child: Container(color: Colors.yellow,))
                                            ],)),
                                        ],),flex: 2,),
          Expanded(child: Row(children: [Expanded(child: Container(color: Colors.orange,)),
                                            Expanded(child: Container(color: Colors.blue,)),
                                            Expanded(child: Container(color: Colors.red,))],),flex:1)

        ],
      ),
    );
  }
}
