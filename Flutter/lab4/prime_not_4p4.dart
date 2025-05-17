//A-- WAP to accept a number and check whether the number is prime or not. Use method name
// check (int n). The method returns 1, if the number is prime otherwise, it returns 0.


import 'dart:io';

void main(){

  stdout.write("Enter Number:");
  int n=int.parse(stdin.readLineSync()!);

  int ans = check(n);
  print(ans);
}

int check(int n){

  int flag=0;
  for(int i=2;i<n/2+1;i++){
    if(n%2==0){
      flag++;
    }

  }
  if(flag==0){
    return 1;
  }
  else{
    return 0;
  }
}