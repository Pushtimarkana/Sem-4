//for practice--------
void main(){

  String str="Darshan University";
  int? a;
  // a=10;

  print("String is ${str}");
  print("String is ${str.toString()}");
  print(a);

  var b;
  String s=b ?? "Hello";
  print(s);

  List<int> li=[1,2,3,4];
  int ans= addListElement(li);
  print(ans);


    int number = 4;
    if (number.isEven) {
      print('$number is even');
    } else {
      print('$number is odd');
    }

    /////:::::List methods::::::::

    //::add method::
    // List<int> numbers = [1, 2, 3];
    // numbers.add(4);
    // print(numbers);  // Output: [1, 2, 3, 4]

    //::addAll method::
  // List<int> numbers = [1, 2];
  // numbers.addAll([3, 4, 5]);
  // print(numbers);  // Output: [1, 2, 3, 4, 5]

  //::insert method::
  // List<int> numbers = [1, 2, 3, 5];
  // numbers.insert(3, 4);  // Insert 4 at index 3
  // print(numbers);  // Output: [1, 2, 3, 4, 5]

  //::insertAll::
  // List<int> numbers = [1, 2, 6];
  // numbers.insertAll(2, [3, 4, 5]);
  // print(numbers);  // Output: [1, 2, 3, 4, 5, 6]

  //::remove
  // List<int> numbers = [1, 2, 3, 2];
  // numbers.remove(2);  // Removes the first occurrence of 2
  // print(numbers);  // Output: [1, 3, 2]

  //::removeAt::
  // List<int> numbers = [1, 2, 3, 4];
  // numbers.removeAt(1);  // Removes the element at index 1
  // print(numbers);  // Output: [1, 3, 4]

  //::removeLast::
  // List<int> numbers = [1, 2, 3];
  // numbers.removeLast();
  // print(numbers);  // Output: [1, 2]

  //::clear::
  // List<int> numbers = [1, 2, 3];
  // numbers.clear();
  // print(numbers);  // Output: []

  //::contains::
  // List<int> numbers = [1, 2, 3];
  // print(numbers.contains(2));  // Output: true
  // print(numbers.contains(4));  // Output: false

  //::indexOf::
  // List<int> numbers = [1, 2, 3];
  // print(numbers.indexOf(2));  // Output: 1
  // print(numbers.indexOf(4));  // Output: -1

  //::lastIndexOf::
  // List<int> numbers = [1, 2, 3, 2];
  // print(numbers.lastIndexOf(2));  // Output: 3

  //::sublist::
  // List<int> numbers = [1, 2, 3, 4, 5];
  // List<int> sublist = numbers.sublist(1, 4);  // Extracts elements from index 1 to 3
  // print(sublist);  // Output: [2, 3, 4]

  //::sort::
  // List<int> numbers = [4, 2, 3, 1];
  // numbers.sort();
  // print(numbers);  // Output: [1, 2, 3, 4]

  // List<int> numbers = [4, 2, 3, 1];
  // numbers.sort((a, b) => b.compareTo(a));  // Sort in descending order
  // print(numbers);  // Output: [4, 3, 2, 1]

  //::reversed::
  // List<int> numbers = [1, 2, 3];
  // print(numbers.reversed.toList());  // Output: [3, 2, 1]

  //::forEach::
  // List<int> numbers = [1, 2, 3];
  // numbers.forEach((number) => print(number));  // Output: 1 2 3

  //::map::
  // List<int> numbers = [1, 2, 3];
  // List<int> squaredNumbers = numbers.map((e) => e * e).toList();
  // print(squaredNumbers);  // Output: [1, 4, 9]

  //::where::
  // List<int> numbers = [1, 2, 3, 4, 5];
  // List<int> evenNumbers = numbers.where((e) => e.isEven).toList();
  // print(evenNumbers);  // Output: [2, 4]

  //::reduce::
  // List<int> numbers = [1, 2, 3, 4];
  // int sum = numbers.reduce((a, b) => a + b);
  // print(sum);  // Output: 10

  //::fold::----Similar to reduce(), but you can provide an initial value. It's useful for complex accumulations.
  // List<int> numbers = [1, 2, 3, 4];
  // int sum = numbers.fold(0, (a, b) => a + b);  // Initial value is 0
  // print(sum);  // Output: 10

  //::any::
  // List<int> numbers = [1, 2, 3, 4];
  // print(numbers.any((e) => e > 3));  // Output: true

  //::every::
  // List<int> numbers = [2, 4, 6];
  // print(numbers.every((e) => e.isEven));  // Output: true

  //::
}

int addListElement(List<int> li){
  int ans= li.reduce((a,b)=>a+b);
  return ans;
}