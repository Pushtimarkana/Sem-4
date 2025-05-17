import 'dart:io';

void main(){

  stdout.write("Enter Number as a");
  int a=int.parse(stdin.readLineSync()!);

  stdout.write("Enter Number as b");
  int b=int.parse(stdin.readLineSync()!);

  stdout.write("Enter Number as c");
  int c=int.parse(stdin.readLineSync()!);

  a>b?(a>c?(print(a)):(print(c))):(b>c?(print(b)):(print(c)));
}