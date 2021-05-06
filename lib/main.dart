import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: true,
    theme: ThemeData(
        appBarTheme: AppBarTheme(
      backgroundColor: Colors.green,
    )),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first build"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text("hello world"),
        ),
      ),
    );
  }
}
