// A--WAP to read 2 list and return list that contains only the elements that are common between
// them.

import 'dart:io';

void main(){

  stdout.write("Enter two of list:");
  List list1=[];
  List list2=[];

  stdout.write("Enter Size of list:");
  int n=int.parse(stdin.readLineSync()!);

  for(int i=0;i<n;i++){
    stdout.write("Enter list1:");
    list1.add(stdin.readLineSync()!);
    stdout.write("Enter list2:");
    list2.add(stdin.readLineSync());
  }
  List list3=[];

  for(int i=0;i<list1.length;i++){
    if(list1.contains(list2[i])){
      list3.add(list1[i]);
    }
  }

  print(list3);

}