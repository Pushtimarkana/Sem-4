// B--WAP to find all the prime numbers within a given range [start, end]. Example: Input: start = 10,
// end = 20, Output: [11, 13, 17, 19]; Input: start = 1, end = 10, Output: [2, 3, 5, 7].


import 'dart:io';

void main(){
  stdout.write("Enter Start range for prime Number:");
  int a=int.parse(stdin.readLineSync()!);

  stdout.write("Enter End range for prime Number:");
  int b=int.parse(stdin.readLineSync()!);

  int n=a;
  int flag=0;
  List prime=[];
  while(n<b){
    for(int i=2;i<=n/2;i++){
      if(n%i==0){
        flag++;
      }
    }
    if(flag==0){
      prime.add(n);
    }else{
      flag=0;
    }
    n++;
  }
  print(prime);
}