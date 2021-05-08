import 'package:flutter/material.dart';
import 'package:tutorial/Widget/mainDrawer.dart';

// ignore: must_be_immutable
class HomeBody extends StatelessWidget {
  String name = "Flutter is the best cross plaform";
  int number = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "First build",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $name app at day $number"),
        ),
      ),
      drawer: MainDrawers(),
    );
  }
}
