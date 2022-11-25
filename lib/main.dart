import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:quize_app/Screens/home.dart';
import 'package:quize_app/Screens/question.dart';
import 'package:quize_app/colors/Palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Palette.kToDark
      ),
      home: HomePage(),
      // home: QuestionPage("",["",""],"assets/images/travel.svg"),
      builder: EasyLoading.init(),

    );
  }
}


