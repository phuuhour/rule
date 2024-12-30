import 'package:flutter/material.dart';

Widget SplashScreen() {
  return Scaffold(
    backgroundColor: Colors.white,
    body: Center(
      child: Image.asset(
        'assets/imgs/rule_logo.png',
        height: 160,
      ),
    ),
  );
}
