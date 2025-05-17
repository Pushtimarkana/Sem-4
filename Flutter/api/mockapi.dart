
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class Mockapi extends StatefulWidget {
//   const Mockapi({super.key});
//
//   @override
//   State<Mockapi> createState() => _MockapiState();
// }
//
// class _MockapiState extends State<Mockapi> {
//   List<Map<String, dynamic>> users = [];
//   TextEditingController nameController = TextEditingController();
//   TextEditingController idController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("API"),
//           backgroundColor: Colors.purple.shade200,
//           actions: [
//             IconButton(
//               onPressed: (){showDialogBox(null,null);},
//               icon: Icon(Icons.add, size: 40),
//             ),
//           ],
//         ),
//         body: ListView.builder(
//           itemCount: users.length,
//           itemBuilder: (context, index) {
//             return Card(
//               margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//               elevation: 3,
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage('asets/Images/girl_img.jpg'),
//                 ),
//                 title: Text(users[index]["name"] ?? 'No Name'),
//                 subtitle: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('ID: ${users[index]["id"]}'),
//                     Text('Created At: ${users[index]["createdAt"]}'),
//                   ],
//                 ),
//                 trailing: Wrap(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.delete, color: Colors.red),
//                       onPressed: () {
//                         deleteUser(users[index]['id']);
//                       },
//                     ),
//                     IconButton(onPressed: (){
//                       showDialogBox(users[index]['id'],users[index]['name']);
//                       setState(() {
//
//                       });
//                       }, icon: Icon(Icons.edit))
//                   ],
//                 ),
//               ),
//             );
//
//           },
//         ),
//         floatingActionButton: FloatingActionButton(onPressed: fetchUser),
//       ),
//     );
//   }
//
//   Future<void> fetchUser() async {
//     print("FetchUser called");
//     final uri = Uri.parse('https://66efeb53f2a8bce81be487e1.mockapi.io/student/students');
//     final response = await http.get(uri);
//
//     if (response.statusCode == 200) {
//       final List<dynamic> jsonData = jsonDecode(response.body);
//       setState(() {
//         users = jsonData.cast<Map<String, dynamic>>(); // Ensure proper casting
//       });
//       print("Fetch Completed");
//     } else {
//       throw Exception("Failed to fetch users");
//     }
//   }
//
//   Future<void> addUser(String name, String id) async {
//     Map<String, dynamic> user = {
//       'name': name,
//       'createdAt': '04-03-2025',
//       'avatar': 'asets/Images/girl_img.jpg',
//       'id': id,
//     };
//
//     var res = await http.post(
//       Uri.parse('https://66efeb53f2a8bce81be487e1.mockapi.io/student/students'),
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode(user),
//     );
//
//     if (res.statusCode == 201) {
//       print('User added: ${res.body}');
//       fetchUser(); // Refresh the list after adding a new user
//     } else {
//       throw Exception('Failed to add User');
//     }
//   }
//
//   Future<void> deleteUser(String id) async {
//     String baseUrl = 'https://66efeb53f2a8bce81be487e1.mockapi.io/student/students';
//     var res = await http.delete(Uri.parse('$baseUrl/$id'));
//
//     if (res.statusCode == 200) {
//       print('User deleted: ${res.body}');
//       setState(() {
//         users.removeWhere((user) => user['id'] == id); // FIXED: Remove from list
//       });
//     } else {
//       throw Exception('Failed to delete user');
//     }
//   }
//
//   Future<void> updateUser(String name,String id) async {
//     String baseUrl='https://66efeb53f2a8bce81be487e1.mockapi.io/student/students';
//     Map<String, dynamic> todo = {
//       'name': name,
//       'id': id,
//     };
//     var res = await http.put(
//       Uri.parse('$baseUrl/$id'),
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode(todo),
//     );
//     if (res.statusCode == 200) {
//       print('Edited user: ${res.body}');
//     } else {
//       throw Exception('Failed to edit user');
//     }
//   fetchUser();
//   }
//
//   void showDialogBox(String? id , String? name) {
//     final nameController=TextEditingController(text: name ?? '');
//     final idController = TextEditingController(text: id ?? '');
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text(id==null ? 'Add User' : 'Edit User'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: nameController,
//                 decoration: InputDecoration(labelText: 'Name'), // FIXED: Typo
//               ),
//               TextField(
//                 controller: idController,
//                 decoration: InputDecoration(labelText: 'ID'),
//               ),
//             ],
//           ),
//           actions: [
//             ElevatedButton(
//               onPressed: () {
//                 if (id==null ) {
//                   addUser(nameController.text, idController.text);
//                 }else{
//                   updateUser(nameController.text, idController.text);
//                 }
//                 Navigator.pop(context);
//               },
//               child: Text( id== null ?"Add" : "Edit"),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class Mockapi extends StatefulWidget {
  const Mockapi({super.key});

  @override
  State<Mockapi> createState() => _MockapiState();
}

class _MockapiState extends State<Mockapi> {
  static List<Map<String,dynamic>> users =[];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar:  AppBar(
        title: Text("API"),
        actions: [IconButton(onPressed: ShowBottomSheet, icon: Icon(Icons.add))],
      ),
      body: ListView.builder(
        itemCount: users.length,
          itemBuilder: (context,index){
            return Card(
              elevation: 25,
              child: ListTile(
                title: Text(users[index]["id"]),
                subtitle: Text(users[index]["name"]),
                trailing: Wrap(
                  children: [
                    IconButton(onPressed: (){deleteData(users[index]["id"]);}, icon: Icon(Icons.delete)),
                    IconButton(onPressed: (){ShowBottomSheet(id: users[index]["id"],name: users[index]["name"]);}, icon: Icon(Icons.edit))
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(onPressed: fetchData ),
    ));
  }


  String baseUrl ="https://66efeb53f2a8bce81be487e1.mockapi.io/student/students";

  Future<void> fetchData() async {
    var res= await http.get(Uri.parse(baseUrl));
    List<dynamic> data=jsonDecode(res.body);
    users=data.cast<Map<String,dynamic>>();
    setState(() {});

  }

  Future<void> addData(String name, String id) async {
    Map<String,dynamic> user = {
      "name": name,
      "createdAt":"04-05-2025",
      "id":id
    };
    var res = await http.post(Uri.parse(baseUrl),
    headers: {'Content-Type':'application/json'},
        body: json.encode(user),
    );
    fetchData();

  }

  Future<void> deleteData(String id) async {
    var res= await http.delete(Uri.parse('$baseUrl/$id'));
    setState(() {
      users.removeWhere((user)=>user["id"] == id);
    });
  }

  Future<void> updateUsr(String id , String name) async {
    Map<String,dynamic> new_user= {
      "name":name,
      "id":id
    };
    var res = await http.patch(Uri.parse('$baseUrl/$id'),
      headers: {"Content-Type":'application/json'},
      body: json.encode(new_user),
    );
    fetchData();
  }
  void ShowBottomSheet({id,name}){
    var nameController = TextEditingController(text: id ?? "");
    var idController = TextEditingController(text: name ?? "");
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text(id== null ?"ADD USER" : "Edit User"),
        content: Column(
          children: [
            TextFormField(
              controller: nameController,
            ),
            SizedBox(height: 20,),
            TextFormField(controller: idController,),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              if (id == null) {
                addData(nameController.text, idController.text);
              }
              else{
                updateUsr(idController.text, nameController.text);

              }
            }
            , child: Text(id== null?"ADD USER" : "Edit User"))
          ],
        ),
      );
    });
  }
}
