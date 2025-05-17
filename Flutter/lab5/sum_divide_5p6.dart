// A--WAP to accept n numbers in an array. Display the sum of all the numbers which are divisible
// by either 3 or 5.

import 'dart:io';

void main(){
  stdout.write("Enter size of Array:");
  int n=int.parse(stdin.readLineSync()!);

  List<int> nums =[];

  int count=0;
  for(int i=0;i<n;i++){
    stdout.write("Enter Element:");
    nums.add(int.parse(stdin.readLineSync()!));
      if(nums[i]%3==0 || nums[i]%5==0){
        count+=nums[i];
      }
  }
  print(count);
}
