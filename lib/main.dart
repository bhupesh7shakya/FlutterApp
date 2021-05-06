import 'package:flutter/material.dart';
import 'package:tutorial/page/loginPage.dart';
import 'page/homeBody.dart';
import 'page/loginPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    home: Home(),
    theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.green, brightness: Brightness.dark)),
    routes: {
      "/": (context) => Home(),
      "/login": (context) => LoginPage(),
    },
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First build"),
        centerTitle: true,
      ),
      body: HomeBody(),
      drawer: Drawer(),
    );
  }
}
