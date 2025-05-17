import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';


class JsonDisplayScreen extends StatefulWidget {
  @override
  _JsonDisplayScreenState createState() => _JsonDisplayScreenState();
}

class _JsonDisplayScreenState extends State<JsonDisplayScreen> {
  List<dynamic> jsonData = [];

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  // Method to load JSON data from assets
  Future<void> loadJsonData() async {
    final String response = await rootBundle.loadString('asets/Json/data.json');
    final data = json.decode(response);
    setState(() {
      jsonData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('JSON Display')),
      body: jsonData.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: jsonData.length,
        itemBuilder: (context, index) {
          // Display data in a simple ListTile
          return Card(
            color: Colors.white54,
            elevation: 25,
            child: ListTile(
              title: Text(jsonData[index]['name'] ?? 'No Name'),
              subtitle: Text(jsonData[index]['description'] ?? 'No Description'),
            ),
          );
        },
      ),
    );
  }
}
