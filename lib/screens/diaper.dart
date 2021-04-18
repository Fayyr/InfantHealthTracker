import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:ihtprototype/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';

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
          backgroundColor: Colors.amber[50],
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            title: Text('Diaper Counter', style: GoogleFonts.laila()),
            backgroundColor: Colors.black87,
          ),
          body: Center(
            child: Container(
              margin: EdgeInsets.only(top: 100),
              child: Column(
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.amber[900],
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
                    backgroundColor: Colors.amber[900],
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
          )),
    );
  }
}
