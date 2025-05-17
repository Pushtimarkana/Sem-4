import 'package:flutter/material.dart';
import 'package:flutter_demo/lecture/addUser.dart';

class ListOfUser extends StatefulWidget {
  const ListOfUser({super.key});

  @override
  State<ListOfUser> createState() => _ListOfUserState();
}

class _ListOfUserState extends State<ListOfUser> {
  List<Map<String,dynamic>> list =[{"NAME":"pushti","EMAIL":"pushto@gmail.com","AGE":"19"}];

  List<Map> filteredUsers = [];
  bool isSearch=false;

  TextEditingController searchcontroller = TextEditingController();

  void initState() {
    super.initState();
    filteredUsers = list; // Initialize with all users
    searchcontroller.addListener(filterUsers);
  }

  void filterUsers() {
    String query = searchcontroller.text.toLowerCase();
    setState(() {
      filteredUsers = list.where((user) {
        return user["NAME"].toLowerCase().contains(query) ||
            user["EMAIL"].toLowerCase().contains(query) || user["AGE"].contains(query);
      }).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("User List",style: TextStyle(color: Colors.yellow,fontSize: 30),),
        actions: [
          Wrap(
            children: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AddUser(name: null, email: null, age: null);
                })).then((value){
                  list.add(value);
                  setState(() {});
                });
              },
                  icon: Icon(Icons.add)),

              Container(
                width: 300,
                child: TextField(
                  controller: searchcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    suffixIcon: IconButton(onPressed: (){
                      isSearch=(searchcontroller.text.isEmpty)?false:true; setState(() {});}, icon: Icon(Icons.search)),
                  ),
                ),
              )
            ],
          )

        ],
      ),
      body: Container(
        child: list.length>0 ?
            Center(
              child: ListView.builder(
                itemCount: isSearch? filteredUsers.length :list.length,
                itemBuilder: (context,index){
                return isSearch? Card(
                  color: Colors.blueGrey,
                  elevation: 10,
                  child: ListTile(
                    title: Text(filteredUsers[index]["NAME"]),
                    subtitle: Text(filteredUsers[index]["EMAIL"]),
                  ),
                )
                    :getListItem(index);
              }),
            )
            :Center(child:
                    Text("No Data Found",
                      style: TextStyle(fontSize: 50,color: Colors.grey,fontWeight: FontWeight.bold),),),
      ),
    ));
  }
   Widget getListItem(i){
    return Card(
      color: Colors.blueGrey.shade200,
      elevation: 15,
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return AddUser(name: list[i]["NAME"], email: list[i]["EMAIL"], age: list[i]["AGE"]);
          })).then((value){
            list[i]["NAME"]=value["NAME"];
            list[i]["EMAIL"]=value["EMAIL"];
            list[i]["AGE"]=value["AGE"];
            setState(() {});
          });
        },
        title: Text(list[i]["NAME"]),
        subtitle: Text(list[i]["EMAIL"]),
        trailing: IconButton(
            onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Text("DELETE"),
                  content: Text("Are your sure want to delete user?"),
                  actions: [
                    TextButton(onPressed: (){
                      list.removeAt(i);
                      Navigator.pop(context);
                      setState(() {});
                    }, child: Text("yes")),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("No"))
                  ],
                );
              });
            },
            icon: Icon(Icons.delete)),
      ),
    );
   }
}
