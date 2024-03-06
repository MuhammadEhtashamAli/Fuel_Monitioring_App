import 'package:ecomile_monitor/Start%20Screens/measurementScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(height: 122), // Adjust the amount of space as needed
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/welcome.png',
                        height: 381,
                        width: 381, // Adjust height as needed
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'WELCOME TO ECOMILE MONITOR',
                          style: GoogleFonts.montaguSlab(
                            color: const Color(0xff000000),
                            fontSize: 31,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            style: GoogleFonts.montaguSlab(
                              color: const Color(0xff000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text:
                                      'Ecomile Monitor provides the ultimate solution for vehicle owners.\n'),
                              TextSpan(
                                  text:
                                      'Predictive fuel consumption estimates how much fuel your vehicle needs for any distance. Plus, track your vehicle\'s whereabouts and remotely cut off its power, all from your mobile phone.\n\n',),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Text(
                      'Skip',
                      style: GoogleFonts.sanchez(
                        color: const Color(0xff000000),
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MeasurementScreen()));
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff09209B),
                      shape: BoxShape
                          .circle, // This makes the container circular
                    ),
                    child: IconButton(
                      iconSize: 50,
                      icon: Icon(Icons.arrow_forward, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MeasurementScreen()));

                        // Add functionality for forward button
                      },
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
