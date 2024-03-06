import 'package:ecomile_monitor/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/color.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF3A4281),
      //   title: Column(
      //     children: [
      //       Text(
      //         'SEARCH',
      //         textAlign: TextAlign.center,
      //         style: GoogleFonts.inter(
      //           color: Colors.black,
      //           fontSize: 18,
      //           fontWeight: FontWeight.w700,
      //         ),
      //       ),
      //       Text(
      //         'تلاش کریں',
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
        children: [EcomileSearchTextField()],
      ),
    );
  }
}
