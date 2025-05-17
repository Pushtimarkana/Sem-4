import 'dart:io';

void main(){
  stdout.write("Enter Number for calculation");
  int n= int.parse(stdin.readLineSync()!);

  stdout.write("Enter Number for calculation");
  int m=int.parse(stdin.readLineSync()!);

  stdout.write("Enter char for  calculation");
  String c=stdin.readLineSync()!;

  if(c=="+"){
    print('Sum of Number is ${n+m}');
  }
  else if(c=='-'){
    print('Subtraction of Number is ${n-m}');
  }
  else if(c=='*'){
    print('multiplication of Number is ${n*m}');
  }
  else if(c=='/'){
    print('Division of Number is ${n/m}');
  }

  switch(c){
    case '+' : print('Sum of Number is ${n+m}');
              break;
    case '-' :   print('Subtraction of Number is ${n-m}');
              break;
    case '*'  :   print('multiplication of Number is ${n*m}');
              break;
    case '/' :    print('Division of Number is ${n/m}');
              break;
  }
}