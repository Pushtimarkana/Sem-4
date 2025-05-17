import 'package:flutter/material.dart';

class Validation10p2 extends StatefulWidget {
  @override
  State<Validation10p2> createState() => _Validation10p2State();
}

class _Validation10p2State extends State<Validation10p2> {
  //const Validation10p2({super.key});
  @override
  GlobalKey<FormState> _formkey = GlobalKey();

  bool isHide=true;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child:Column(
          children: [
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.black,width: 2)),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.black,width: 2)),
              ),
            ),
            SizedBox(height: 30,),
            Center(child: ElevatedButton(onPressed: (

                ){}, child: Text("Login")))
          ],
        )
      ),
    );
  }
}
