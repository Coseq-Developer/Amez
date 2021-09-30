// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:amez/Utils/myColors.dart';
import 'package:amez/Utils/myRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LessonContainer extends StatefulWidget {
  const LessonContainer({Key? key}) : super(key: key);

  @override
  State<LessonContainer> createState() => _LessonContainerState();
}

class _LessonContainerState extends State<LessonContainer> {
  bool _completed = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onLongPress: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: MyColor.background,
                  ),
                  child: Row(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _completed = !_completed;
                              });
                            },
                            child: _completed
                                ? Text(
                                    "Mark as Complete? ",
                                    style: TextStyle(
                                        color: MyColor.activeTxt,
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                  )
                                : Text(
                                    " Mark as Incomplete?",
                                    style: TextStyle(
                                        color: MyColor.activeTxt,
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
        },
        child: Container(
          height: 150,
          width: 400,
          decoration: BoxDecoration(
            color: _completed ? MyColor.activeTxt : Colors.lightGreen,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: const Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: const Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircleAvatar(
                  backgroundColor: MyColor.activeTxt,
                  backgroundImage: _completed
                      ? AssetImage('images/Coding.png')
                      : AssetImage('images/Complete.png'),
                  radius: 50,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: _completed
                        ? Text(
                            "On Going...",
                            style: TextStyle(color: MyColor.text, fontSize: 24),
                          )
                        : Text(
                            "Completed !",
                            style: TextStyle(
                                color: MyColor.activeTxt, fontSize: 24),
                          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 10),
                    child: _completed
                        ? Text(
                            "2 minutes ago ",
                            style: TextStyle(color: MyColor.text, fontSize: 16),
                          )
                        : Text(
                            "All Done !",
                            style: TextStyle(
                                color: MyColor.activeTxt, fontSize: 16),
                          ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
