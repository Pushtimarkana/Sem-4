// B--WAP to find the length of the last word in a given string, where a word is defined as a maximal
// substring consisting of non-space characters. Example: Input: s = "Hello World", Output: 5 (last
// word is "World"); Input: s = " fly me to the moon ", Output: 4 (last word is "moon").


import 'dart:io';

void main(){
  stdout.write("Enter String for count last word Length:");
  String str=stdin.readLineSync()!;

  List lwl=[];
  lwl.addAll(str.split(" "));
  String s=lwl.last;


  print(lwl);
  print(s.length);
}