import 'package:flutter/material.dart';

class BirthdayName extends StatefulWidget {
  const BirthdayName({super.key});

  @override
  State<BirthdayName> createState() => _BirthdayNameState();
}

class _BirthdayNameState extends State<BirthdayName> {
  @override
  var nameController = TextEditingController();

  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("Name"),),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed("/birthdaycard",arguments: nameController.text.toString());
            }, child: Text("Submit"))
          ],
        ),
      ),
    ));
  }
}
