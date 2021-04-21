import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:ihtprototype/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ihtprototype/shared/drawer.dart';
import 'dart:ui';

class Diaper extends StatefulWidget {
  @override
  _DiaperState createState() => _DiaperState();
}

class _DiaperState extends State<Diaper> {
  double wet = 0;
  void setvalue(value) {
    setState(() {
      wet = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.blueGrey[800]),
            title: Text('Diaper Counter',
                style: GoogleFonts.josefinSans(
                    color: Colors.blueGrey[800],
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                    fontSize: 24)),
            backgroundColor: Colors.white,
          ),
          drawer: DrawerCode(),
          body: new Stack(children: [
            Container(
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage(
                          'assets/images/baby-elementson-pink.jpg'),
                      colorFilter: new ColorFilter.mode(
                          Colors.white.withOpacity(0.3), BlendMode.dstATop),
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Column(
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.blueGrey[800],
                    onPressed: null,
                    heroTag: 'btn1',
                    child: Text('Wet'),
                  ),
                  SizedBox(height: 20),
                  Padding(
                      child: SpinBox(
                        min: 0,
                        max: 100,
                        value: wet,
                      ),
                      padding: EdgeInsets.fromLTRB(50, 0, 50, 0)),
                  SizedBox(height: 50),
                  FloatingActionButton(
                    backgroundColor: Colors.blueGrey[800],
                    onPressed: null,
                    heroTag: "btn2",
                    child: Text(
                      'Dirty',
                      style: GoogleFonts.laila(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                      child: SpinBox(
                        min: 0,
                        max: 100,
                        value: 0,
                      ),
                      padding: EdgeInsets.fromLTRB(50, 0, 50, 0)),
                ],
              ),
            ),
          ])),
    );
  }
}
