//
import 'dart:math';

import 'package:flutter/material.dart';

class RollDice8p4 extends StatefulWidget {
  //const  @override
  State<RollDice8p4> createState() => _RollDice8p4State();
}

class _RollDice8p4State extends State<RollDice8p4> {
 //({super.key});
  int diceresult=1;
  TextEditingController textControler= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Roll Dice",style: TextStyle(fontSize: 30,color: Colors.white),),
        backgroundColor: Colors.black,
        titleSpacing: 100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:  Container(
          height: 5000,
          width: 5000,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                  )
                ),

              ),
              SizedBox(height: 50,),
              ElevatedButton(onPressed:(){
                print("Roll Diced:${diceresult}");
                setState(() {
                  diceresult=Random().nextInt(6) + 1;
                });
              }, child: Text("Roll ",style: TextStyle(fontSize: 30,color: Colors.black),)),
              Text(textControler.text),
              Text('${diceresult} ',style: TextStyle(fontSize: 30,color: Colors.black),),
               Image.asset("asets/Images/dice${diceresult}.png",height: 100,width: 100,)
            ],
          ),
          // decoration: BoxDecoration(
          //   image: DecorationImage(image: AssetImage("asets/Images/dice${diceresult}.png")),
          //
          // ),
        ),
      ),
    );
  }
}
