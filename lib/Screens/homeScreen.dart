// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:amez/Utils/myColors.dart';
import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.only(right: 300, top: 10),
          child: Text(
            "AMEZ",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                letterSpacing: 0.5),
          ),
        )
      ]),
      body: Column(
        children: <Widget>[Container()],
      ),
    );
  }
}
