import 'package:flutter/material.dart';

class Gridview11 extends StatelessWidget {
  const Gridview11({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> gridList = [
      {
        "img":
        "https://images.pexels.com/photos/235986/pexels-photo-235986.jpeg?auto=compress&cs=tinysrgb",
        "text": "Nature - Mountains"
      },
      {
        "img": "https://images.unsplash.com/photo-1540206395-68808572332f",
        "text": "Abstract Gradient"
      },
      {
        "img": "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
        "text": "Cityscape - Skyline at night"
      },
      {
        "img":
        "https://images.pexels.com/photos/276092/pexels-photo-276092.jpeg?auto=compress&cs=tinysrgb&w=600",
        "text": "Minimalist - Clean gradient"
      },
      {
        "img": "https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3",
        "text": "Space - Galaxy"
      },
      {
        "img":
        "https://images.pexels.com/photos/289586/pexels-photo-289586.jpeg?auto=compress&cs=tinysrgb&w=600",
        "text": "Ocean - Waves"
      },
      {
        "img":
        "https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg?auto=compress&cs=tinysrgb&w=600",
        "text": "Forest - Nature"
      },
      {
        "img":
        "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&w=600",
        "text": "Urban - Street"
      },
      {
        "img":
        "https://images.pexels.com/photos/289586/pexels-photo-289586.jpeg?auto=compress&cs=tinysrgb&w=600",
        "text": "Texture - Wooden"
      },
      {
        "img": "https://images.unsplash.com/photo-1446776811953-b23d57bd21aa",
        "text": "Sunset - Serene beach"
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View",style: TextStyle(fontSize: 50,color: Colors.black),),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemCount: gridList.length,
          itemBuilder: (context,index){
            return Column(
              children: [
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.only(top: 50.0,right: 50,left: 50),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage(gridList[index]["img"]!),fit: BoxFit.cover)
                      ),
                    ),
                  ),
                ),
                Text(gridList[index]["text"]!,style: TextStyle(fontSize: 20,color: Colors.black),)
              ],
            );
          }),
    );
  }
}
