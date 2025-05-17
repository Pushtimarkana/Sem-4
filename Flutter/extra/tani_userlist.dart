// class UserList extends StatefulWidget {
//   @override
//   State<UserList> createState() => _UserListState();
// }
//
// class _UserListState extends State<UserList> {
//
//   User user = User();
//   late int age;
//   TextEditingController searchController = TextEditingController();
//   List<Map<String, dynamic>> filteredUser = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _loadUserList();
//   }
//
//   Future<void> _loadUserList() async {
//     User.userList = List.from(await User().getUserList());
//     filteredUser = List.from(User.userList);
//     setState(() {});
//   }
//
//   void searchUser(String searchData) {
//     String searchData=searchController.text;
//     setState(() {
//       if (searchData.isNotEmpty) {
//         filteredUser = User.userList.where((user) {
//           return user['NAME']
//               .toString()
//               .toLowerCase()
//               .contains(searchData.toString().toLowerCase());
//         }).toList();
//       } else {
//         filteredUser = List.from(User.userList);
//       }
//     });
//   }
//
//
//   void sortBy_name_a_to_z(){
//     setState(() {
//       filteredUser.sort((a,b) => a['NAME'].toString().toLowerCase().compareTo(b['NAME'].toString().toLowerCase()));
//     });
//   }
//
//   void sortBy_name_z_to_a(){
//     setState(() {
//       filteredUser.sort((a,b) => b['NAME'].toString().toLowerCase().compareTo(a['NAME'].toString().toLowerCase()));
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//         title: Text(
//         'User List',
//         style: TextStyle(color: Colors.black, fontSize: 25),
//     ),
//     backgroundColor: Colors.blueGrey.shade100,
//     elevation: 4,
//     actions: [
//     IconButton(
//     onPressed: (){
//     showDialog(
//     context: context,
//     builder: (BuildContext context){
//     return AlertDialog(
//     title: Text(
//     'Sort by : ',
//     style: TextStyle(fontWeight: FontWeight.bold),
//     ),
//     content: Column(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//     ListTile(
//     leading: Icon(CupertinoIcons.textformat_abc),
//     title: Text('Name (A-Z)'),
//     onTap: (){
//     sortBy_name_a_to_z();
//     Navigator.pop(context);
//     },
//     trailing: Icon(CupertinoIcons.arrow_down,color: Colors.blueGrey,),
//     ),
//     ListTile(
//     leading: Icon(CupertinoIcons.textformat_abc),
//     title: Text('Name (Z-A)'),
//     onTap: (){
//     sortBy_name_z_to_a();
//     // Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => UserList(),));
//     Navigator.pop(context);
//     },
//     trailing: Icon(CupertinoIcons.arrow_up,color: Colors.blueGrey,),
//     ),
//     ListTile(
//     leading: Icon(CupertinoIcons.person),
//     title: Text('Age'),
//     onTap: (){
//     //sort list by NAME z-a
//     // Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => UserList(),));
//     Navigator.pop(context);
//     },
//     trailing: Icon(CupertinoIcons.arrow_up,color: Colors.blueGrey,),
//     ),
//     ListTile(
//     leading: Icon(CupertinoIcons.person),
//     title: Text('Age'),
//     onTap: (){
//     //sort list by NAME z-a
//     // Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => UserList(),));
//     Navigator.pop(context);
//     },
//     trailing: Icon(CupertinoIcons.arrow_down,color: Colors.blueGrey,),
//     ),
//
//     ],
//     ),
//     );
//     }
//     );
//     },
//     icon: Icon(CupertinoIcons.sort_down,size: 30,color: CupertinoColors.darkBackgroundGray,))
//     ],
//     ),
//     body: Column(
//     children: [
//     SizedBox(height: 8,),
//     Padding(
//     padding: EdgeInsets.symmetric(horizontal: 8),
//     child: TextFormField(
//     controller: searchController,
//     decoration: InputDecoration(
//     prefixIcon: Icon(CupertinoIcons.search),
//     hintText: 'Search here.......',
//     border: OutlineInputBorder(
//     borderRadius: BorderRadius.circular(25.0),
//     ),
//     ),
//     onChanged: (value){
//     searchUser(value);
//     }
//     ),
//     ),
//     SizedBox(height: 8,),
//     Expanded(
//     child: FutureBuilder(
//     future: User().getUserList(),
//     builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.waiting) {
//     return Center(child: CircularProgressIndicator());
//     }
//     else if (snapshot.hasData) {
//     var dataList = snapshot.data as List<Map<String, dynamic>>;
//
//     if (User.userList.isEmpty){
//     User.userList=dataList;
//     filteredUser=List.from(User.userList);
//     }
//
//     return Column(
//     children: [
//     SizedBox(height: 8),
//     // User.userList.isNotEmpty
//     filteredUser.isNotEmpty
//     ? Expanded(
//     child: ListView.builder(
//     itemCount: filteredUser.length,
//
//     // searchController.text.isEmpty
//     //     ?
//     // User.userList.length,
//     itemBuilder: (context, index) {
//     var user = filteredUser[filteredUser.length-index-1];
//     // searchController.text.isEmpty
//     //     ? User.userList[index]
//     //     : filteredUser[index];
//
//     return Center(
//     child: Card(
//     margin: EdgeInsets.symmetric(vertical: 6),
//     elevation: 4,
//     shadowColor: Colors.black26,
//     shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(8),
//     ),
//     child: Container(
//     width: MediaQuery.of(context).size.width *
//     0.95,
//     padding: EdgeInsets.all(12),
//     decoration: BoxDecoration(
//     color: user['GENDER']== 'Female'
//     ? Colors.deepPurple.shade50
//         : Colors.blueGrey.shade50,
//     borderRadius: BorderRadius.circular(16),
//     ),