import 'package:flutter/material.dart';
import 'package:ihtprototype/screens/authenticate/authenticate.dart';
import 'package:ihtprototype/screens/diaper.dart';
import 'package:ihtprototype/screens/feeding/feedscreen.dart';
import 'package:ihtprototype/screens/growth/growth.dart';
import 'package:ihtprototype/screens/home/home.dart';
import 'package:ihtprototype/screens/milestones/milestones.dart';
import 'package:ihtprototype/screens/testnotepad.dart';
import 'package:ihtprototype/screens/sleep.dart';
import 'package:ihtprototype/screens/vaccine/vaccine.dart';
import 'package:ihtprototype/services/auth.dart';
// import 'package:ihtprototype/screens/nursing.dart';

import 'package:google_fonts/google_fonts.dart';

class DrawerCode extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'InfantHealth',
              // style: GoogleFonts.raleway(fontWeight: FontWeight.w700),
              style: GoogleFonts.raleway(
                  fontSize: 22, fontWeight: FontWeight.w600),
            ),
            decoration: BoxDecoration(
                color: Colors.pink[50],
                image: DecorationImage(
                    alignment: Alignment.bottomRight,
                    image: AssetImage("assets/images/baby-boy.png"))),
          ),
          ListTile(
            title: Text(
              ' Home',
              style: TextStyle(fontSize: 16),
            ),
            leading: SizedBox(
                height: 30.0,
                width: 40.0, // fixed width and height
                child: Image.asset('assets/images/home.png')),
            onTap: () {
              // Update the state of the app.
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Home()));
              // ...
            },
          ),
          ListTile(
            title: Text(
              'Feeding',
              style: TextStyle(fontSize: 16),
            ),
            leading: SizedBox(
                height: 35.0,
                width: 45.0, // fixed width and height
                child: Image.asset('assets/images/diet.png')),
            onTap: () {
              // Update the state of the app.
              Navigator.pop(context);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new FeedScreen()));
              // ...
            },
          ),
          ListTile(
            title: Text(
              ' Diaper',
              style: TextStyle(fontSize: 16),
            ),
            leading: SizedBox(
                height: 35.0,
                width: 40.0, // fixed width and height
                child: Image.asset('assets/images/diaper.png')),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Diaper()));
            },
          ),
          // ListTile(
          //   title: Text('Nursing'),
          //   onTap: () {
          //     // Update the state of the app.
          //     Navigator.of(context).push(_createRoute2());
          //   },
          // ),
          ListTile(
            title: Text(
              ' Sleep',
              style: TextStyle(fontSize: 16),
            ),
            leading: SizedBox(
                height: 35.0,
                width: 40.0, // fixed width and height
                child: Image.asset('assets/images/sleeping.png')),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new FlutterStopWatch()));
            },
          ),
          ListTile(
            title: Text(
              ' Milestones',
              style: TextStyle(fontSize: 16),
            ),
            leading: SizedBox(
                height: 35.0,
                width: 40.0, // fixed width and height
                child: Image.asset('assets/images/ranking.png')),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new Milestones()));
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text(
              ' Growth',
              style: TextStyle(fontSize: 16),
            ),
            leading: SizedBox(
                height: 35.0,
                width: 40.0, // fixed width and height
                child: Image.asset('assets/images/height.png')),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Growth()));
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text(
              ' Vaccinations',
              style: TextStyle(fontSize: 16),
            ),
            leading: SizedBox(
                height: 35.0,
                width: 40.0, // fixed width and height
                child: Image.asset('assets/images/vaccine.png')),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Vaccine()));
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text(
              ' Settings',
              style: TextStyle(fontSize: 16),
            ),
            leading: SizedBox(
                height: 35.0,
                width: 42.0, // fixed width and height
                child: Image.asset('assets/images/settings.png')),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text(
              ' Notepad',
              style: TextStyle(fontSize: 16),
            ),
            leading: SizedBox(
                height: 35.0,
                width: 40.0, // fixed width and height
                child: Image.asset('assets/images/note.png')),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new TodoApp()));
            },
          ),
          ListTile(
              title: Text(
                ' Logout',
                style: TextStyle(fontSize: 16),
              ),
              leading: SizedBox(
                  height: 38.0,
                  width: 45.0, // fixed width and height
                  child: Image.asset('assets/images/quit.png')),
              onTap: () async {
                await _auth.signOut();
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Authenticate()),
                );
              }),
        ],
      ),
    );
  }
}
