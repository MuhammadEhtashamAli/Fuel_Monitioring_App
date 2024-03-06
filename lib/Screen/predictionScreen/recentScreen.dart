import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/color.dart';

class RecentScreen extends StatefulWidget {
  const RecentScreen({super.key});

  @override
  State<RecentScreen> createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  String Source = "Nazimabad";
  String Destination = "Saddar";
  String FuelConsumption = "2.5 L";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color(0xFF3A4281),
        //   title: Column(
        //     children: [
        //       Text(
        //         'RECENT',
        //         textAlign: TextAlign.center,
        //         style: GoogleFonts.inter(
        //           color: Colors.black,
        //           fontSize: 18,
        //           fontWeight: FontWeight.w700,
        //         ),
        //       ),
        //       Text(
        //         'حالیہ پیشن گوئی',
        //         textAlign: TextAlign.center,
        //         style: GoogleFonts.inter(
        //           color: Colors.black,
        //           fontSize: 18,
        //           fontWeight: FontWeight.w700,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        body: Column(
          children: [
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      // Change this to your image path
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.9), // Adjust opacity here
                        BlendMode.lighten, // Change blend mode as needed
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Source',
                                  textAlign: TextAlign.center,
                                  style: AppStyles.blackcolor),
                              Text('Destination',
                                  textAlign: TextAlign.center,
                                  style: AppStyles.blackcolor),
                              Text('Saved',
                                  textAlign: TextAlign.center,
                                  style: AppStyles.blackcolor),
                            ],
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.black,
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return ListTile(
                                onTap: () {
                                  // ShowBottomSheet();
                                },
                                title: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(Source,
                                            textAlign: TextAlign.center,
                                            style: AppStyles.black12),
                                        Text(Destination,
                                            textAlign: TextAlign.center,
                                            style: AppStyles.black12),
                                        IconButton(
                                          icon: Icon(
                                            Icons.star,
                                            color: Color(0xff3A4281),
                                          ),
                                          onPressed: () {
                                            // Add your action here
                                          },
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
