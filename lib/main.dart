import 'package:flutter/material.dart';
import 'package:tutorial/Widget/Mytheme.dart';
import 'package:tutorial/page/loginPage.dart';
import 'page/homeBody.dart';
import 'page/loginPage.dart';
import 'routes/routes.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomeBody(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
