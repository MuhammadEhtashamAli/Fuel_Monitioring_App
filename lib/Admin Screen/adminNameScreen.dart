import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/widget.dart';

class AdminNameScreen extends StatefulWidget {
  const AdminNameScreen({super.key});

  @override
  State<AdminNameScreen> createState() => _AdminNameScreenState();
}

class _AdminNameScreenState extends State<AdminNameScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      appBar:_appBar(),
      drawer: _drawer(),
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
        "Admin Name",
        textAlign: TextAlign.center,
        style: GoogleFonts.inter(
            color: const Color(0xffFFFFFF),
            fontSize: 29,
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
      backgroundColor: const Color(0xFFFFFFFF),
      width: 300,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(decoration: BoxDecoration(color: Color(0xff3A4281)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [

                    IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: Color(0xffFFFFFF),
                      ),
                      iconSize: 24,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Image.asset(
                      "assets/images/logo.png",height: 61,
                      width: 61,fit: BoxFit.cover,
                    ),

                    Column(children: [
                      Text(
                        "Ecomile Monitring",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            color: const Color(0xffFFFFFF),
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "ایکومائل مانیٹرنگ",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            color: const Color(0xffFFFFFF),
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ],)
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Abdul Rehman",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          color: const Color(0xffFFFFFF),
                          fontSize: 10,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person_outline,
                color: Color(0xFF3A4281)),
            title: Text(
              'My Account',
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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>
                //         const HomepageScreen())); // Close the dialog
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
