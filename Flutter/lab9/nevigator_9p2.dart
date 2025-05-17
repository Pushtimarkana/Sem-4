import 'package:flutter/material.dart';
import 'package:flutter_demo/lab9/about_page_9p1.dart';
import 'package:flutter_demo/lab9/contect_page_9p2.dart';
import 'package:flutter_demo/lab9/home_page_9p1.dart';

class Nevigator9p2 extends StatefulWidget{
  const Nevigator9p2({super.key});

  @override
  State<Nevigator9p2> createState() => _Nevigator9p2State();
}

class _Nevigator9p2State extends State<Nevigator9p2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "About",
              ),
            ]),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.logout))
            ],
          ),
          body: TabBarView(children: [
            HomePage9p1(),
            AboutPage9p1()

          ]),
          drawer: Drawer(
               child: Column(
                       children: [
                           DrawerHeader(child: Container(
                             color: Colors.pink,
                            //child: Icon(Icons.person),)),
                            child: Image.network("https://static.vecteezy.com/system/resources/previews/020/765/399/original/default-profile-account-unknown-icon-black-silhouette-free-vector.jpg"),)),
                          ListTile(
                            title: Text("Home"),
                            leading: Icon(Icons.home),
                            onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage9p1(),
                            ));
                          },),
                         ListTile(
                           title: Text("About"),
                           leading: Icon(Icons.add_box),
                           onTap: () {
                             Navigator.of(context).push(MaterialPageRoute(
                               builder: (context) => AboutPage9p1(),
                             ));
                           },),
                         ListTile(title: Text("Contect"),
                           leading: Icon(Icons.call),onTap: () {
                             Navigator.of(context).push(MaterialPageRoute(
                               builder: (context) => ContectPage9p2(),
                             ));
                           },),


                      ]
          )
        )
        ));
  }
}
