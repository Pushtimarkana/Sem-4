 import 'package:flutter/material.dart';

class Listview11 extends StatelessWidget {
  const Listview11({super.key});


  @override
  Widget build(BuildContext context) {
    List<String> cities = [
      "Ahmedabad",
      "Surat",
      "Vadodara",
      "Rajkot",
      "Bhavnagar",
      "Jamnagar",
      "Junagadh",
      "Gandhinagar",
      "Anand",
      "Nadiad",
      "Morbi",
      "Mehsana",
      "Navsari",
      "Vapi",
      "Bharuch",
      "Palanpur",
      "Porbandar",
      "Godhra",
      "Dahod",
      "Valsad","abc","xyz"
    ];
    return Scaffold(
      body:
      ListView.builder(
          itemCount:cities.length,
          itemBuilder:(context,index){
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(cities[index],style: TextStyle(fontSize: 20,color: Colors.blue),),
                ),
              ),
            );

          }),
    );
  }
}
