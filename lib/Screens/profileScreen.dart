// ignore_for_file: file_names

import 'package:amez/Utils/myColors.dart';
import 'package:amez/Utils/myRoutes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: MyColor.background,
        title: Text(
          "Account Details",
          style: TextStyle(color: MyColor.activeTxt),
        ),
        leading: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, MyRoutes.homeRoute);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: MyColor.activeTxt,
                  size: 32,
                )),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    width: 400,
                    decoration: BoxDecoration(
                        color: MyColor.activeTxt,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isSelected = !_isSelected;
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 190,
                    decoration: BoxDecoration(
                        color: MyColor.activeTxt,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSelected = !_isSelected;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                          color: MyColor.activeTxt,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isSelected = !_isSelected;
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 190,
                    decoration: BoxDecoration(
                        color: _isSelected
                            ? MyColor.activeTxt
                            : MyColor.foreground,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSelected = !_isSelected;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                          color: MyColor.activeTxt,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isSelected = !_isSelected;
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 190,
                    decoration: BoxDecoration(
                        color: MyColor.activeTxt,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSelected = !_isSelected;
                      });
                    },
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                          color: MyColor.activeTxt,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
