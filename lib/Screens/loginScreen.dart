// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'dart:ui';

import 'package:amez/Utils/myColors.dart';
import 'package:amez/Utils/myRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool _active = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.darkBlue,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(),
                    child: Image.asset('images/Login.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 120, top: 5),
              child: Text(
                "Please sign in to continue",
                style: TextStyle(
                    color: Colors.white24,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    color: MyColor.activeTxt,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Icon(
                        Icons.mail_outline_outlined,
                        size: 30,
                        color: MyColor.background,
                      ),
                    ),
                    Flexible(
                        child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          label: Text(
                            "USERNAME",
                            style: TextStyle(
                                color: Colors.white30,
                                fontWeight: FontWeight.bold),
                          )),
                    ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    color: MyColor.activeTxt,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _active = !_active;
                          });
                        },
                        child: Icon(
                          _active
                              ? Icons.lock_outlined
                              : Icons.lock_open_outlined,
                          size: 30,
                          color:
                              _active ? MyColor.background : Colors.greenAccent,
                        ),
                      ),
                    ),
                    Flexible(
                        child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "* Required";
                        } else if (value.length < 6) {
                          return "Password should be atleast 6 characters";
                        } else if (value.length > 15) {
                          return "Password should not be greater than 15 characters";
                        } else
                          return null;
                      },
                      obscureText: _active,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          label: Text(
                            "PASSWORD",
                            style: TextStyle(
                                color: Colors.white30,
                                fontWeight: FontWeight.bold),
                          )),
                    ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, MyRoutes.homeRoute);
                },
                child: Container(
                  height: 90,
                  width: 250,
                  decoration: BoxDecoration(
                      color: MyColor.blueAccent,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: MyColor.darkBlue,
                          fontWeight: FontWeight.bold,
                          fontSize: 32),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                    color: MyColor.blueAccent,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 70),
              child: Row(
                children: <Widget>[
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white30, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(
                            context, MyRoutes.registerRoute);
                      },
                      child: Text("Sign Up",
                          style: TextStyle(
                            color: MyColor.blueAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
