import 'package:flutter/material.dart';

class DemoPage4 extends StatelessWidget {
  //const DemoPage3({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Scaffold(appBar: AppBar(title: Text("Demo"),),
      body: Row(
        children: [
          Expanded(child: Column(
                      children: [Expanded(child:Container(color: Colors.grey)),
                                Expanded(child:Container(color: Colors.orange )),
                                Expanded(child:Container(color: Colors.blue))
          ],)),
          Expanded(child: Column(
                        children: [Expanded(child:Container(color: Colors.green),flex: 3,),
                                  Expanded(child:Container(color: Colors.brown),flex: 3,),
                                  Expanded(child:Container(color: Colors.purple),flex: 1,)
          ],)),
          Expanded(child: Column(
                        children: [Expanded(child:Container(color: Colors.red),flex: 1,),
                                  Expanded(child:Container(color: Colors.yellow),flex: 3,),
                                  Expanded(child:Container(color: Colors.purpleAccent),flex: 2,)
          ],)),
        ],
      ),);
  }
}
