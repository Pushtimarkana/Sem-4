//---B)--WAP to insert an element at a specific position in an array. The program should modify the
// existing array without creating a new one. Example: Input: array = [1, 2, 4, 5], element = 3,
// position = 2, Output: [1, 2, 3, 4, 5]; Input: array = [10, 20, 30], element = 25, position = 1,
// Output: [10, 25, 20, 30].

import 'dart:io';

void main(){
  stdout.write("Enter size of array:");
  int n=int.parse(stdin.readLineSync()!);

  List<int> nums=[];

  for(int i=0;i<n;i++){
    stdout.write("enter $i th element:");
    nums.add(int.parse(stdin.readLineSync()!));
  }
  stdout.write("Ennter element:");
  int m=int.parse(stdin.readLineSync()!);

  stdout.write("Ennter position:");
  int index=int.parse(stdin.readLineSync()!);

  nums.insert(index,m);

  print(nums);
}