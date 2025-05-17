import 'package:flutter/material.dart';

class NavigationMaterial extends StatelessWidget {
  const NavigationMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nevigation"),
      ),
      body:Container(
        child: Center(
          child: ElevatedButton(onPressed: (){
            Navigator.of(context).pushNamed("/page1");
          }, child: Text("Show")),
        ),
      ),
    );
  }
}
