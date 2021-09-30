// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:amez/Utils/myColors.dart';
import 'package:flutter/material.dart';

class SubjectContainer extends StatelessWidget {
  const SubjectContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: 400,
        decoration: BoxDecoration(
          color: MyColor.activeTxt,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: const Offset(
                2.0,
                8.0,
              ),
              blurRadius: 15.0,
              spreadRadius: 5.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            'images/Math.png',
            width: 250,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
