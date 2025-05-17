// B--WAP to find the majority element in a given array, where the majority element is the one that
// appears more than [n / 2] times. You may assume that the majority element always exists in
// the array. Example: Input: nums = [3, 2, 3], Output: 3; Input: nums = [2, 2, 1, 1, 1, 2, 2], Output:
// 2

import 'dart:io';

void main(){
  stdout.write("Enter Size of array:");
  int n=int.parse(stdin.readLineSync()!);

  List me=[];

  for(int i=0;i<n;i++){
    stdout.write("Enter $i th element of array:");
    me.add(int.parse(stdin.readLineSync()!));
  }
  int count=1;
  for(int i=0;i<n;i++){
    for(int j=i+1;j<n;j++){
      if(me[i]==me[j]){
        count++;
      }
    }
    if(count>=n/2){
      print(me[i]);
    }
    count=1;
  }
}