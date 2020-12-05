import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:servicesapp/Home.dart';
import 'package:servicesapp/signup.dart';

final Color textcolor = Color(0XFF993052);

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String email = "  ";
  String password = "  ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 40.0,
                  ),
                  Image.asset(
                    "assets/logooo.png",
                    height: 200,
                    width: 200,
                  ),
                  Text(
                    "WELCOME",
                    style: TextStyle(
                      color: textcolor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: new Theme(
                            data: new ThemeData(
                              primaryColor: textcolor,
                              primaryColorDark: textcolor,
                            ),
                            child: TextFormField(
                              controller: emailController,
                              decoration: new InputDecoration(
                                prefixIcon: Icon(Icons.email),
                                hintText: "Enter Your Email",
                                hintStyle: TextStyle(
                                  color: textcolor,
                                ),
                                fillColor: textcolor,
                                // border: new OutlineInputBorder(
                                //   borderRadius: new BorderRadius.circular(25.0),
                                //   borderSide: new BorderSide(),
                                // ),
                                //fillColor: Colors.green
                              ),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Email cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              style: new TextStyle(
                                color: Colors.black,
                                fontFamily: "Poppins",
                              ),
                            )),
                      )),
                  Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: new Theme(
                            data: new ThemeData(
                              primaryColor: textcolor,
                              primaryColorDark: textcolor,
                            ),
                            child: TextFormField(
                              obscureText: _obscureText,
                              controller: passwordController,
                              decoration: new InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: GestureDetector(
                                    onTap: _toggle,
                                    child: new Icon(_obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility)),
                                hintText: "Enter Your Password",
                                hintStyle: TextStyle(color: textcolor),
                                fillColor: textcolor,
                              ),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Password cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              style: new TextStyle(
                                color: Colors.black,
                                fontFamily: "Poppins",
                              ),
                            )),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Align(
                        child: Text(
                          "ForgotPassword?",
                          style: TextStyle(
                            color: Color(0xFF0e737b),
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        alignment: Alignment.bottomRight,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 60.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFFDD4B7C), Color(0xFF0e737b)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 300.0, minHeight: 60.0),
                            alignment: Alignment.center,
                            child: Text(
                              "Sign In",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                      height: 60.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFFDD4B7C), Color(0xFF0e737b)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 300.0, minHeight: 60.0),
                            alignment: Alignment.center,
                            child: Text(
                              "Sign Up",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      height: 60.0,
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFFDD4B7C), Color(0xFF0e737b)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 360.0, minHeight: 60.0),
                            alignment: Alignment.center,
                            child: Text(
                              "Continue without login",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            )));
  }
}
