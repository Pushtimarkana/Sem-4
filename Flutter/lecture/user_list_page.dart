// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_demo/project_1/user.dart';
// import 'package:flutter_demo/lecture/user_entry_form.dart';
//
// class UserListPage extends StatefulWidget {
//   const UserListPage({super.key});
//
//   @override
//   State<UserListPage> createState() => _UserListPageState();
// }
//
// class _UserListPageState extends State<UserListPage> {
//   User _user = User();
//   List city_list=["Rajkot","Ahemdabad","Surat","Vadodra","bharuch","Bharuch","Bhuj"];
//   List<Map<String,dynamic>> user_list = [{"NAME":"pushti","EMAIL":"abc@gmail.com","PHONE":"1234567890"},
//                                         {"NAME":"xyz","EMAIL":"xyz@gmail.com","PHONE":"1234567890"},
//                                         {"NAME":"pushti","EMAIL":"abc@gmail.com","PHONE":"0987654321"},
//                                         {"NAME":"pushti","EMAIL":"abc@gmail.com","PHONE":"1234560987"},
//                                         {"NAME":"pushti","EMAIL":"abc@gmail.com","PHONE":"7418529630"},
//                                         {"NAME":"pushti","EMAIL":"abc@gmail.com","PHONE":"1023658974"}];
//
//   bool isGrid = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text("User List", style: TextStyle(fontSize: 30,color: Colors.yellow,fontWeight: FontWeight.bold),),
//         actions: [
//           IconButton(onPressed: (){setState(() {
//             isGrid=false;
//           });}, icon: Icon(Icons.list,color: Colors.white,)),
//           IconButton(onPressed: (){setState(() {
//             isGrid=true;
//           });}, icon: Icon(Icons.grid_3x3,color: Colors.white,)),
//           IconButton(onPressed: (){
//             Navigator.push(context, MaterialPageRoute(builder: (context){return UserEntryForm();
//             })
//             ).then((value){
//               user_list.add(value);
//               setState(() {});
//             });
//           },
//               icon: Icon(Icons.add,color: Colors.white,))
//         ],
//       ),
//       body: isGrid? GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
//         itemCount: user_list.length,
//         itemBuilder: (context,index){
//           return Center(
//               child: getGridItem(index),
//             // child: Padding(
//             //   padding: const EdgeInsets.all(8.0),
//             //   child: Column(
//             //     children: [
//             //       Text(user_list[index]["NAME"],style: TextStyle(fontSize: 20,color: Colors.black),),
//             //       Text(user_list[index]["EMAIL"],style: TextStyle(fontSize: 20,color: Colors.black),),
//             //       Text(user_list[index]["PHONE"],style: TextStyle(fontSize: 20,color: Colors.black),),
//             //     ],
//             //   ),
//             // ),
//           );
//         },
//       )
//           :ListView.builder(
//         itemCount: user_list.length,
//         itemBuilder: (context,index){
//             return Center(
//               child:  getGridItem(index),
//               // child: Padding(
//               //   padding: const EdgeInsets.all(8.0),
//               //   child: Column(
//               //     children: [
//               //         Text(user_list[index]["NAME"],style: TextStyle(fontSize: 20,color: Colors.black),),
//               //         Text(user_list[index]["EMAIL"],style: TextStyle(fontSize: 20,color: Colors.black),),
//               //         Text(user_list[index]["PHONE"],style: TextStyle(fontSize: 20,color: Colors.black),),
//               //     ],
//               //   ),
//               // ),
//             );
//         },
//       ),
//     );
//
//   }
//   List<Widget> getListItem(){
//     List<Widget> widgets = [];
//
//     for(int i=0;i<user_list.length;i++){
//       print(':::GRID ITEM BUILDER CALLED:::$i');
//       widgets.add(getGridItem(i));
//     }
//
//     return widgets;
//   }
//
//   // List<Widget> getListItem() {
//   //   List<Widget> widgets = [];
//   //   for (int i = 0; i < _user.userList.length; i++) {
//   //     print(':::GRID ITEM BUILDER CALLED:::$i');
//   //     widgets.add(getListGridItem(i));
//   //   }
//   //   return widgets;
//   // }
//
//   Widget getGridItem(i){
//     return Card(
//       child: ListTile(onTap: (){
//         Navigator.push(context, MaterialPageRoute(
//                       builder: (context) {
//                         return UserEntryForm(
//                           userDetail: user_list[i],
//                         );
//                       },
//                     )).then((value){
//                       user_list[i]["NAME"]= value["NAME"];
//                       user_list[i]["EMAIL"] =value["EMAIL"];
//                       user_list[i]["PHONE"] = value["PHONE"];
//                       setState(() {});
//
//         });
//       },
//       trailing: Wrap(
//         children: [
//           IconButton(onPressed: (
//               ){}, icon: Icon(
//                     Icons.arrow_forward_ios,
//                     color: Colors.grey.shade500,
//                   ),
//           ),
//           IconButton(
//                     onPressed: () {
//                       showDialog(
//                         context: context,
//                         builder: (context) {
//                           return CupertinoAlertDialog(
//                             title: Text('DELETE'),
//                             content: Text('Are you sure want to delete?'),
//                             actions: [
//                               TextButton(
//                                 onPressed: () {
//                                   user_list.removeAt(i);
//                                   Navigator.pop(context);
//                                   setState(() {});
//                                 },
//                                 child: Text('yes'),
//                               ),
//                               TextButton(
//                                 onPressed: () {
//                                   Navigator.pop(context);
//                                   setState(() {});
//                                 },
//                                 child: Text('No'),
//
//                               )
//                             ],
//                           );
//                         },
//                       );
//                     },
//                     icon: Icon(
//                       Icons.delete,
//                       color: Colors.red,
//                       size: 25,
//                     ),
//                   ),
//         ],
//       ),
//         title: Wrap(
//           children: [
//             Text('${user_list[i]["NAME"]}-----',
//                       style: TextStyle(fontSize: 25, color: Colors.black),),
//             Text('${user_list[i]["EMAIL"]} --------- ${user_list[i]["PHONE"]}',
//                         style: TextStyle(fontSize: 25, color: Colors.black),)
//           ],
//         ),
//       ),
//     );
//   }
//
//
//   // Widget getListGridItem(i) {
//   //   return Card(
//   //     elevation: 10,
//   //     child: ListTile(
//   //       onTap: () {
//   //         Navigator.push(context, MaterialPageRoute(
//   //           builder: (context) {
//   //             return UserEntryForm(
//   //               userDetail: _user.userList[i],
//   //             );
//   //           },
//   //         )).then((value) {
//   //           _user.updateUser(
//   //             name: value["NAME"],
//   //             age: value["AGE"],
//   //             email: value["EMAIL"],
//   //             // phoneNumber: value["PHONE"],
//   //             id: i,
//   //             // city: value[CITY],
//   //           );
//   //           setState(() {});
//   //         });
//   //       },
//   //       leading: Image.asset('assets/images/download.jpeg'),
//   //       trailing: Wrap(
//   //         alignment: WrapAlignment.center,
//   //         direction: Axis.horizontal,
//   //         children: [
//   //           // IconButton(
//   //           //   onPressed: () {
//   //           //     showDialog(
//   //           //       context: context,
//   //           //       builder: (context) {
//   //           //         return CupertinoAlertDialog(
//   //           //           title: Text('DELETE'),
//   //           //           content: Text('Are you sure want to delete?'),
//   //           //           actions: [
//   //           //             TextButton(
//   //           //               onPressed: () {
//   //           //                 _user.deleteUser(i);
//   //           //                 Navigator.pop(context);
//   //           //                 setState(() {});
//   //           //               },
//   //           //               child: Text('yes'),
//   //           //             ),
//   //           //             TextButton(
//   //           //               onPressed: () {},
//   //           //               child: Text('No'),
//   //           //             )
//   //           //           ],
//   //           //         );
//   //           //       },
//   //           //     );
//   //           //   },
//   //           //   icon: Icon(
//   //           //     Icons.delete,
//   //           //     color: Colors.red,
//   //           //     size: 25,
//   //           //   ),
//   //           // ),
//   //           Icon(
//   //             Icons.arrow_forward_ios,
//   //             color: Colors.grey.shade500,
//   //           ),
//   //         ],
//   //       ),
//   //       title: Wrap(
//   //         direction: Axis.vertical,
//   //         children: [
//   //           Text(
//   //             '${_user.userList[i]["NAME"]}',
//   //             style: TextStyle(fontSize: 25, color: Colors.black),
//   //           ),
//   //           Text(
//   //             '${_user.userList[i]["PHONE"]} | ${_user.userList[i]["EMAIL"]}',
//   //             style: TextStyle(fontSize: 20, color: Colors.grey),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }
//
// }
//
//
//
//
