import 'dart:io';

import 'package:flutterrr/extra/user.dart';

//////Crud Operation this is file that have main function()--
//crud.dart

void main(){
  User user=User();
  int choise;

  do{
    print('Select Your Choice From Below Available Options:'
        '\n1-Insert User'
        '\n2-List User'
        '\n3-Update User'
        '\n4-Delete User'
        '\n5-Search User'
        '\n6-Exit Application');

    choise= int.parse(stdin.readLineSync()!);
    switch(choise){
      case 1:
        stdout.write("Enter Name of User:");
        String name=stdin.readLineSync()!;
        stdout.write("Enter Age of User:");
        int age=int.parse(stdin.readLineSync()!);
        stdout.write("Enter Email of User:");
        String email=stdin.readLineSync()!;

        user.addUser(name: name, age: age, email: email);
        break;

      case 2:
        List<Map<String,dynamic>> userList=user.getUser();
        
        print(userList);
        break;

      case 3:
        stdout.write("Enter Name of User:");
        String name=stdin.readLineSync()!;
        stdout.write("Enter Age of User:");
        int age=int.parse(stdin.readLineSync()!);
        stdout.write("Enter Email of User:");
        String email=stdin.readLineSync()!;
        stdout.write("Enter Id that Update User:");
        int id=int.parse(stdin.readLineSync()!);

        user.updateUser(name: name, age: age, email: email, id: id);
        break;

      case 4:
        stdout.write("Enter Id that Delete User:");
        int id=int.parse(stdin.readLineSync()!);

        user.deleteUser(id: id);
        break;

      case 5:
        stdout.write("Enter Serch data  of User:");
        String searchStr=stdin.readLineSync()!;

        user.serachDetails(searchData: searchStr);
        break;

      default:
        print('Invalid Choice Please Try Again');
        break;

    }
  }while(choise!=6);

}