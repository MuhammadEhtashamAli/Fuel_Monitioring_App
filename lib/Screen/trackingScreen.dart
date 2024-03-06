import 'package:ecomile_monitor/Screen/navigationScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackingScreen extends StatefulWidget {
  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       const Icon(
      //         Icons.local_shipping,
      //         size: 100,
      //         color: Colors.blue,
      //       ),
      //       const SizedBox(height: 20),
      //       const Text(
      //         'Your order is on the way!',
      //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //       ),
      //       const SizedBox(height: 10),
      //       const Text(
      //         'Estimated delivery time: 10:30 AM',
      //         style: TextStyle(fontSize: 18),
      //       ),
      //       const SizedBox(height: 20),
      //       ElevatedButton(
      //         onPressed: () {
      //           // Add navigation logic to go back or elsewhere
      //         },
      //         child: const Text('Back to Home'),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  AppBar _appBar() {
    return AppBar(
        backgroundColor: const Color(0xFF3A4281),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Color(0xffFFFFFF),
          ),
          iconSize: 24,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => navigationScreen()));
            // _scaffoldKey.currentState!.openDrawer();
          },
        ),
          title: Column(
            children: [
              Text(
                'TRACKING',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: Color(0xffFFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'ٹریکنگ',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: Color(0xffFFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        centerTitle: true);
  }

}