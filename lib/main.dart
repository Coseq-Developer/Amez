// ignore_for_file: prefer_const_constructors

import 'package:amez/Screens/detailScreen.dart';
import 'package:amez/Screens/loginScreen.dart';
import 'package:amez/Screens/notificationScreen.dart';
import 'package:amez/Screens/profileScreen.dart';
import 'package:amez/Screens/registerScreen.dart';
import 'package:amez/Screens/searchScreen.dart';
import 'package:amez/Utils/myRoutes.dart';
import 'package:flutter/material.dart';

import 'Screens/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        MyRoutes.homeRoute: (context) => HomeScreen(),
        MyRoutes.profileRoute: (context) => ProfileScreen(),
        MyRoutes.searchRoute: (context) => SearchScreen(),
        MyRoutes.notificationRoute: (context) => NotificationScreen(),
        MyRoutes.loginRoute: (context) => LoginScreen(),
        MyRoutes.registerRoute: (context) => RegisterScreen(),
        MyRoutes.detailRoute: (context) => DetailScreen(),
      },
    );
  }
}
