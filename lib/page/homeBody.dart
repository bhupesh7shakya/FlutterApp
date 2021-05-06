import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeBody extends StatelessWidget {
  String name = "Flutter is the best cross plaform";
  int number = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Welcome to $name app at day $number"),
      ),
    );
  }
}
