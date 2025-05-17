//WAP to print numbers between two given numbers which is
// divisible by 2 but not divisible by 3.

import 'dart:io';
void main(){
  stdout.write("Enter Number:");
  int n=int.parse(stdin.readLineSync()!);

  stdout.write("Enter Second Number :");
  int m=int.parse(stdin.readLineSync()!);

  for(int i=n;i<m;i++){
    if(i%2==0 && i%3!=0){
      print("Divisible Number is $i");
    }
  }
}