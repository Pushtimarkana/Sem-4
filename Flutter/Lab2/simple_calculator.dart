/////String as infix convert into postfix

import 'dart:ffi';
import 'dart:io';

void main(){

  //String like "5+4/2-3"
  stdout.write("Enter String:");
  String str=stdin.readLineSync()!;

  List li=[];
  li.addAll(str.split(""));

  print(li);
  switch (li[1]){
    case '/' :
      
  }

  int stakepre(String ch){
    if (ch=='+'  || ch=='-'){
      return 2;
    }
    else if(ch=='*' || ch=='/'){
      return 4;
    }
    else if(ch=='^'){
      return 5;
    }
    else if(ch==''){

    }
    return 0;
  }
}