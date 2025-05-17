// A---WAP to generate Fibonacci series of N given number using method.

import 'dart:io';

void main(){

  stdout.write("Enter Number for last digit:");
  int n=int.parse(stdin.readLineSync()!);

  (fibonaci(n));
}



void fibonaci(int n){

  int a = 0;
  int b = 1;
  stdout.write("$a + $b +");
  for(int i=2;i<n;i++) {

    int c = a + b;
    stdout.write(" $c +");

    a=b;
    b=c;

  }

}