//B--WAP to count the occurrences of each word in a given sentence. Return a map where the keys
// are the words, and the values are the number of occurrences of each word. Example: Input:
// "this is a test this is a", Output: {'this': 2, 'is': 2, 'a': 2, 'test': 1}.

import 'dart:io';

void main(){
  stdout.write("Enter String:");
  String str=stdin.readLineSync()!;

  List list=[];
  list.addAll(str.split(" "));

  print(list);
  int flag=1;

  Map<String,int>  occ={};

  //Time Complexity=o(n^2)
  for(int i=0;i<list.length;i++){
    for(int j=i+1;j<list.length;j++){
      if(list[i]==list[j]){
        flag=flag+1;
        list.removeAt(j);
        j--;
      }
    }
    occ[list[i]]=flag;
    flag=1;
  }
  print(occ);

  //Time complexity=o(n)

  // for(String word in list){
  //   if(occ.containsKey(word)) {
  //     occ[word]=occ[word]!+1;
  //   }
  //   else{
  //     occ[word]=1;
  //   }
  // }
  // print(occ);
}