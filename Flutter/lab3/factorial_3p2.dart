import 'dart:io';

void main(){

  stdout.write("Enter Number for find Factorial:");
  int n=int.parse(stdin.readLineSync()!);
  int fact=1;

  for(int i=1;i<n;i++){
    fact=fact*i;
  }
  print("Factorial is $fact");
}