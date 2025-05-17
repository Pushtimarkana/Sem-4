import 'package:flutter/material.dart';

class UserEntryForm extends StatefulWidget {
  @override
  State<UserEntryForm> createState() => _UserEntryFormState();
  Map<String,dynamic>? userDetail;

  UserEntryForm({super.key, Map<String, dynamic>? userDetail}){
    this.userDetail=userDetail;
  }
}

class _UserEntryFormState extends State<UserEntryForm> {
  //const UserEntryForm({super.key});
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  GlobalKey<FormState> _formkey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("User Entry Form"),
          titleSpacing: 500,
        ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('asets/Images/backgroungImage.jpg'),fit: BoxFit.cover),
            ),
          ),
          Center(child:Stack(
            children: [
              Positioned(
                top: 80,
                left: 250,
                child: Center(
                  child: Image(
                    image: NetworkImage('https://tse3.mm.bing.net/th?id=OIP.xGg20c_e4uCYqNvrJZpy6gHaE7&pid=Api&P=0&h=180'),
                    fit: BoxFit.cover,
                    height: 500,
                    width:1000,
                  ),
                ),
              ),
              Positioned(
                child: Form(
                    key: _formkey,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 300,left: 450,top: 100),
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Enter valid name';
                              }
                              return null;
                            },
                            controller:namecontroller ,
                            decoration: InputDecoration(
                              hintText: 'ENTER YOUR NAME',
                              labelText: 'ENTER YOUR NAME',
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Colors.red,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),

                          SizedBox(height: 30,),

                          TextFormField(
                            validator: (value){
                              if(value!.isEmpty){
                                return "Enter your email";
                              }
                              if(!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value!)){
                                  return "Enter your email properly";
                              }
                              return null;
                            },
                            controller: emailcontroller,
                            decoration: InputDecoration(
                              hintText: 'ENTER YOUR EMAIL',
                              labelText: 'ENTER YOUR EMAIL',
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Colors.red,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),

                          SizedBox(height: 30,),

                          TextFormField(
                            validator: (value){
                              if(value!.isEmpty){
                                return "Enter Phone No.";
                              }
                              if(!RegExp(r'^[0-9]{10}$').hasMatch(value)){
                                return "Enter 10 digit No";
                              }
                            },
                            controller:phonecontroller,
                            decoration: InputDecoration(
                              hintText: 'ENTER YOUR PHONE NO',
                              labelText: 'ENTER YOUR PHONE NO',
                              labelStyle: TextStyle(color: Colors.black),
                              fillColor: Colors.red,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),

                          SizedBox(height: 50,),

                          ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                              onPressed: (){
                                Map<String, dynamic> map = {};
                                map["NAME"] = namecontroller.text.toString();
                                map["EMAIL"] = emailcontroller.text.toString();
                                map["PHONE"] = phonecontroller.text.toString();
                                Navigator.pop(context, map);


                                if(_formkey.currentState!.validate()){
                                  print("Submit Successfully");
                                  print(map);
                                };
                          }, child: Text(
                              widget.userDetail == null ? 'Submit' : 'Edit',
                              style:TextStyle( color: Colors.white,
                              fontSize: 25,
                              )
                          ))
                        ],
                      ),
                    )),
              ),
            ],
          ),),
        ],
      ),
    );
  }
}
