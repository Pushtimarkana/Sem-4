import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePiker12p4 extends StatefulWidget {
  const DatePiker12p4({super.key});

  @override
  State<DatePiker12p4> createState() => _DatePiker12p4State();
}

class _DatePiker12p4State extends State<DatePiker12p4> {
  @override
  DateTime date = DateTime.now();

  Widget build(BuildContext context) {
    String d1= DateFormat("dd/MM/yyyy").format(date);
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
              ElevatedButton(
                  onPressed: () async{
                    DateTime? d = await showDatePicker(
                        context: context,
                        initialDate: date,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2030));
                    if(d != null && d != date){
                      setState(() {
                        date = d;
                      });
                    }
                  },
                  child: Text("Date",style: TextStyle(fontSize: 10,color: Colors.green),),

              ),


            ],
          ),
        ),
      ),
    );
  }
}
