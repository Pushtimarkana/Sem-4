import 'package:flutter/material.dart';

class LoginScreen10p1 extends StatefulWidget {
  @override
  State<LoginScreen10p1> createState() => _LoginScreen10p1State();
}
GlobalKey<FormState> _formkey = GlobalKey();
bool isHide=true;
class _LoginScreen10p1State extends State<LoginScreen10p1> {
  //const ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.grey,
          body: Stack(
            fit: StackFit.expand,
            children: [Form(
              key:_formkey,
              child: Column(

                children: [
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
                      label: Text("UserName"),
                      hintText: "Enter your Name",
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Enter Name as input";
                      }
                      if(value.length<5){
                        return "Enter Nmae Properly";
                      }
                      
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        label: Text("Password"),
                        hintText: "Enter Password",
                        //abscureText:true  -------->for password hide icon
                        suffixIcon: IconButton(icon: Icon(isHide ?  Icons.visibility : Icons.visibility_off),onPressed: (){
                            setState(() {
                              isHide = !isHide;
                            });
                    },),
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return "Enter Password as input";
                      }
                      if(value.length<10){
                        return "Enter Password Properly";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  Center(child: ElevatedButton(onPressed: (){
                    if(_formkey.currentState!.validate()){
                      print("Submit Successfully");
                    };

                  }, child:Text("Submit")))
                ],
              ),
            ),
            ]
          ),


    );
  }
}
