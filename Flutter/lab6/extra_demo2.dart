import 'package:flutter/material.dart';

class  ExtraDemo2 extends StatelessWidget {
  //const ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Extra Demo2",style: TextStyle(fontSize: 20,color: Colors.white),),
                      backgroundColor: Colors.black,
                      titleSpacing: 120,),
      body: Column(
        children: [
          Expanded(child: Row(children: [Expanded(child: Container(color: Colors.brown,),flex: 3,),
                                          Expanded(child: Container(color: Colors.lightBlueAccent,))
          ],
          )),
          Expanded(child: Row(children:
                                        [Expanded(child: Container(color: Colors.yellow,)),
                                        Expanded(child: Row(children: [Expanded(child: Column(
                                                                                    children: [Expanded(child: Container(color: Colors.lightBlueAccent,)),
                                                                                              Expanded(child: Container(color: Colors.purple,))],
                                                                                ) ),
                                                                          Expanded(child: Column(
                                                                            children: [Expanded(child: Container(color: Colors.indigo,)),
                                                                                      Expanded(child: Container(color: Colors.red,))],))
                                                                          ]
                                        )),
                                        Expanded(child: Container(color: Colors.blue,))
                                        ],
          ),flex: 2,),
          Expanded(child: Row(children:
                                      [Expanded(child: Container(color: Colors.black,)),
                                          Expanded(child: Container(color: Colors.white,)),
                                          Expanded(child: Container(color: Colors.black,)),
                                          Expanded(child: Container(color: Colors.white,))
                                      ],
          ),flex: 2,),
          Expanded(child: Row(children: [
                                        Expanded(child: Row(children: [
                                                                      Expanded(child: Column(children: [Expanded(child: Container(color: Colors.blue,)),
                                                                                                          Expanded(child: Container(color: Colors.orange,))
                                                                                                        ],
                                                                      )),
                                                                      Expanded(child: Column(children: [Expanded(child: Row(children: [
                                                                                                                                    Expanded(child: Column(children: [
                                                                                                                                                                  Expanded(child: Container(color: Colors.yellow,)),
                                                                                                                                                                  Expanded(child: Container(color: Colors.green,))
                                                                                                                                                                ],
                                                                                                                                    )),
                                                                                                                                  Expanded(child: Column(children: [
                                                                                                                                                                  Expanded(child: Container(color: Colors.purple,)),
                                                                                                                                                                  Expanded(child: Container(color: Colors.grey,))
                                                                                                                                                                  ],
                                                                                                                                  ))
                                                                                                                                  ],
                                                                                                          )),
                                                                                                          Expanded(child: Container(color: Colors.red,))
                                                                                                        ],
                                                                      ))
                                                                      
                                                                      ],
                                        )),
                                          Expanded(child: Container(color: Colors.greenAccent,)),
                                          Expanded(child: Row(children:
                                                                      [Expanded(child: Column(children: [Expanded(child: Container(color: Colors.blue,)),
                                                                                                          Expanded(child: Container(color: Colors.orange,))],)),
                                                                      Expanded(child: Column(children: [Expanded(child: Row(children: [
                                                                                                                                      Expanded(child: Column(children: [
                                                                                                                                                                      Expanded(child: Container(color: Colors.yellow,)),
                                                                                                                                                                      Expanded(child: Container(color: Colors.green,))
                                                                                                                                                                      ],
                                                                                                                                       )),
                                                                                                                                      Expanded(child: Column(children: [
                                                                                                                                                                      Expanded(child: Container(color: Colors.purple,)),
                                                                                                                                                                      Expanded(child: Container(color: Colors.grey,))
                                                                                                                                                                      ],
                                                                                                                                      ))
                                                                                                      ],
                                                                      )),
                                                                        Expanded(child: Container(color: Colors.red,))],))

                                          ],))
                                          ],))
        ],
      )

    );
  }
}
