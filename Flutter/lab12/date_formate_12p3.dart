import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormate12p3 extends StatefulWidget {
  const DateFormate12p3({super.key});

  @override
  State<DateFormate12p3> createState() => _DateFormate12p3State();
}

class _DateFormate12p3State extends State<DateFormate12p3> {
  @override
  DateTime date = DateTime.now();

  Widget build(BuildContext context) {

    String d1= DateFormat("dd/MM/yyyy").format(date);
    String d2= DateFormat("dd-MM-yyyy").format(date);
    String d3= DateFormat("dd-MMM-yyyy").format(date);
    String d4= DateFormat("dd-MM-yy").format(date);
    String d5= DateFormat("dd MM,yyyy").format(date);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Date Formate",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Text(date.toString(),style: TextStyle(fontSize: 30,color: Colors.grey),),
              Text(d1.toString(),style: TextStyle(fontSize: 30,color: Colors.grey),),
              Text(d2.toString(),style: TextStyle(fontSize: 30,color: Colors.grey),),
              Text(d3.toString(),style: TextStyle(fontSize: 30,color: Colors.grey),),
              Text(d4.toString(),style: TextStyle(fontSize: 30,color: Colors.grey),),
              Text(d5.toString(),style: TextStyle(fontSize: 30,color: Colors.grey),)
            ],
          ),
        ),
      ),
    );
  }
}
