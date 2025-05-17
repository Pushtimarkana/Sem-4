//main.dart have main Function---

import 'dart:io';

import 'package:flutterrr/crud/user.dart';

void main(){

  User user= User();

  int choise;
  do{
    print('Enter choise from above option'
        '\n 1- for Add User:'
        '\n 2- for get Users:'
        '\n 3- for update User:'
        '\n 4- for delete User:'
        '\n 5- search User:'
        '\n 6-for exit  Programme'
    );
    choise= int.parse(stdin.readLineSync()!);
    switch(choise){

      case 1:
        stdout.write("Enter User Name:");
        String name=stdin.readLineSync()!;

        stdout.write("Enter User's Age:");
        int age=int.parse(stdin.readLineSync()!);

        stdout.write("Enter User Email:");
        String email=stdin.readLineSync()!;

        user.addUser(name: name, age: age, email: email);
        break;

      case 2:
        List<Map<String,dynamic>> userList = user.getUser();

        print(userList);
        break;

      case 3:
        stdout.write("Enter User Name:");
        String name=stdin.readLineSync()!;

        stdout.write("Enter User's Age:");
        int age=int.parse(stdin.readLineSync()!);

        stdout.write("Enter User Email:");
        String email=stdin.readLineSync()!;

        stdout.write("Enter id that Update:");
        int id= int.parse(stdin.readLineSync()!);

        user.updateUser(name: name, age: age, email: email, id: id);
        break;

      case 4:
        stdout.write("Enter id that delete:");
        int id= int.parse(stdin.readLineSync()!);

        user.deleteUser(id: id);
        break;
      case 5:
        stdout.write("Enter User Name for Search User Data:");
        String searchData=stdin.readLineSync()!;

        user.searchUser(searchData: searchData);
    }
  }while(choise != 6);

}