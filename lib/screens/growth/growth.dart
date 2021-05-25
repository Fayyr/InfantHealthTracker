import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:ihtprototype/screens/growth/growthscreen.dart';
import 'package:ihtprototype/shared/drawer.dart';
import 'growthchart.dart';

class Growth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.blueGrey[800]),
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorWeight: 10,
              unselectedLabelColor: Colors.lightBlue[100],
              labelColor: const Color(0xFF3baee7),
              indicatorColor: Colors.pink[50],
              tabs: [
                Tab(
                  child: Text("CHART",
                      style: GoogleFonts.josefinSans(
                          color: Colors.blueGrey[800],
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                ),
                Tab(
                  child: Text("RECORD",
                      style: GoogleFonts.josefinSans(
                          color: Colors.blueGrey[800],
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                ),
              ],
            ),
            title: Text('GROWTH',
                style: GoogleFonts.josefinSans(
                    color: Colors.blueGrey[800],
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                    fontSize: 22)),
          ),
          drawer: DrawerCode(),
          body: TabBarView(
            children: [
              DataTableDemo(),
              GrowthScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
