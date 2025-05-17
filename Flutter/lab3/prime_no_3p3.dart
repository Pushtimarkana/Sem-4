import 'dart:io';

void main(){

  stdout.write("Enter Number for Check Prime Number:");
  int n=int.parse(stdin.readLineSync()!);
  int flag=0;
  for(int i=2;i<=n/2;i++){
    if(n%i==0){
      flag++;
    }
  }
  if(flag==0){
    print("Number is prime:");
  }
  else{
    print("Number is Not Prime:");
  }
}