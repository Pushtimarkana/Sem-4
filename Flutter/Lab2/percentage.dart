import 'dart:io';

void main(){
  //stdout.write("Enter Number");

  List<int> mark = [];
  int sum=0;
  for(int i=0;i<5;i++){
    stdout.write("Enter Number $i");
    mark.add(int.parse(stdin.readLineSync()!));
    sum=sum+mark[i];
  }
  double per = (sum/5);
    if(per<35){
      print("Fail:");
    }
    else if(per>35 && per<45){
      print("Pass class");
    }
    else if(per>45 && per<60){
      print("First class");
    }
    else if(per>60 && per<70){
      print("Second class");
    }
    else{
      print("Heighest...");
    }
}