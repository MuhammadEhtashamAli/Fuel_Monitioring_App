import 'package:ecomile_monitor/widget/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  String Source = "Nazimabad";
  String Destination = "Saddar";
  String FuelConsumption = "2.5 L";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF3A4281),
      //
      //   title: Column(
      //     children: [
      //       Text(
      //         'SAVED',
      //         textAlign: TextAlign.center,
      //         style: GoogleFonts.inter(
      //           color: Colors.black,
      //           fontSize: 18,
      //           fontWeight: FontWeight.w700,
      //         ),
      //       ),
      //       Text(
      //         'محفوظ کریں',
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
      body: SingleChildScrollView(
        child: Column(
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
                      Text(
                        'January',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: const Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'TotalNoOfDays: 3',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: const Color(0xff000000),
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Source',
                                  textAlign: TextAlign.center,
                                  style: AppStyles.blackcolor),
                              Text('Destination',
                                  textAlign: TextAlign.center,
                                  style: AppStyles.blackcolor),
                              Text('Fuel Consumption ',
                                  textAlign: TextAlign.center,
                                  style: AppStyles.blackcolor),
                              Text('Action',
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
                                  ShowBottomSheet();
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
                                        Text(FuelConsumption,
                                            textAlign: TextAlign.center,
                                            style: AppStyles.black12),
                                        IconButton(
                                          icon: Icon(Icons.more_vert),
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

  void ShowBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
      ),
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          width: 374,
          height: 424,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff3A4281),
                  minimumSize: Size(109, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                child: Text(
                  'PREDICTION DATA',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Source Location: ',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Destination Location: ',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Fuel Consumption: ',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Source Time: ',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Destination Time: ',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Max Speed Range: ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff3A4281),
                      minimumSize: Size(109, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff3A4281),
                      minimumSize: Size(109, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    child: Text(
                      'Print',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
