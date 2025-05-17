// B---WAP to check if a given positive integer is an ugly number (a number whose only prime factors are
// 2, 3, and 5). Example: Input: n = 6, Output: true (6 = 2 × 3); Input: n = 14, Output: false (14 includes
// the prime factor 7).


import 'dart:io';

void main(){
  stdout.write("Enter Number:");
  int n=int.parse(stdin.readLineSync()!);

  int flag=0;
  for(int i=2;i<=n/2;i++){
    if(n%i==0){
      if(i==2 || i==3 || i==5){

      }
      else{
        flag++;
      }
    }
  }
  if(flag==0){
    print("True:");
  }
  else{
    print("False:");
  }
}