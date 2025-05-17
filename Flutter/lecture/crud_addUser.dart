import 'package:flutter/material.dart';
//import '../utils/const_variable.dart';

class AddUser extends StatefulWidget {
  dynamic name;
  dynamic email;
  dynamic age;

  //CONSTRUCTOR
  AddUser({super.key, required this.name, required this.email, required this.age});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var ageController = TextEditingController();
  String buttonType = '';

  void initState() {
    super.initState();
    nameController.text = widget.name ?? '' ;
    emailController.text = widget.email ?? '' ;
    ageController.text = widget.age ?? '';
    buttonType = (nameController.text == '' && emailController.text == '' && ageController.text == '' ) ? 'Add user' : 'Update user';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(buttonType),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    labelText: "Enter Name"
                ),
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    labelText: "Enter Email"
                ),
              ),
              TextFormField(
                controller: ageController,
                decoration: InputDecoration(
                    labelText: "Enter Age"
                ),
              ),
              ElevatedButton(onPressed: (){
                Map<String,dynamic> userdata = {};
                userdata["NAME"] = nameController.text.isEmpty ? "None" : nameController.text;
                userdata["EMAIL"] = emailController.text.isEmpty ? "No" : emailController.text;
                userdata["AGE"] = ageController.text.isEmpty ? "18" : ageController.text;
                Navigator.pop(context,userdata);
              }, child: Text(buttonType))
            ],
          ),
        ),
      ),
    );
  }
}