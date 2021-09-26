// ignore_for_file: file_names, prefer_const_constructors

import 'package:amez/Utils/myColors.dart';
import 'package:amez/Utils/myRoutes.dart';
import 'package:flutter/material.dart';

class CustomNavyBar extends StatefulWidget {
  CustomNavyBar({Key? key}) : super(key: key);

  @override
  _CustomNavyBarState createState() => _CustomNavyBarState();
}

class _CustomNavyBarState extends State<CustomNavyBar> {
  bool _isSelectedHOME = true;
  bool _isSelectedSEARCH = true;
  bool _isSelectedNOTICATION = true;
  bool _isSelectedPERSON = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 80,
        width: 400,
        decoration: BoxDecoration(
            color: MyColor.foreground, borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 10),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      _isSelectedHOME = !_isSelectedHOME;
                    });
                  },
                  icon: _isSelectedHOME
                      ? Icon(
                          Icons.home_outlined,
                          size: 36,
                        )
                      : Icon(
                          Icons.home_filled,
                          size: 36,
                          color: MyColor.activeTxt,
                        )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 10),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      _isSelectedSEARCH = !_isSelectedSEARCH;
                    });
                  },
                  icon: _isSelectedSEARCH
                      ? Icon(
                          Icons.search,
                          size: 36,
                        )
                      : Icon(
                          Icons.cancel,
                          size: 36,
                          color: MyColor.activeTxt,
                        )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 10),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      _isSelectedNOTICATION = !_isSelectedNOTICATION;
                    });
                  },
                  icon: _isSelectedNOTICATION
                      ? Icon(
                          Icons.notifications_outlined,
                          size: 36,
                        )
                      : Icon(
                          Icons.notifications,
                          size: 36,
                          color: MyColor.activeTxt,
                        )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 10),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      _isSelectedPERSON = !_isSelectedPERSON;
                    });
                    Navigator.popAndPushNamed(context, MyRoutes.profileRoute);
                  },
                  icon: _isSelectedPERSON
                      ? Icon(
                          Icons.person_outline,
                          size: 36,
                        )
                      : Icon(
                          Icons.person,
                          size: 36,
                          color: MyColor.activeTxt,
                        )),
            ),
          ],
        ),
      ),
    );
  }
}
