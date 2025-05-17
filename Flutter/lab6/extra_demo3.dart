import 'package:flutter/material.dart';

class  ExtraDemo3 extends StatelessWidget {
  //const ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Extra Demo3",style: TextStyle(fontSize: 20,color: Colors.white),),
                      backgroundColor: Colors.black,
                      titleSpacing: 120,),
      body: Column(
        children: [
                    Expanded(child: Row(
                                      children: [
                                                Expanded(child: Container(color: Colors.yellow,)),
                                                Expanded(child: Row(
                                                                  children: [
                                                                          Expanded(child: Column(
                                                                                                children: [
                                                                                                          Expanded(child: Container(color: Colors.lightBlueAccent,)),
                                                                                                          Expanded(child: Container(color: Colors.blue,))
                                                                                                ],
                                                                          )),
                                                                          Expanded(child: Column(
                                                                                              children: [
                                                                                                        Expanded(child: Container(color: Colors.purple,)),
                                                                                                        Expanded(child: Container(color: Colors.pink,))
                                                                                              ],
                                                                          ))
                                                                  ],
                                                ))
                                      ],
                    )),
                    Expanded(child: Row(
                                      children: [
                                                  Expanded(child: Container(color: Colors.grey,)),
                                                  Expanded(child: Row(
                                                                    children: [
                                                                              Expanded(child: Column(
                                                                                                    children: [
                                                                                                              Expanded(child: Container(color: Colors.lightBlue,),),
                                                                                                              Expanded(child: Container(color: Colors.blueGrey,),flex: 2,),
                                                                                                              Expanded(child: Container(color: Colors.orange,))
                                                                                                    ],
                                                                                )),
                                                                                Expanded(child: Column(
                                                                                                    children: [
                                                                                                      Expanded(child: Container(color: Colors.blueAccent,)),
                                                                                                      Expanded(child: Container(color: Colors.purple,)),
                                                                                                      Expanded(child: Container(color: Colors.brown,))
                                                                                                    ],
                                                                                )),
                                                                                Expanded(child: Column(
                                                                                                      children: [
                                                                                                        Expanded(child: Container(color: Colors.lightBlueAccent,),flex: 2,),
                                                                                                        Expanded(child: Container(color: Colors.greenAccent,)),
                                                                                                        Expanded(child: Container(color: Colors.grey,),flex: 2,)
                                                                                                      ],
                                                                                ))
                                                                    ],
                                                  )),
                                                  Expanded(child: Container(color: Colors.lightGreenAccent,))
                                      ],
                    )),
                    Expanded(child: Row(
                                      children: [
                                                  Expanded(child: Container(color: Colors.redAccent,)),
                                                  Expanded(child: Container(color: Colors.green)),
                                                  Expanded(child: Container(color: Colors.pink,))
                                      ],
                    )),
        ],
      ),
    );
  }
}
