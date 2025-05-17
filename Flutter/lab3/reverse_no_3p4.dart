import 'dart:io';


void main(){

  stdout.write("Enter Number for reverse:");
  int n=int.parse(stdin.readLineSync()!);

  int new_no=0;
  
  while(n!=0){
    int r=n%10;
    new_no=(new_no*10)+r;
    n=n~/10;
  }
  print(new_no);
}