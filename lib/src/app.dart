import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:six_jars_saving/src/screens/home_screen.dart';
import 'package:six_jars_saving/src/screens/onboarding_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnBoardingScreen(),
    );
  }
}
