import 'package:flutter/material.dart';
import 'package:my_project_flutter/floatingbutoon.dart';
import 'package:my_project_flutter/home_screen.dart';
import 'package:my_project_flutter/progressIndicator.dart';
import 'package:my_project_flutter/slider.dart';
import 'package:my_project_flutter/snackbar.dart';
import 'package:my_project_flutter/stepper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
     );
  }
}
