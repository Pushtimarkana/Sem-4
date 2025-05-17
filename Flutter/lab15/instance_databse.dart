import 'package:flutter/material.dart';
import 'package:flutter_demo/lab15/to_do_list.dart';

class InstanceDatabse extends StatefulWidget {
  const InstanceDatabse({super.key});

  @override
  State<InstanceDatabse> createState() => _InstanceDatabseState();
}

class _InstanceDatabseState extends State<InstanceDatabse> {

  MyDatabase database= MyDatabase();
  var titleController = TextEditingController();
  var descController = TextEditingController();
  void initState() {
    // TODO: implement initState
    super.initState();
    // selectAll();
  }
  Future<void> selectAll() async {
    // await databse.insertState();
    await database.showList();
  }

  void bottomSheet(BuildContext context,{required id,required title ,required desc}){
    String? button;
    if(id !=null){
      titleController.text=title.toString();
      descController.text=desc.toString();
      button='Edit';
    }else{
      titleController.clear();
      descController.clear();
      button='Add';
    }
    showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller:  titleController,
              decoration: InputDecoration(
                  labelText: "Enter Title",
                  hintText: 'Title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  )),
            ),
            SizedBox(height: 30,),
            TextFormField(
              controller:  descController,
              decoration: InputDecoration(
                  labelText: "Enter Description",
                  hintText: 'Description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  )),
            ),
            ElevatedButton(onPressed: (){
              if(button == 'Add') {
                Map<String,dynamic> map={};
                map["title"]=titleController.text;
                map["desc"]=descController.text;
                  database.insertWork(map);
                  titleController.text = '';
                  descController.text = '';
                  setState(() {});
              }
              else{
                Map<String,dynamic> map={};
                map["title"]=titleController.text;
                map["desc"]=descController.text;
                database.updateWork(id,map);
                titleController.text = '';
                descController.text = '';
              }
              Navigator.pop(context);
              setState(() {});
            }, child: Text('$button'))
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("To_Do List with Database",style: TextStyle(fontSize: 20,color: Colors.purple),),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
          future: database.showList(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text("Error: ${snapshot.error}"));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text("No Data Available"));
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var item = snapshot.data![index];
                  return Card(
                    elevation: 5,
                    color: Colors.purple[100],
                    child: ListTile(
                      title: Text(item['title']),
                      subtitle: Text(item['desc']),
                      trailing: Wrap(
                        children: [
                          IconButton(onPressed: (){
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("DELETE"),
                                  content: Text("Are you sure you want to delete?"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        database.deleteWork(item["id"]);
                                        Navigator.pop(context);
                                        setState(() {});
                                      },
                                      child: Text("Yes"),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        setState(() {});
                                      },
                                      child: Text("No"),
                                    )
                                  ],
                                );
                              },
                            );

                            setState(() {});
                          
                          },
                              icon: Icon(Icons.delete,color: Colors.red,)),
                          IconButton(onPressed: (){
                            bottomSheet(context, id: item["id"], title: item["title"], desc: item["desc"]);

                          }, icon: Icon(Icons.edit,color: Colors.blue,))
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        return bottomSheet(context,id: null,title: titleController.text,desc: descController.text);
      },
        child: Icon(Icons.add),),
    )) ;
  }
}
