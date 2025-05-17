//user.dart

class User{

    List<Map<String,dynamic>> userList=[];

    void addUser({required name,required age,required email}){
        Map<String,dynamic> map={};
        map['Name']=name;
        map['Age']=age;
        map['Email']=email;
        userList.add(map);
    }

    List<Map<String,dynamic>> getUser(){
      return userList;
    }
    void updateUser({required name,required age,required email,required id}){
      Map<String,dynamic> map={};
      map['Name']=name;
      map['Age']=age;
      map['Email']=email;
      userList[id]=map;
    }
    void deleteUser({required id}){
        userList.removeAt(id);
    }
    void serachDetails({required searchData}){

      for( dynamic element in userList){
        if(element['Name'].toString().toLowerCase()
                          .contains(searchData.toString().toLowerCase()) ||
          element['Age'].toString().toLowerCase()
                        .contains(searchData.toString().toLowerCase()) ||
          element['Email'].toString().toLowerCase()
                        .contains(searchData.toString().toLowerCase())
        ){
          print(" Name is ${element['Name']} and age is ${element['Age']} and email is ${element['Email']}");
          print("Object is found");
        }
      }
    }
}