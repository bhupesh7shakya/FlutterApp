import 'package:flutter/material.dart';
import 'package:tutorial/page/loginPage.dart';
import 'page/homeBody.dart';
import 'page/loginPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    // home: Home(),
    themeMode: ThemeMode.dark,
    darkTheme: ThemeData(brightness: Brightness.light),
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    routes: {
      "/": (context) => LoginPage(),
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
