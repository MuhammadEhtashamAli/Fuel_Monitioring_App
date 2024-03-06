// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/widget.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double currentFuel = 15.3;
    double refillFuel = 3.5;

    return Scaffold(
      key: _scaffoldKey,
      // backgroundColor: const Color(0xff217C7E),
      drawer: _drawer(),
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //---------------------Fuel Meter Screen---------------------
            Container(
              width: double.infinity,
              // height: 445,
              // height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
                color: Color(0xFF3A4281), // Container ka color
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 8, // Icon ka size set karein
                              color: Colors.white, // Icon ka rang set karein
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              ' Presence Fuel',
                              style: GoogleFonts.inter(
                                  color: const Color(0xffFFFFFF),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            ' ${currentFuel} Liter',
                            style: GoogleFonts.inter(
                                color: const Color(0xff000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 8, // Icon ka size set karein
                              color: Colors.white, // Icon ka rang set karein
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              ' Refill Fuel',
                              style: GoogleFonts.inter(
                                  color: const Color(0xffFFFFFF),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            ' ${refillFuel}  Liter',
                            style: GoogleFonts.inter(
                                color: const Color(0xff000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 115,
                          // Half screen width
                          padding: EdgeInsets.all(5.0),
                          // Container ka padding
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              // Container ka border
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color(0xffBAC4CF) // Container ka radius
                              ),
                          child: InkWell(
                            onTap: () {
                              // InkWell par tap hone par kya action lena hai, woh yahan define karein
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // Elements ko evenly distribute karta hai
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.done_all,
                                      size: 18, // Icon ka size set karein
                                      color: Colors
                                          .black, // Icon ka rang set karein
                                    ),
                                    Text(
                                      ' MERGE 2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xff000000),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/images/lets-icons_down.png",
                                      width: 17,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Stack(
                        fit: StackFit.passthrough,
                        alignment: Alignment.center,
                        // Stack ke andar ka content center mein align hoga
                        children: [
                          // Background Image
                          Image.asset(
                            'assets/images/fuel.png',
                            fit: BoxFit.cover,
                            width: 200,
                            height: 254,
                          ),
                          // Logo Center Mein
                          Positioned(
                            top: 85,
                            child: Column(
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  ' ${currentFuel} L',
                                  style: GoogleFonts.aBeeZee(
                                      color: const Color(0xff0D0000),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  'PRESENT FUEL',
                                  style: GoogleFonts.aBeeZee(
                                      color: const Color(0xffA9A9A9),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  ' ${refillFuel} L',
                                  style: GoogleFonts.aBeeZee(
                                      color: const Color(0xff0D0000),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          // Bottom Left Image
                          Positioned(
                            top: 126,
                            left: 77,
                            child: Image.asset(
                              'assets/images/logo.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Spacer(),
            //---------------------Calender Screen---------------------
            SizedBox(
              height: 25,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'), // Change this to your image path
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
                              Text(
                                'P.Fuel',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: const Color(0xff000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'R.Fuel',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: const Color(0xff000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Date',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: const Color(0xff000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Time',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: const Color(0xff000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Action',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: const Color(0xff000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
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
                                title: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '5.3L',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                            color: const Color(0xff000000),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          '1.5L',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                            color: const Color(0xff000000),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          '23/04/24',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                            color: const Color(0xff000000),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          '6:00 PM',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.inter(
                                            color: const Color(0xff000000),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
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


  AppBar _appBar() {
    return AppBar(
        backgroundColor: const Color(0xFF3A4281),
        leading: IconButton(
          icon: const Icon(
            Icons.menu_outlined,
            color: Color(0xffFFFFFF),
          ),
          iconSize: 30,
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: Text(
          "Ecomile Monitor",
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
              color: const Color(0xffFFFFFF),
              fontSize: 21,
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.login_outlined),
            iconSize: 30,
            color: const Color(0xffFFFFFF))
      ],



    );
  }

  Drawer _drawer() {
    return Drawer(
      backgroundColor: const Color(0xFF3A4281),
      width: 260,
      child: Container(
        decoration: const BoxDecoration(
          backgroundBlendMode: BlendMode.lighten,
          gradient: LinearGradient(
            colors: [
              Color(0xff6DC7FF),
              Color(0xffE6ABFF),
              Color(0xff1A6DFF),
              Color(0xFF3A4281),

            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Image.asset(
                "assets/images/logo.png",
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Color(0xFF3A4281)),
              title: Text(
                'Home',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              onTap: () {
                // Action to perform when Home is tapped
                Navigator.pop(context); // Close the drawer
                // Add your logic for "Home" action here
              },
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Color(0xFF3A4281)),
              title: Text(
                'Profile',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              onTap: () {
                // Action to perform when Profile is tapped
                Navigator.pop(context); // Close the drawer
                // Add your logic for "Profile" action here
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Color(0xFF3A4281)),
              title: Text(
                'Settings',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              onTap: () {
                // Action to perform when Settings is tapped
                Navigator.pop(context); // Close the drawer
                // Add your logic for "Settings" action here
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app, color: Color(0xFF3A4281)),
              title: Text(
                'Logout',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              onTap: () {
                // Action to perform when Logout is tapped
                // For example, show a confirmation dialog
                showLogoutConfirmationDialog(context);
              },
            ),
            // Add more items to the drawer as needed
          ],
        ),
      ),
    );
  }

  void showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Logout',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          content: Text(
            'Are you sure you want to logout?',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const HomepageScreen())); // Close the dialog
              },
              child: Text(
                'No',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  // FirebaseAuth.instance.signOut();
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const LoginScreen()));
                  print("Sign out your id");
                  showToast(message: "Successfully is signed out.");
                });

                // Add your logout logic here
                // Navigator.pop(context); // Close the dialog
              },
              child: Text(
                'Yes',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        );
      },
    );
  }
}
