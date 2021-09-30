// ignore_for_file: file_names, prefer_const_constructors

import 'package:amez/Utils/myColors.dart';
import 'package:amez/Utils/myRoutes.dart';
import 'package:flutter/material.dart';

class HomeCompo extends StatefulWidget {
  HomeCompo({Key? key}) : super(key: key);

  @override
  _HomeCompoState createState() => _HomeCompoState();
}

class _HomeCompoState extends State<HomeCompo> {
  bool _clicked = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: () async {
          setState(() {
            _clicked = !_clicked;
          });
          Navigator.popAndPushNamed(context, MyRoutes.detailRoute);
        },
        onLongPress: () {
          showModalBottomSheet(
              backgroundColor: MyColor.activeTxt,
              elevation: 10,
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 200,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.edit,
                                    color: MyColor.foreground)),
                            Text("Edit",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.delete,
                                    color: MyColor.foreground)),
                            Text("Move to trash",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.delete_forever,
                                    color: MyColor.foreground)),
                            Text("Delete",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              });
        },
        child: Container(
          height: 250,
          width: 180,
          decoration: BoxDecoration(
              color: _clicked ? MyColor.activeTxt : MyColor.blueAccent,
              borderRadius: BorderRadius.circular(30)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Stack(children: [
              Image.asset('images/Maths.png',
                  width: double.infinity, height: 250, fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.only(top: 180),
                child: Container(
                  height: 80,
                  width: 300,
                  decoration:
                      BoxDecoration(color: MyColor.activeTxt.withOpacity(0.7)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 10),
                    child: Text(
                      "MATHS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
