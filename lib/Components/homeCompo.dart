// ignore_for_file: file_names

import 'package:amez/Utils/myColors.dart';
import 'package:flutter/material.dart';

class HomeCompo extends StatefulWidget {
  HomeCompo({Key? key}) : super(key: key);

  @override
  _HomeCompoState createState() => _HomeCompoState();
}

class _HomeCompoState extends State<HomeCompo> {
  bool changeClr = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          changeClr = !changeClr;
        });
      },
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
            color: changeClr ? MyColor.text : MyColor.activeTxt,
            borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
