//A-- WAP to calculate simple interest using method.

import 'dart:io';

void main(){
  stdout.write("Enter P:");
  int p=int.parse(stdin.readLineSync()!);

  stdout.write("Enter R:");
  int r=int.parse(stdin.readLineSync()!);

  stdout.write("Enter N:");
  int n=int.parse(stdin.readLineSync()!);

  print(interest(p,r,n));

}

double interest(int p, int r,int n){
  double interest =(p*r*n)/100;

      return interest;
}