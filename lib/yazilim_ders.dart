import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class test extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: ListView.builder(itemCount: 10,itemBuilder: (_,index){
        return Container(
          margin: EdgeInsets.only(bottom: 5),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Text("Widget $index"),
        );
      }),
    );
  }
}