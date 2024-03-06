import 'package:ecomile_monitor/Screen/PredictionScreen.dart';
import 'package:ecomile_monitor/Screen/homeScreen.dart';
import 'package:ecomile_monitor/Start%20Screens/splashScreen.dart';
import 'package:ecomile_monitor/Start%20Screens/consumptionScreen.dart';
import 'package:ecomile_monitor/widget/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Admin Screen/adminNameScreen.dart';
import 'Screen/navigationScreen.dart';
import 'Start Screens/measurementScreen.dart';
import 'Start Screens/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecomile Monitoring',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
            titleSmall: GoogleFonts.metrophobic(
              fontSize: 14,
              color: const Color(0xffb80924),
              fontWeight: FontWeight.bold,
            ),
            titleMedium: GoogleFonts.metrophobic(
              fontSize: 18,
              color: AppColors.blueColor,
              fontWeight: FontWeight.bold,
            ),
            titleLarge: GoogleFonts.metrophobic(
              fontSize: 24,
              color: const Color(0xffb80924),
              fontWeight: FontWeight.bold,
            ),
            labelSmall: GoogleFonts.metrophobic(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            labelMedium: GoogleFonts.metrophobic(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            headlineSmall: GoogleFonts.metrophobic(
              fontSize: 14,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
            displaySmall: GoogleFonts.metrophobic(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            displayMedium: GoogleFonts.metrophobic(
              fontSize: 10,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            displayLarge: GoogleFonts.metrophobic(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            bodySmall: GoogleFonts.metrophobic(
              fontSize: 8,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AdminNameScreen(),

      // home: const PredictionScreen(),
      // home: SplashScreen(),

    );
  }
}
