// import 'dart:async';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
//
// class CrudWithDatabase extends StatefulWidget {
//   const CrudWithDatabase({super.key});
//
//   @override
//   State<CrudWithDatabase> createState() => _CrudWithDatabaseState();
// }
//
// class _CrudWithDatabaseState extends State<CrudWithDatabase> {
//   late Database database;
//   List<Map<String,dynamic>> dataList=[];
//   TextEditingController nameController=TextEditingController();
//
//   Future<void> initDatabase()async{
//     database=await openDatabase(
//         join(
//             await getDatabasesPath(),'MyDatabase'
//         ),
//         onCreate: (db,version){
//           return db.execute('CREATE TABLE localTable(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT)');
//         },
//         version: 1
//     );
//   }
//
//   Future<void> fetchData()async{
//     List<Map<String,dynamic>> data=await database.query('localTable');
//     setState(() {
//       dataList=data;
//     });
//   }
//
//   Future<void> addData(String name)async{
//     await database.insert('localTable', {'name':name});
//     fetchData();
//   }
//
//   Future<void> deleteData(int id)async{
//     await database.delete('localTable',where:'id=?',whereArgs: [id]);
//     fetchData();
//   }
//
//   Future<void> updateData(int id,String name)async{
//     await database.update('localTable', {'name':name},where: 'id=?',whereArgs: [id]);
//     fetchData();
//   }
//
//   void showSheet(BuildContext context,{int? id,String? name}){
//     nameController.text=name??'';
//     showModalBottomSheet(
//         backgroundColor: Colors.purple.shade50,
//         context: context,
//         builder: (context){
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 TextFormField(
//                   controller: nameController,
//                   decoration: InputDecoration(
//                       labelText: 'name'
//                   ),
//                 ),
//                 SizedBox(height: 20,),
//                 ElevatedButton(
//                     onPressed: ()async{
//                       String newName=nameController.text.trim();
//                       if(id==null){
//                         await addData(newName);
//                       }
//                       else{
//                         await updateData(id, newName);
//                       }
//                       Navigator.pop(context);
//                     }, child: Text(id==null ? 'ADD DATA' : 'EDIT DATA'))
//               ],
//             ),
//           );
//         }
//     );
//   }
//   @override
//   void initState(){
//     super.initState();
//     initDatabase();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text('CRUD WITH DATABASE')),
//       ),
//       body: SafeArea(
//         child:Column(
//           children: [
//             Expanded(
//                 child: ListView.builder(
//                     itemCount: dataList.length,
//                     itemBuilder: (context,index){
//                       return ListTile(
//                         leading: CircleAvatar(
//                           child: Text(dataList[index]['id'].toString()),
//                         ),
//                         title: Text(dataList[index]['name']),
//                         trailing: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             IconButton(
//                                 onPressed: (){
//                                   showSheet(context,id:dataList[index]['id'],name:dataList[index]['name']);
//                                 },
//                                 icon: Icon(Icons.edit,color: Colors.purple.shade100,)
//                             ),
//                             IconButton(
//                                 onPressed: ()async{
//                                   await deleteData(dataList[index]['id']);
//                                 },
//                                 icon: Icon(CupertinoIcons.delete_solid,color: Colors.red)
//                             )
//                           ],
//                         ),
//                       );
//                     })
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: ElevatedButton(
//           onPressed: (){
//             showSheet(context);
//           }, child: Icon(CupertinoIcons.add)
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseCrud extends StatefulWidget {
  const DatabaseCrud({super.key});

  @override
  State<DatabaseCrud> createState() => _DatabaseCrudState();
}

class _DatabaseCrudState extends State<DatabaseCrud> {
   late Database database;

  List<Map<String,dynamic>>  dataList=[];
  TextEditingController nameController = TextEditingController();

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    initDatabase();
    // fetchData();
    // setState(() {});
  }

  Future<void> initDatabase() async {
      database =  await openDatabase(
        join(
          await getDatabasesPath(),"MyDatabse.db"
        ),
        onCreate: (db,version){
          return db.execute("CREATE TABLE tbl(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT)");
        },
        version: 1
      );
  }

  Future<void> fetchData() async {
  List<Map<String,dynamic>> data= await database.query('tbl');
  setState(() {
    dataList=data;
  });
  }

  Future<void> addData({required name}) async {
  await database.insert('tbl', {'name':name});
  fetchData();
  }

  Future<void> deleteData({required id}) async {
  await database.delete('tbl',where: 'id=?',whereArgs: [id]);
  fetchData();
  }

  Future<void> updateData({required id,required name}) async {
  await database.update('tbl', {'name':name},where: 'id=?',whereArgs: [id]);
  fetchData();
  }

  void showSheet(BuildContext context,{int? id,String? name}){
    nameController.text = name ?? '';
    showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "name",
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: () async {
              String name= nameController.text.toString();
              if(id==null){
                await addData(name: name);
              }
             else{
               await updateData(id: id, name: name);
              }
              Navigator.pop(context);
            }, child: Text( id==null ?"ADD DATA":"Edit Data"))
          ],
        ),
      );

    });

  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("DataBase Crud"),
      backgroundColor: Colors.purple.shade200,
      ),
      body: ListView.builder(
        itemCount: dataList.length,
          itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(
              child:  Text(dataList[index]['id'].toString()),
            ),
            title: Text(dataList[index]['name']),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: Text("DELETE"),
                      content: Text("Are want to sure to delete?"),
                      actions: [
                        TextButton(onPressed: (){
                          deleteData(id: dataList[index]['id']);
                          Navigator.pop(context);
                          }, child: Text("YES")),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                    }, child: Text("NO")),
                      ],
                    );
                  });
                }, icon: Icon(Icons.delete,color: Colors.red,)),
                IconButton(onPressed: (){
                  showSheet(context,id: dataList[index]["id"],name: dataList[index]['name']);
                }, icon: Icon(Icons.edit))
              ],
            ),
          );
          }),
      floatingActionButton: ElevatedButton(
          onPressed: (){
            showSheet(context);
            }, child:Icon(Icons.add)),
    ));
  }
}
