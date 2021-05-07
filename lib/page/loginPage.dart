import 'package:flutter/material.dart';
import 'package:tutorial/routes/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool loginButtonTaped = false;
  final formkey = GlobalKey<FormState>();
  String name = "sir";

  moveToHome(BuildContext context) async {
    if (formkey.currentState.validate()) {
      setState(() {
        loginButtonTaped = true;
        print("tapped");
      });
      await Future.delayed(Duration(milliseconds: 1000));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      await Future.delayed(Duration(milliseconds: 500));
      setState(() {
        loginButtonTaped = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
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
                "Welcome $name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                child: Form(
                  key: formkey,
                  child: Container(
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            name = value;
                            if (value.isEmpty) {
                              return "Email required";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: "Enter User Name",
                              labelText: "Username"),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value.length < 6) {
                              return "Password length must atlest be 6";
                            } else if (value.isEmpty) {
                              return "Password requiered";
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter Password",
                              labelText: "Password"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Material(
                color: Colors.deepPurpleAccent,
                borderRadius:
                    BorderRadius.circular((loginButtonTaped) ? 100 : 10),
                child: InkWell(
                  splashColor: Colors.blue,
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: (loginButtonTaped) ? 50 : 150,
                    height: ((loginButtonTaped) ? 50 : 50),
                    alignment: Alignment.center,
                    child: (loginButtonTaped)
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
                ),
              )
            ],
          ),
        ));
  }
}
