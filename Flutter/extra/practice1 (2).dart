import 'package:flutter/material.dart';

/////  ::: floating action Button:::: ///


class Practice1 extends StatefulWidget {
  const Practice1({super.key});

  @override
  State<Practice1> createState() => _Practice1State();
}

class _Practice1State extends State<Practice1> {

  bool isExtended = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body:Column(
        children: [
          Text('Hello'),
          Text('World'),
        ],
      ),
    // floatingActionButton: AnimatedSwitcher(
    // duration: Duration(milliseconds: 300),
    //   child: isExtended
    //       ? FloatingActionButton.extended(
    //     key: ValueKey(1),
    //     onPressed: () {
    //       setState(() {
    //         isExtended = false;
    //       });
    //     },
    //     elevation: 50,
    //     label: Text("Send"),
    //     icon: Icon(Icons.send),
    //   )
    //       : FloatingActionButton(
    //     key: ValueKey(2),
    //     onPressed: () {
    //       setState(() {
    //         isExtended = true;
    //       });
    //     },
    //     child: Icon(Icons.send),
    //   ),
    // )

    ));
  }
}
