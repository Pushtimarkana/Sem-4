// B--WAP to find the element that appears only once in a non-empty array of integers, where every
// other element appears twice. The solution should have linear runtime complexity and use only
// constant extra space. Example: Input: nums = [2, 2, 1], Output: 1; Input: nums = [4, 1, 2, 1, 2],
// Output: 4; Input: nums = [1], Output: 1.

import 'dart:io';

void main(){

  stdout.write("Enter Size of Array");
  int n=int.parse(stdin.readLineSync()!);

  List nums=[];
  int flag=0;

  //Input for list nums
  for(int i=0;i<n;i++){
    stdout.write("Enter Element of array :$i");
    nums.add(int.parse(stdin.readLineSync()!));
  }

  //check for element
  //time complexity=o(n^2)
  for(int i=0;i<nums.length;i++){
    for(int j=i+1;j<nums.length;j++){
      if(nums[i]==nums[j]){
        flag++;
        nums.removeAt(j);
      }
    }
    if(flag==0){
      print(nums[i]);
    }else{
      flag=0;
    }
  }
  //print(nums);

  //Time Complexity decrement
  //Time complexity=o(n)
  int result=0;
  for(int i=0;i<nums.length;i++){
    result ^=nums[i];
  }
  print(result);


}