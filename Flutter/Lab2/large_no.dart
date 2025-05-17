import 'dart:io';

void main(){

  stdout.write("Enter Number a:");
  int a=int.parse(stdin.readLineSync()!);

  stdout.write("Enter Number b:");
  int b=int.parse(stdin.readLineSync()!);

  stdout.write("Enter Number c:");
  int c=int.parse(stdin.readLineSync()!);

  if(a>b){
    if(a>c){
      print("A is Large");
    }
    else{
      print("C is Large");
    }
  }
  else{
    if(b>c){
      print("B is Large");
    }
    else{
      print("C is Large");
    }
  }
}