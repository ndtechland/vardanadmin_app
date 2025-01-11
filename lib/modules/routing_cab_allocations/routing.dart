import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';
import 'advance_search.dart';
import 'normal_search.dart';
class Routingg extends StatefulWidget {
  const Routingg({super.key});

  @override
  State<Routingg> createState() => _RoutinggState();
}

class _RoutinggState extends State<Routingg>  with SingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar:  AppBar(
          centerTitle: true,
          backgroundColor: MyTheme.themecolor,
          title: Text(
            "All Routes",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: MyTheme.t1containercolor,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: MyTheme.t1containercolor,
              ),
            ),
          ],
        //   bottom: const TabBar(
        //       tabs: <Widget>[
        //   Tab(
        //     child:Text("Normal Search"),
        //   icon: Icon(Icons.cloud_outlined),
        // ),
        // Tab(
        //   child:Text("Advance Search"),
        //   icon: Icon(Icons.beach_access_sharp),
        // ),])
        ),
        body: OrientationBuilder(builder: (context, orientation) {
          return LayoutBuilder(builder: (context, constraints) {
            var screenWidth = constraints.maxWidth;
            var screenHeight = constraints.maxHeight;
            var imageWidth = orientation == Orientation.portrait
            ? screenWidth * 0.55
                : screenWidth * 0.25;
            var imageHeight = orientation == Orientation.portrait
            ? screenHeight * 0.2
                : screenHeight * 0.5;
            var categoryWidth = orientation == Orientation.portrait
            ? screenWidth * 0.5
                : screenWidth * 0.28;
            var categoryHeight = orientation == Orientation.portrait
            ? screenHeight * 0.3
                : screenHeight * 0.9;
            return Container(
              child: Column(
                children:[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    child: Container(
                      height: categoryHeight * 0.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey,width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 6,
                            spreadRadius: 2,
                            offset: Offset(0, 2), // Shadow to create depth
                          ),
                        ],
                      ),
                      child: TabBar(
                        labelColor: MyTheme.t1containercolor,
                        unselectedLabelColor: Colors.black.withOpacity(0.6),
                        indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                            width: 3.0,
                            color: MyTheme.themecolor, // Underline for the selected tab
                          ),
                          insets: EdgeInsets.symmetric(
                              horizontal: 10.0), // Adds padding to the underline
                        ),
                        labelStyle: GoogleFonts.nunitoSans(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        unselectedLabelStyle: GoogleFonts.nunitoSans(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                        tabs: [
                          Tab(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                'Normal Search',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                'Advance Search',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        NormalSearch(),
                        AdvanceSearch()
                      ],
                    ),
                  ),
                ]
              ),
            );
          });
        })
      ),
    );
  }
}
