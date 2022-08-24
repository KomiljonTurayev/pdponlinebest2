import 'package:flutter/material.dart';
import 'package:pdponlinebest2/pages/home_page.dart';
import 'package:pdponlinebest2/pages/home_page2.dart';
import 'package:pdponlinebest2/pages/home_page3.dart';
import 'package:pdponlinebest2/pages/home_page4.dart';
import 'package:pdponlinebest2/pages/home_page5.dart';
import 'package:pdponlinebest2/pages/home_page6.dart';
import 'package:pdponlinebest2/pages/homework1.dart';
import 'package:pdponlinebest2/pages/homework2.dart';
import 'package:pdponlinebest2/pages/homework3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homework3(),
    );
  }
}
