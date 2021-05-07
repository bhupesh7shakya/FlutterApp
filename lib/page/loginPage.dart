import 'package:flutter/material.dart';
import 'package:tutorial/routes/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  bool LoginButtonTaped = false;

  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
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
          SizedBox(height: 15),
          InkWell(
            splashColor: Colors.blue,
            onTap: () async {
              setState(() {
                (LoginButtonTaped)
                    ? LoginButtonTaped = false
                    : LoginButtonTaped = true;
                print("tapped");
              });
              await Future.delayed(Duration(milliseconds: 550));
              Navigator.pushNamed(context, MyRoutes.HomeRoute);
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: (LoginButtonTaped) ? 50 : 150,
              height: ((LoginButtonTaped) ? 50 : 50),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius:
                      BorderRadius.circular((LoginButtonTaped) ? 100 : 10)),
              child: (LoginButtonTaped)
                  ? Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 35,
                    )
                  : Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
            ),
          )
        ],
      ),
    ));
  }
}
