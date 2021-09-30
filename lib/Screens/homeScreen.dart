// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:amez/Components/homeCompo.dart';
import 'package:amez/Utils/myColors.dart';
import 'package:amez/Utils/myRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.darkBlue,
      appBar: AppBar(backgroundColor: MyColor.darkBlue, actions: [
        Padding(
          padding: const EdgeInsets.only(right: 260, top: 10),
          child: Text(
            "AMEZ",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                letterSpacing: 0.5),
          ),
        ),
        IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      color: MyColor.activeTxt,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 150),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.popAndPushNamed(
                                context, MyRoutes.loginRoute);
                          },
                          child: Text(
                            "Logout ?",
                            style: TextStyle(
                                color: MyColor.background,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    );
                  });
            },
            icon: Icon(
              Icons.menu,
              size: 32,
            ))
      ]),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    color: MyColor.blueAccent,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  child: Text(
                    "SCHEDULE",
                    style: TextStyle(
                        fontSize: 46,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: GoogleFonts.novaRound().fontFamily),
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[HomeCompo(), HomeCompo()],
            ),
            Row(
              children: <Widget>[
                HomeCompo(),
                HomeCompo(),
              ],
            ),
            Row(
              children: <Widget>[
                HomeCompo(),
                HomeCompo(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
