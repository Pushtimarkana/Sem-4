import 'package:flutter/material.dart';

class ScrollListgrid12p2 extends StatefulWidget {
  const ScrollListgrid12p2({super.key});

  @override
  State<ScrollListgrid12p2> createState() => _ScrollListgrid12p2State();
}

class _ScrollListgrid12p2State extends State<ScrollListgrid12p2> {
  List<String> cities = [
    "Ahmedabad",
    "Surat",
    "Vadodara",
    "Rajkot",
    "Bhavnagar",
    "Jamnagar",
    "Junagadh",
    "Gandhinagar",
    "Anand",
    "Nadiad",
    "Morbi",
    "Mehsana",
    "Navsari",
    "Vapi",
    "Bharuch",
    "Palanpur",
    "Porbandar",
    "Godhra",
    "Dahod",
    "Valsad"
  ];
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scroll Screen",style: TextStyle(fontSize: 30,color: Colors.green),),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 200, color: Colors.red),

            Row(
              children: [
                Expanded(
                  child: Container(height: 300, color: Colors.yellow,
                    child: ListView.builder(
                        itemCount: cities.length,
                        itemBuilder: (context,index){
                          return Text(cities[index],style: TextStyle(fontSize: 30),);
                        }),
                  ),
                ),
                Expanded(
                  child: Container(height: 300, color: Colors.grey,
                    child:GridView.builder(
                        itemCount: gridList.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                        itemBuilder: (context,index){
                          return Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(image: NetworkImage(gridList[index]["img"]!),fit: BoxFit.cover)
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        }),
                  ),
                ),
              ],
            ),

            Container(height: 200, color: Colors.pinkAccent),
          ],
        ),
      ),
    );
  }
}
