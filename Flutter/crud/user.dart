//user.dart Have User class

class User{

  List<Map<String,dynamic>> userList=[];

  //Insert User in list
  void addUser({required name, required age, required email}){
    Map<String,dynamic> map = {};
    map['Name']=name;
    map['Age']=age;
    map['Email']=email;
    userList.add(map);

  }

  // get print details of all User
  List<Map<String,dynamic>> getUser(){

    return userList;
  }

  //Update user details
  void updateUser({required name, required age, required email, required id}){
    Map<String,dynamic> map = {};
    map['Name']=name;
    map['Age']=age;
    map['Email']=email;
    userList[id]=map;

  }

  //delete User
  void deleteUser({required id}){
    userList.removeAt(id);

  }
  

  //search By Name
  void searchUser({required searchData}){
    for(dynamic data in userList){
      if(data['Name'].toString().toLowerCase().contains(searchData.toString().toLowerCase())){
        print("Data is Found:");
        print(" Name is ${data['Name']} ---and age is ${data['Age']} ---and email is ${data['Email']}");
      }
    }
  }
}