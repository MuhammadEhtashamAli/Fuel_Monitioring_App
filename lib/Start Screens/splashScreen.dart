// ignore_for_file: file_names

import 'package:ecomile_monitor/Screen/homeScreen.dart';
import 'package:ecomile_monitor/Start%20Screens/welcomeScreen.dart';
import 'package:flutter/material.dart';

import '../Screen/navigationScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void switchToSignInPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), switchToSignInPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/images/logo.png",
            width: 260,
            height: 220,
          )
        ]),
      ),
    );
  }
}
