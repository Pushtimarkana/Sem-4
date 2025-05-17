


import 'package:flutter/material.dart';

class TextFeild7p3 extends StatefulWidget {
  const TextFeild7p3({super.key});

  @override
  State<TextFeild7p3> createState() => _TextFeild7p3State();
}

class _TextFeild7p3State extends State<TextFeild7p3> {
  @override
  TextEditingController textControler= TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
              Text(textControler.text),
              Padding(padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textControler,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),)
                  ),
                )
              ),
              ElevatedButton(onPressed: (){
                print("Clicked ${textControler.text}");
                setState(() {

                });
              } , child:Text("Click"),),

            ]

              )

          );
  }
}


