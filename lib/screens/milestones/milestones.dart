import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ihtprototype/screens/milestones/eighthmonth.dart';
import 'package:ihtprototype/screens/milestones/eleventhmonth.dart';
import 'package:ihtprototype/screens/milestones/firstmonth.dart';
import 'package:ihtprototype/screens/milestones/ninthmonth.dart';
import 'package:ihtprototype/screens/milestones/secondmonth.dart';
import 'package:ihtprototype/screens/milestones/seventhmonth.dart';
import 'package:ihtprototype/screens/milestones/tenthmonth.dart';
import 'package:ihtprototype/screens/milestones/thirdmonth.dart';
import 'package:ihtprototype/screens/milestones/fourthmonth.dart';
import 'package:ihtprototype/screens/milestones/fifthmonth.dart';
import 'package:ihtprototype/screens/milestones/sixthmonth.dart';
import 'package:ihtprototype/screens/milestones/twelvemonth.dart';
import 'package:ihtprototype/shared/drawer.dart';

class Milestones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blueGrey[800]),
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text('MILESTONES',
              style: GoogleFonts.josefinSans(
                  color: Colors.blueGrey[800],
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  fontSize: 24)),
        ),
      ),
      drawer: DrawerCode(),
      body: new Stack(
        children: [
          // Container(
          //   decoration: new BoxDecoration(
          //       image: new DecorationImage(
          //           image: new AssetImage('assets/images/babybackground.jpg'),
          //           fit: BoxFit.cover)),
          //   child: new BackdropFilter(
          //     filter: new ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
          //     child: new Container(
          //       decoration:
          //           new BoxDecoration(color: Colors.amber[50].withOpacity(0.6)),
          //     ),
          //   ),
          // ),
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              RaisedButton(
                elevation: 10,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new FirstMonth()));
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                      child: new Image.asset(
                        'assets/images/one.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Text('MONTH', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              RaisedButton(
                  elevation: 1,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SecondMonth()));
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 1, 1, 2),
                        child: new Image.asset(
                          'assets/images/two.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text('MONTHS', style: TextStyle(color: Colors.black)),
                    ],
                  )),
              RaisedButton(
                  elevation: 1,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new ThirdMonth()));
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                        child: new Image.asset(
                          'assets/images/three.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text('MONTHS', style: TextStyle(color: Colors.black)),
                    ],
                  )),
              RaisedButton(
                  elevation: 1,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new FourthMonth()));
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                        child: new Image.asset(
                          'assets/images/four.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text('MONTHS', style: TextStyle(color: Colors.black)),
                    ],
                  )),
              RaisedButton(
                  elevation: 1,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new FifthMonth()));
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                        child: new Image.asset(
                          'assets/images/five.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text('MONTHS', style: TextStyle(color: Colors.black)),
                    ],
                  )),
              RaisedButton(
                  elevation: 1,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SixthMonth()));
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                        child: new Image.asset(
                          'assets/images/six.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text('MONTHS', style: TextStyle(color: Colors.black)),
                    ],
                  )),
              RaisedButton(
                  elevation: 1,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new SeventhMonth()));
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                        child: new Image.asset(
                          'assets/images/seven.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text('MONTHS', style: TextStyle(color: Colors.black)),
                    ],
                  )),
              RaisedButton(
                  elevation: 1,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new EighthMonth()));
                  },
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                        child: new Image.asset(
                          'assets/images/eight.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text('MONTHS', style: TextStyle(color: Colors.black)),
                    ],
                  )),
              RaisedButton(
                elevation: 0.5,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new NinthMonth()));
                },
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                      child: new Image.asset(
                        'assets/images/nine.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Text('MONTHS', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              RaisedButton(
                elevation: 0.5,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new TenthMonth()));
                },
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 2, 0, 2),
                          child: new Image.asset(
                            'assets/images/onepink.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                          child: new Image.asset(
                            'assets/images/zero.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ],
                    ),
                    Text('MONTHS', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              RaisedButton(
                elevation: 0.5,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new EleventhMonth()));
                },
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 2, 0, 2),
                          child: new Image.asset(
                            'assets/images/one.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                          child: new Image.asset(
                            'assets/images/one.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ],
                    ),
                    Text('MONTHS', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
              RaisedButton(
                elevation: 0.5,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new TwelvethMonth()));
                },
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 2, 0, 2),
                          child: new Image.asset(
                            'assets/images/oneblue.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                          child: new Image.asset(
                            'assets/images/twoblue.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ],
                    ),
                    Text('MONTHS', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
