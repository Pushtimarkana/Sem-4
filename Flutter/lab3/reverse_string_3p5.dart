import 'dart:io';

void main(){

  stdout.write("Enter a Strin for Reverse:");
  String str=stdin.readLineSync()!;

  List list=[];
  list.addAll(str.split(""));

  print(list);
  String rev_str="";
  while(list.isNotEmpty){
    rev_str=rev_str+list.last;
    list.removeLast();
  }
  print(" Reverse String is:$rev_str");
}