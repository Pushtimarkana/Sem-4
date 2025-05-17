import 'package:flutter/material.dart';

class BirthdayCard extends StatelessWidget{
  //const Birthday8p3({super.key});

  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      body: Center(
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: [

              Image.network("https://png.pngtree.com/thumb_back/fw800/background/20190124/pngtree-black-simple-birthday-background-image_1359.jpg",fit: BoxFit.fill,),
              //Image.network("https://www.pngall.com/wp-content/uploads/10/White-Paper-PNG-Images.png")
              Positioned(
                  right: MediaQuery.of(context).size.width*0.4,
                  top:  MediaQuery.of(context).size.height*0.5,
                  child: Text("Happy BirthDay ${name}🤩",style: TextStyle(fontSize: 50,color: Colors.white),)
              ),
              Positioned(
                  left: 500,
                  top: 500,
                  child:Text("Many Many Happy Returns of the Day",style: TextStyle(fontSize: 50,color: Colors.white),)
              )

            ],
          ),
        ),
      ),
    );
  }
}
