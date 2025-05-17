// A--WAP to create and read phonebook dictionary.

import 'dart:io';

void main(){

  Map<String,int> phonebook={};

  phonebook['pushti']=1234567890;
  phonebook['Mummy']=1234598760;
  phonebook['Pappa']=9876543210;
  phonebook['Didi']=1023456789;

  for(int i=0;i<3;i++){
    stdout.write("Enter name:");
    String str=stdin.readLineSync()!;
    stdout.write("Enter Phone Number:");
    int n=int.parse(stdin.readLineSync()!);
    phonebook[str]=n;
  }

  print(phonebook);

}