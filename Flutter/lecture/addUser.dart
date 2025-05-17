import 'package:flutter/material.dart';
import 'package:flutter_demo/lecture/crud_addUser.dart';

class AddUser extends StatefulWidget {
  @override
  State<AddUser> createState() => _AddUserState();
  dynamic name;
  dynamic email;
  dynamic age;

  //constructure
AddUser({super.key,required name,required email,required age}){
  this.name=name;
  this.email=email;
  this.age=age;
}

}

class _AddUserState extends State<AddUser> {
  //const Adduser({super.key});
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  String typeButton='';

  void initState(){
    super.initState();
    namecontroller.text=widget.name ?? '';
    emailcontroller.text=widget.email ?? '';
    agecontroller.text=widget.age ?? '';
    typeButton = (namecontroller.text == '' && emailcontroller.text == '' && agecontroller.text == '') ? 'Add User' : 'Edit User';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.blueGrey,
        title: Text(typeButton, style:  TextStyle(color:  Colors.white ,fontSize: 30),),
        titleSpacing: 300,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              TextFormField(
                controller: namecontroller,
                decoration: InputDecoration(
                  labelText: 'Enter Your Name',
                  hintText: 'Enter your Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  )
                ),

              ),
              SizedBox(height: 50,),
              TextFormField(
                controller: emailcontroller,
                decoration: InputDecoration(
                    labelText: 'Enter Your Email',
                    hintText: 'Enter your Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )
                ),
              ),
              SizedBox(height: 50,),
              TextFormField(
                controller: agecontroller,
                decoration: InputDecoration(
                    labelText: 'Enter Your AGE',
                    hintText: 'Enter your AGE',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )
                ),
              ),
              SizedBox(height: 50,),

              ElevatedButton(onPressed: (){
                Map<String,dynamic> map ={};
                map["NAME"]=namecontroller.text.toString();
                map["EMAIL"]=emailcontroller.text.toString();
                map["AGE"]=agecontroller.text.toString();
                Navigator.pop(context,map);
              },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: Text(typeButton,style: TextStyle(color: Colors.white),))
            ],
          ),
        ),
      ),
    ));
  }
}
