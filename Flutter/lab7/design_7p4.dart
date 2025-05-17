import 'package:flutter/material.dart';

class Design7p4 extends StatefulWidget {
  const Design7p4({super.key});

  @override
  State<Design7p4> createState() => _Design7p4State();
}

class _Design7p4State extends State<Design7p4> {
  @override
  TextEditingController textControler= TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              readOnly:true,
              decoration: InputDecoration(
                hintText: '${textControler.text}',
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textControler,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: 'Enter your Name',
                hintText: "Enterrrrr Name",

              ),
              onChanged:(text){
                Text(text);
              },
            )
          ),
          ElevatedButton(onPressed:() {
            print("Clicked,${textControler.text}");
            setState(() {

            });
          }, child: Text("Submit"))
        ],
      ),
    );
  }
}
