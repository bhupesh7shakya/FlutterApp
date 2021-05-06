import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset(
          "asset/images/login.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          "Welcome",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Container(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter User Name", labelText: "Username"),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
            child: Text("Login"),
            onPressed: () {
              print("clicked");
            })
      ],
    ));
  }
}
