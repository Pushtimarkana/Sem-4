//A-- WAP to count number of even or odd number from an array of n numbers.

import 'dart:io';

void main(){
  stdout.write("Enter Size of Array:");
  int n=int.parse(stdin.readLineSync()!);

  List<int> nums=[];
  for(int i=0;i<n;i++){
    stdout.write("Enter Element:");
    nums.add(int.parse(stdin.readLineSync()!));
  }

  count(nums);
}

void count(List<int> nums){
  int ecount=0;
  int ocount=0;
  for(int i=0;i<nums.length;i++){
    if(nums[i]%2==0){
      ecount++;
    }
    else{
      ocount++;
    }
  }
  print("Even count is $ecount and Odd Count is $ocount");
}
