import 'package:flutter/material.dart';

class Practice2 extends StatefulWidget {
  const Practice2({super.key});

  @override
  State<Practice2> createState() => _Practice2State();
}

class _Practice2State extends State<Practice2> {

  final PageController _controller = PageController(initialPage: 0, // 🌟 Start from Page 2 (Index 1),
                                                    viewportFraction: 0.8,
                                                    keepPage: false); // Only 80% of the screen
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Grid:::::"),
      ),
      //region GridView.count()
      // body: GridView.count(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 100,
      //   mainAxisSpacing: 20,
      //   scrollDirection: Axis.vertical,
      //   reverse: true,
      //   children: [
      //     Card(color: Colors.blue,),
      //     Card(color: Colors.green,),
      //     Card(color: Colors.red,),
      //     Card(color: Colors.pink,),
      //     Card(color: Colors.blueGrey,)
      //   ],
      // ),
      //endregion

      //region GridView.builder()
      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //     maxCrossAxisExtent: 250,  // Each item will be at most 250px wide
      //     mainAxisSpacing: 50.0,
      //     crossAxisSpacing: 40.0,
      //   ),
      //   itemBuilder: (context, index) {
      //     return Container(
      //       color: Colors.green,
      //       child: Center(child: Text("Item $index")),
      //     );
      //   },
      // ),
      //endregion

      //region GridView.custom()

      //endregion

      //region GridView.extent()

      //endregion

      //region PageView()
      // body: PageView(
      //   children: [
      //   Container(color: Colors.red, child: Center(child: Text("Page 1"))),
      //     Container(color: Colors.green, child: Center(child: Text("Page 2"))),
      //     Container(color: Colors.blue, child: Center(child: Text("Page 3"))),
      //     ],
      //   ),
      //endregion

      //region PageView Controller()
      // body: PageView(
      //   controller: _controller,
      //   // physics: NeverScrollableScrollPhysics(), // 🔥 Disables swipe
      //   children: [
      //     Container(color: Colors.red, child: Center(child: Text("Page 1"))),
      //     Container(color: Colors.green, child: Center(child: Text("Page 2"))),
      //     Container(color: Colors.blue, child: Center(child: Text("Page 3"))),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         ElevatedButton(
      //           onPressed: prevPage,
      //           child: Text("Previous"),
      //         ),
      //         ElevatedButton(
      //           onPressed: nextPage,
      //           child: Text("Next"),
      //         ),
      //       ],
      //     )
      //   ],
      //
      // ),
      //endregion


    )
    );
  }
  void nextPage() {
    _controller.animateToPage(
      _controller.page!.toInt() + 1,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void prevPage() {
    _controller.animateToPage(
      _controller.page!.toInt() - 1,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
