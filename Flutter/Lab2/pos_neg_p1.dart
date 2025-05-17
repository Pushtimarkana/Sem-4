import 'dart:io';
void main(){
  print("Enter Number:");
  int n=int.parse(stdin.readLineSync()!);
    if(n>0){
      print("Number is Positive:");
    }
    else{
      print("Number is Negative:");
    }
}