import 'package:flutter/material.dart';
import 'package:lab2/HomeWork4/homeScreen.dart';
import 'package:lab2/Homework6/home_travel_ui.dart';
import 'package:lab2/Homework6/main_screen.dart';
import 'package:lab2/homework3/detailProduct.dart';
// import 'package:lab2/homework3/saleScreen.dart';
import 'package:lab2/widget/detail.dart';
import 'package:lab2/widget/homepage.dart';

import 'Homework5/saleScreen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
