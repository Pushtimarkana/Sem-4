import 'package:flutter_demo/lecture/crud_addUser.dart';
import 'package:flutter/material.dart';
//import '../utils/const_variable.dart';

// class UserList extends StatefulWidget {
//   UserList({super.key});
//
//   @override
//   State<UserList> createState() => _UserListState();
// }
//
// class _UserListState extends State<UserList> {
//   List<Map<String,dynamic>> users = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blueAccent,
//           title: Text("User List"),
//           actions: [
//             IconButton(onPressed: (){
//               Navigator.push(context,
//                   MaterialPageRoute(
//                       builder: (context)=>AddUser(
//                         name: null,
//                         email: null,
//                         age: null,
//                       ))
//               ).then((value){
//                 setState(() {
//                   if(value != null){
//                     users.add(value);
//                   }
//                 });
//               });
//
//             }, icon: Icon(Icons.add_box))
//           ],
//         ),
//         body: users.length > 0 ? (
//             Container(
//               child: ListView.builder(itemBuilder: (context,index){
//                 return InkWell(
//                     onTap: (){
//                       Navigator.push(context,
//                           MaterialPageRoute(
//                               builder: (context)=>AddUser(
//                                   name: users[index]["NAME"],
//                                   email: users[index]["EMAIL"],
//                                   age: users[index]["AGE"]
//                               )
//                           )).then((value){
//                         if(value != null){
//                           setState(() {
//                             users[index] = value;
//                           });
//                         }
//                       });
//                     },
//                     child: Card(
//                       color: Colors.grey.shade200,
//                       child: ListTile(
//                         leading: Icon(Icons.person),
//                         title: Text(users[index]["NAME"]),
//                         subtitle: Text(users[index]["EMAIL"]),
//                         trailing: Text(users[index]["AGE"]),
//                       ),
//                     )
//                 );
//               },
//                 itemCount: users.length,
//               ),
//             )
//         ) : Center(
//           child: (
//               Text("User data is not available")
//           ),
//         )
//     );
//   }
// }


// import 'package:display_list_crud/pages/add_user_page.dart';
// import 'package:flutter/material.dart';

@immutable
class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  List<Map> list = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text("User List", style: TextStyle(fontFamily: "style2"),),
          actions: [
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> AddUser(
                      name: null,
                      email: null,
                      age: null,
                    ))
                ).then((value){
                  setState(() {
                    list.add(value);
                  });
                });
              },
              child: Stack(
                  children:[
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(right: 25),
                      child: FloatingActionButton(onPressed: (){}),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 7.5, left: 7.5),
                        child: Icon(Icons.add)
                    )
                  ]
              ),
            )
          ],
        ),
        body: Container(
            child: list.length > 0 ?
            ListView.builder(itemBuilder: (context, index){
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return AddUser(
                        name: list[index]["NAME"],
                        email: list[index]["EMAIL"],
                        age: list[index]["AGE"]
                    );
                  })
                  ).then((value){
                    setState(() {
                      list[index] = value;
                    });
                  });
                },
                child: Card(
                  color: Colors.blueGrey.shade200,
                  margin: EdgeInsets.all(15),
                  elevation: 15,
                  shadowColor: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: list[index]["ImageUrl"] != "None"
                            ? NetworkImage(list[index]["ImageUrl"])
                            : AssetImage('assets/images/cricketer_logo.webp'),
                      ),
                      title: Text(list[index]["Name"]),
                      subtitle: Text(list[index]["Match"]),
                      trailing: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Confirm Delete"),
                                content: Text("Are you sure you want to delete this user?"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(); // Close the dialog without deleting
                                    },
                                    child: Text("Cancel", style: TextStyle(color: Colors.blue)),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        list.removeAt(index); // Delete the user
                                      });
                                      Navigator.of(context).pop(); // Close the dialog
                                    },
                                    child: Text("Delete", style: TextStyle(color: Colors.red)),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          child: Icon(Icons.delete_forever_outlined),
                        ),
                      ),
                    ),
                  ),

                ),
              );
            },
                itemCount: list.length)
                : Center(child: Text("User Data Is Not Available",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54, fontFamily: "style1"),)
            )
        ),
      ),
    );
  }
}