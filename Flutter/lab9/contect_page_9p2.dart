import 'package:flutter/material.dart';

class ContectPage9p2 extends StatelessWidget {
  const ContectPage9p2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Contect Us 📞",style: TextStyle(fontSize: 50,color: Colors.pinkAccent),)
          ],
        ),
      ),
    );
  }
}
