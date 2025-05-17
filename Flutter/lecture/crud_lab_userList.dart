import 'package:flutter/material.dart';
import 'package:flutter_demo/lecture/addUser.dart';

class CrudLabUserlist extends StatefulWidget {
  @override
  State<CrudLabUserlist> createState() => _CrudLabUserlistState();

}

class _CrudLabUserlistState extends State<CrudLabUserlist> {
  //const ({super.key});
  
  List<Map<String,dynamic>> userList=[];
  List<Map<String,dynamic>> filterList =[];
  bool isSearch=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filterList=userList;
    searchController.addListener(filterUser);
  }
  void filterUser(){
    String str= searchController.text.toLowerCase();
    setState(() {
      filterList = userList.where((user){
        return user["NAME"].toLowerCase().contains(str) ||
            user["EMAIL"].toLowerCase().contains(str) || user["AGE"].contains(str);
      }).toList();

    });
  }
  
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("User List",style: TextStyle(fontSize: 30,color: Colors.yellow),),
        actions: [

          Container(
            width: 500,
            child: TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                suffixIcon: IconButton(onPressed: (){
                  isSearch=(searchController.text.isEmpty)?false:true;
                  setState(() {});
                }, icon: Icon(Icons.search))
              ),
            ),
          ),

          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return AddUser(name: null, email: null, age: null);
            })).then((value){
              userList.add(value);
              setState(() {});
            });
          },
              icon: Icon(Icons.add)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ListView.builder(
            itemCount: isSearch?filterList.length : userList.length,
              itemBuilder: (context,index){
            return isSearch? Card(
              color: Colors.blueGrey,
              elevation: 20,
              child: ListTile(
                  title: Text(filterList[index]["NAME"]),
                  subtitle: Text('${filterList[index]["EMAIL"]}   -------   ${filterList[index]["AGE"]}'),
              ),
            )  :getUserList(index);
          })
        ),
      ),
    ));
  }

  Widget getUserList(i){
    return Card(
      color: Colors.blueGrey.shade200,
      elevation: 20,
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return AddUser(name: userList[i]["NAME"], email: userList[i]["EMAIL"], age: userList[i]["AGE"]);
          })).then((value){
            userList[i]["NAME"]=value["NAME"];
            userList[i]["EMAIL"]=value["EMAIL"];
            userList[i]["AGE"]=value["AGE"];
            setState(() {});
          });
        },
        title: Text(userList[i]["NAME"]),
        subtitle: Text('${userList[i]["EMAIL"]}   -------   ${userList[i]["AGE"]}'),
        trailing: Wrap(
          children: [
            IconButton(onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Text("DELETE"),
                  content: Text("Are you sure to delete"),
                  actions: [
                    TextButton(onPressed: (){
                      userList.removeAt(i);
                      Navigator.pop(context);
                      setState(() {});
                    }, child: Text("Yes")),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                      setState(() {});
                    }, child: Text("No"))
                  ],
                );
              });
            }, icon: Icon(Icons.delete)),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return AddUser(name: userList[i]["NAME"], email: userList[i]["EMAIL"], age: userList[i]["AGE"]);
              })).then((value){
                userList[i]["NAME"]=value["NAME"];
                userList[i]["EMAIL"]=value["EMAIL"];
                userList[i]["AGE"]=value["AGE"];
                setState(() {});
              });
            }, icon: Icon(Icons.edit))
          ],
        ),
      ),
    );
  }
}
