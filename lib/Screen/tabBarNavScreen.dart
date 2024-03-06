import 'package:ecomile_monitor/Screen/predictionScreen/recentScreen.dart';
import 'package:ecomile_monitor/Screen/predictionScreen/savedScreen.dart';
import 'package:ecomile_monitor/Screen/predictionScreen/searchScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarNavScreen extends StatefulWidget {
  const TabBarNavScreen({Key? key});

  @override
  State<TabBarNavScreen> createState() => _TabBarNavScreenState();
}

class _TabBarNavScreenState extends State<TabBarNavScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    SearchScreen(),
    SavedScreen(),
    RecentScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.grey.shade300,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            // Add your onTap logic here
                          },
                          child: Column(
                            children: [
                              Icon(Icons.search, color: Colors.black, size: 35),
                              Text(
                                'SEARCH',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'تلاش کریں',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            // Add your onTap logic here
                          },
                          child: Column(
                            children: [
                              Icon(Icons.star, color: Colors.black, size: 35),
                              Text(
                                'SAVED',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'محفوظ کریں',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            // Add your onTap logic here
                          },
                          child: Column(
                            children: [
                              Icon(Icons.access_time, color: Colors.black, size: 35),
                              Text(
                                'RECENT',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'حالیہ پیشن گوئی',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.star),
                        hintText: "Search",
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBar(
                // TabBar ka background color white
                indicatorColor: Colors.white, // Tab indicator ka color white
                tabs: [
                  Tab(
                    icon: Icon(Icons.search),
                    text: 'SEARCH',
                  ),
                  Tab(
                    icon: Icon(Icons.star_border),
                    text: 'SAVED',
                  ),
                  Tab(
                    icon: Icon(Icons.access_time),
                    text: 'RECENT',
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: TabBarView(
                children: _tabs,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
