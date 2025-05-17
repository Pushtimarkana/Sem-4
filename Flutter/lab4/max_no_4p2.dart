//A-- WAP to find maximum number from given two numbers using method

import 'dart:io';

void main(){

  stdout.write("Enter Number:");
  int n=int.parse(stdin.readLineSync()!);

  stdout.write("Enter Second Number:");
  int m=int.parse(stdin.readLineSync()!);


  print("Max Number is:${max_no(n,m)}");
}

int max_no(int n,int m){
  if(n>m){
    return n;
  }
  else{
    return m;
  }
}