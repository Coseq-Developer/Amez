// ignore_for_file: prefer_const_constructors_in_immutables, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:amez/Components/lessonContainer.dart';
import 'package:amez/Components/subjectContainer.dart';
import 'package:amez/Utils/myColors.dart';
import 'package:amez/Utils/myRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "MATHS",
          style:
              TextStyle(color: MyColor.blueAccent, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, MyRoutes.homeRoute);
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: MyColor.blueAccent,
              size: 28,
            )),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            SubjectContainer(),
            Padding(
              padding: const EdgeInsets.only(right: 250, top: 8),
              child: Text(
                "Lesson's :",
                style: TextStyle(
                    color: MyColor.text,
                    fontSize: 28,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: <Widget>[
                LessonContainer(),
                LessonContainer(),
                LessonContainer(),
                LessonContainer(),
                LessonContainer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
