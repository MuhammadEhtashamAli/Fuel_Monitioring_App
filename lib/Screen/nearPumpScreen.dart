import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navigationScreen.dart';

class NearPumpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),

      // body: ListView(
      //   children: [
      //     ListTile(
      //       leading: Icon(Icons.local_gas_station),
      //       title: Text('Pump 1'),
      //       subtitle: Text('Address: 123 Main Street'),
      //       onTap: () {
      //         // Add navigation logic or any action when the pump is tapped
      //       },
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.local_gas_station),
      //       title: Text('Pump 2'),
      //       subtitle: Text('Address: 456 Elm Street'),
      //       onTap: () {
      //         // Add navigation logic or any action when the pump is tapped
      //       },
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.local_gas_station),
      //       title: Text('Pump 3'),
      //       subtitle: Text('Address: 789 Oak Street'),
      //       onTap: () {
      //         // Add navigation logic or any action when the pump is tapped
      //       },
      //     ),
      //     // Add more ListTile widgets for other pumps as needed
      //   ],
      // ),
      //
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
            Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context) =>navigationScreen()));
            // Navigator.push(context, MaterialPageRoute(builder: (context) => navigationScreen()));
            // _scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: Column(
          children: [
            Text(
              'NEAR FUEL PUMP',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: Color(0xffFFFFFF),
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'فیول پمپ کے قریب',
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
