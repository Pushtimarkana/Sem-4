import 'dart:io';

void main(){

  stdout.write("Enter Number for sum all Positive number and 0 for display result");

  int sum_even=0;
  int sum_odd=0;
  int n=0;
  do{
    stdout.write("Enter Number:");
    n=int.parse(stdin.readLineSync()!);
    if(n>0 && n%2==0){
      sum_even=sum_even+n;
    }
    if(n<0 && n%2!=0){
      sum_odd=sum_odd+n;
    }
  }
  while(n!=0);

  print("Sum of Even NO of $sum_even");
  print("Sum of Odd NO of $sum_odd");
}