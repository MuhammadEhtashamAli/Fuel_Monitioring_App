import 'package:ecomile_monitor/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class PredictionScreen extends StatefulWidget {
  const PredictionScreen({super.key});

  @override
  State<PredictionScreen> createState() => _PredictionScreenState();
}

class _PredictionScreenState extends State<PredictionScreen> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade300,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                // Add your onTap logic here
                              },
                              child: Column(
                                children: [
                                  Icon(Icons.search,
                                      color: Colors.black, size: 35),
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
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                // Add your onTap logic here
                              },
                              child: Column(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.black, size: 35),
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
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                // Add your onTap logic here
                              },
                              child: Column(
                                children: [
                                  Icon(Icons.access_time,
                                      color: Colors.black, size: 35),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                  //   child: EcomileTextField(
                  //     prefixIcon: Icon(Icons.search),
                  //     suffiixIcon: Icon(Icons.star),
                  //     hintText: "Search",
                  //     keyboardType: TextInputType.text,
                  //   ),
                  // )

                ],
              ),
            ),

            // GoogleMap(
            //   initialCameraPosition: CameraPosition(
            //     target: LatLng(37.7749, -122.4194), // Example location (San Francisco)
            //     zoom: 12,
            //   ),
            // ),
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
            Icons.arrow_back,
            color: Color(0xffFFFFFF),
          ),
          iconSize: 30,
          onPressed: () {
            // _scaffoldKey.currentState!.openDrawer();
          },
        ),
        title: Column(
          children: [
            Text(
              "PREDICTION ",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                  color: const Color(0xffFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "پیشن گوئی",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                  color: const Color(0xffFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        centerTitle: true);
  }
}

class CustomNavigationBar extends StatefulWidget {
  final ValueChanged<int>? onIndexChanged;

  const CustomNavigationBar({Key? key, this.onIndexChanged}) : super(key: key);

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
                widget.onIndexChanged?.call(index);
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.access_time),
                label: 'Recent',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Your content widgets here
          Expanded(
            child: Center(
              child: Text('Main Content'),
            ),
          ),
          CustomNavigationBar(
            onIndexChanged: (index) {
              // Handle navigation index change
            },
          ),
        ],
      ),
    );
  }
}
