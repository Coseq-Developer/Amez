// ignore_for_file: prefer_const_constructors_in_immutables, file_names, prefer_const_constructors

import 'package:amez/Utils/myColors.dart';
import 'package:amez/Utils/myRoutes.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.darkBlue,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 40, top: 100),
              child: Text(
                "Create Account",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100, top: 5),
              child: Text(
                "Please fill the input below here",
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
                        Icons.person_outline_rounded,
                        size: 30,
                        color: MyColor.background,
                      ),
                    ),
                    Flexible(
                        child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          label: Text(
                            "FULL NAME",
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
                      child: Icon(
                        Icons.phone_android_outlined,
                        size: 30,
                        color: MyColor.background,
                      ),
                    ),
                    Flexible(
                        child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          label: Text(
                            "PHONE",
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
                            "Email",
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
                            _isActive = !_isActive;
                          });
                        },
                        child: Icon(
                          _isActive
                              ? Icons.lock_outlined
                              : Icons.lock_open_outlined,
                          size: 30,
                          color: _isActive
                              ? MyColor.background
                              : Colors.greenAccent,
                        ),
                      ),
                    ),
                    Flexible(
                        child: TextFormField(
                      obscureText: _isActive,
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
                      "SIGN UP",
                      style: TextStyle(
                          color: MyColor.darkBlue,
                          fontWeight: FontWeight.bold,
                          fontSize: 28),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 70),
              child: Row(
                children: <Widget>[
                  Text(
                    "Already have a account?",
                    style: TextStyle(color: Colors.white30, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, MyRoutes.loginRoute);
                      },
                      child: Text("Sign in",
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
