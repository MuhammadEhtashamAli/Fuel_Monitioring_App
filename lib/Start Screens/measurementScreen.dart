import 'package:ecomile_monitor/Start%20Screens/consumptionScreen.dart';
import 'package:ecomile_monitor/Start%20Screens/vehicleTrackingScreen.dart';
import 'package:ecomile_monitor/Start%20Screens/welcomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MeasurementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 70),
                            child: Image.asset(
                              'assets/images/circle 1.png',
                              height: 15,
                              width: 15, // Adjust height as needed
                              // fit: BoxFit.cover,
                            ),
                          ),
                          Image.asset(
                            'assets/images/Polygon 1.png',
                            height: 90,
                            width: 83, // Adjust height as needed
                            // fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 40),
                            child: Image.asset(
                              'assets/images/Star 1.png',
                              height: 50,
                              width: 50, // Adjust height as needed
                              // fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Image.asset(
                              'assets/images/Vector 1.png',
                              height: 90,
                              width: 70, // Adjust height as needed
                              // fit: BoxFit.cover,
                            ),
                          ),
                        ]),
                    Center(
                      child: Image.asset(
                        alignment: Alignment.center,
                        'assets/images/accurate.png',
                        height: 341,
                        width: 381, // Adjust height as needed
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/Ellipse 1.png',
                            height: 71,
                            width: 69, // Adjust height as needed
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 35, bottom: 90),
                            child: Image.asset(
                              'assets/images/circle 1.png',
                              height: 15,
                              width: 15, // Adjust height as needed
                              alignment: Alignment.topLeft,
                              // fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text: 'ACCURATE\n',
                          style: GoogleFonts.montaguSlab(
                            color: const Color(0xff000000),
                            fontSize: 23,
                            fontWeight: FontWeight.w700,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'FUEL\n',
                              style: GoogleFonts.montaguSlab(
                                color: const Color(0xff000000),
                                fontSize: 23,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: 'MEASUREMENT\n',
                              style: GoogleFonts.montaguSlab(
                                color: const Color(0xff000000),
                                fontSize: 23,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'Our Device provides precise digital value\n',
                              style: GoogleFonts.montaguSlab(
                                color: const Color(0xff000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'fuel monitoring. Track fuel accurately\n',
                              style: GoogleFonts.montaguSlab(
                                color: const Color(0xff000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'during refills at petrol stations.\n',
                              style: GoogleFonts.montaguSlab(
                                color: const Color(0xff000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff09209B),
                      shape:
                          BoxShape.circle, // This makes the container circular
                    ),
                    child: IconButton(
                      iconSize: 50,
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                        // Add functionality for forward button
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff09209B),
                      shape:
                          BoxShape.circle, // This makes the container circular
                    ),
                    child: IconButton(
                      iconSize: 50,
                      icon: Icon(Icons.arrow_forward, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => consumptionScreen()));
                        // Add functionality for forward button
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
