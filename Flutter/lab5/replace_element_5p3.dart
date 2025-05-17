// A--WAP that creates List with following value:“Delhi”, “Mumbai”, “Bangalore”, “Hyderabad” and
// “Ahmedabad” Replace “Ahmedabad” with “Surat” in above List.

void main(){

  List<String> city =['Delhi', 'Mumbai', 'Bangalore', 'Hyderabad','Ahmedabad'];

  city[4]='Surat';
  //city.replaceRange(start, end, replacements)

  print(city);
}