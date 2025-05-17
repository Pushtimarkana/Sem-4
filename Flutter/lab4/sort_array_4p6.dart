// B--WAP to sort an array of names based on the corresponding heights in descending order. The
// names and heights are given as two separate arrays, and the heights are distinct positive
// integers. Example: Input: names = ["Mary","John","Emma"], heights = [180,165,170], Output:
// ["Mary","Emma","John"]; Input: names = ["Alice","Bob","Bob"], heights = [155,185,150],
// Output: ["Bob","Alice","Bob"].

import 'dart:io';

void main(){

  stdout.write("Enter Size of array:");
  int n= int.parse(stdin.readLineSync()!);


  List<String> names=[];
  List<int> height=[];

  for(int i=0;i<n;i++){
    stdout.write("Enter Element $i :");
    names.add(stdin.readLineSync()!);
  }

  for(int i=0;i<n;i++){
    stdout.write("Enter Element $i :");
    height.add(int.parse(stdin.readLineSync()!));
  }

  check(names,height);

}
void check(List<String> names , List<int> height){

  int maxIndex=0;
  for(int i=0;i<height.length;i++){

    for(int j=i+1;j<height.length;j++){
      if(height[maxIndex] < height[j]){
        maxIndex=j;
      }
    }
    String temp = names[i];
    names[i]=names[maxIndex];
    names[maxIndex]=temp;

    int tem=height[i];
    height[i]=height[maxIndex];
    height[maxIndex]=tem;
    // height.removeAt(maxIndex);
    maxIndex+=1;

  }
  print(names);
}