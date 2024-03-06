// ignore_for_file: prefer_final_fields, camel_case_types, prefer_const_constructors

import 'package:ecomile_monitor/Screen/PredictionScreen.dart';
import 'package:ecomile_monitor/Screen/homeScreen.dart';
import 'package:ecomile_monitor/Screen/tabBarNavScreen.dart';
import 'package:ecomile_monitor/Screen/trackingScreen.dart';
import 'package:flutter/material.dart';

import 'nearPumpScreen.dart';

class navigationScreen extends StatefulWidget {
  const navigationScreen({super.key});

  @override
  State<navigationScreen> createState() => _navigationScreenState();
}

class _navigationScreenState extends State<navigationScreen> {
  int selectedIndex = 0;

  PageController controller = PageController(
    initialPage: 0,
    viewportFraction: 1.0,
  );
  List<Widget> _screens = [
    const HomepageScreen(),
    // PredictionScreen(),
    const TabBarNavScreen(),
    TrackingScreen(),
    NearPumpScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1E1F28),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey.shade300,
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            onTap: (tappedindex) {
              setState(() {
                selectedIndex = tappedindex;
                controller.animateToPage(tappedindex,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.bounceIn);
              });
            },
            selectedItemColor: Color(0xff217C7E),
            selectedLabelStyle: TextStyle(color: Color(0xffEF3651)),
            unselectedItemColor: Colors.grey[700],
            unselectedLabelStyle: TextStyle(color: Colors.grey[700]),
            iconSize: 30,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "HOME",
                  // tooltip: "HOME"
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                      Icons.trending_up,
                  ),
                  label: "PREDICTION",
                  // tooltip: "PREDICTION"
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.badge,
                  ),
                  label: "TRACKING",
                  // tooltip: "TRACKING"
              ),

              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.local_gas_station,
                  ),
                  label: "NEAR PUMP",
                  tooltip: "NEAR PUMP")]),
        body: PageView(
            controller: controller,
            onPageChanged: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            children: _screens));
  }
}