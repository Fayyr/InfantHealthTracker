import 'package:flutter/material.dart';
import 'package:ihtprototype/screens/authenticate/sign_in.dart';
import 'package:ihtprototype/screens/diaper.dart';
import 'package:ihtprototype/screens/feeding.dart';
import 'package:ihtprototype/screens/growth.dart';
import 'package:ihtprototype/screens/sleep.dart';
import 'package:ihtprototype/screens/vaccscreen.dart';
import 'package:getwidget/getwidget.dart';
import 'package:ihtprototype/services/auth.dart';
import 'package:ihtprototype/shared/drawer.dart';
import 'package:ihtprototype/screens/milestones/milestones.dart';
// import 'package:ihtprototype/screens/nursing.dart';

import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.pink[50],
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.blueGrey[800]),
            title: Text(
              'InfantHealth',
              style: GoogleFonts.josefinSans(
                  color: Colors.blueGrey[800],
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            backgroundColor: Colors.white,
            elevation: 1.0,
            // actions: <Widget>[
            //   FlatButton.icon(
            //     icon: Icon(Icons.person),
            //     label: Text('logout'),
            //     onPressed: () async {
            //       await _auth.signOut();
            //     },
            //   ),
            // ],
          ),
          drawer: DrawerCode(),
          body: new Stack(children: [
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
            GFCard(
              titlePosition: GFPosition.start,
              image: Image.asset(
                'assets/images/baby-elementson-pink.jpg',
              ),
              title: GFListTile(
                avatar: GFAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/baby.png',
                  ),
                ),
                title: Text(
                  'Hello Parent',
                  style: GoogleFonts.montserrat(
                      color: Colors.blueGrey[800], fontSize: 20),
                  textAlign: TextAlign.justify,
                ),
                subtitle: Text(
                  'Welcome to InfantHealth',
                  style: GoogleFonts.montserrat(
                      color: Colors.blueGrey[800], fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ),
              content: Text(
                "Schedule your baby's day to day with ease using our features.",
                style: GoogleFonts.montserrat(
                    color: Colors.blueGrey[800], fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              buttonBar: GFButtonBar(
                children: <Widget>[],
              ),
            ),

            GridView.count(
                primary: false,
                padding: const EdgeInsets.fromLTRB(30, 380, 30, 0),
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
                crossAxisCount: 3,
                children: [
                  RaisedButton(
                    elevation: 2,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Feeding()));
                    },
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                          child: new Image.asset(
                            'assets/images/diet.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Text(
                          'MEALS',
                          style: GoogleFonts.montserrat(
                              color: Colors.blueGrey[800], fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  RaisedButton(
                      elevation: 2,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Diaper()));
                      },
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(2, 1, 1, 2),
                            child: new Image.asset(
                              'assets/images/diaper.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Text(
                            'DIAPER',
                            style: GoogleFonts.montserrat(
                                color: Colors.blueGrey[800], fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                  RaisedButton(
                      elevation: 2,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new VaccScreen()));
                      },
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                            child: new Image.asset(
                              'assets/images/vaccine.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Text(
                            'VACCINE',
                            style: GoogleFonts.montserrat(
                                color: Colors.blueGrey[800], fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                  RaisedButton(
                      elevation: 2,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Milestones()));
                      },
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                            child: new Image.asset(
                              'assets/images/ranking.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Text(
                            'MILESTONE',
                            style: GoogleFonts.montserrat(
                                color: Colors.blueGrey[800], fontSize: 10),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                  RaisedButton(
                      elevation: 2,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new FlutterStopWatch()));
                      },
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                            child: new Image.asset(
                              'assets/images/sleeping.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Text(
                            'SLEEP',
                            style: GoogleFonts.montserrat(
                                color: Colors.blueGrey[800], fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                  RaisedButton(
                      elevation: 2,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Growth()));
                      },
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                            child: new Image.asset(
                              'assets/images/height.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Text(
                            'GROWTH',
                            style: GoogleFonts.montserrat(
                                color: Colors.blueGrey[800], fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                ])
          ])),
    );
  }
}

//Drawer Code
// class DrawerCode extends StatelessWidget {
//   final AuthService _auth = AuthService();

//   @override
//   Widget build(BuildContext context) {
//     return new Drawer(
//       child: ListView(
//             padding: EdgeInsets.zero,
//             children: <Widget>[
//               DrawerHeader(
//                 child: Text(
//                   'InfantHealth',
//                   // style: GoogleFonts.raleway(fontWeight: FontWeight.w700),
//                   style: GoogleFonts.raleway(
//                       fontSize: 22, fontWeight: FontWeight.w600),
//                 ),
//                 decoration: BoxDecoration(
//                     color: Colors.amberAccent[100],
//                     image: DecorationImage(
//                         image: AssetImage("assets/images/baby.png"))),
//               ),
//               ListTile(
//                 title: Text(
//                   'Feeding',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 leading: SizedBox(
//                     height: 45.0,
//                     width: 50.0, // fixed width and height
//                     child: Image.asset('assets/images/milkbottle.png')),
//                 onTap: () {
//                   // Update the state of the app.
//                   Navigator.of(context).push(_createRoute1());
//                   // ...
//                 },
//               ),
//               ListTile(
//                 title: Text(
//                   'Diaper',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 leading: SizedBox(
//                     height: 50.0,
//                     width: 50.0, // fixed width and height
//                     child: Image.asset('assets/images/babysta.png')),
//                 onTap: () {
//                   // Update the state of the app.
//                   // ...
//                   Navigator.of(context).push(_createRoute4());
//                 },
//               ),
//               // ListTile(
//               //   title: Text('Nursing'),
//               //   onTap: () {
//               //     // Update the state of the app.
//               //     Navigator.of(context).push(_createRoute2());
//               //   },
//               // ),
//               ListTile(
//                 title: Text(
//                   'Sleep',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 leading: SizedBox(
//                     height: 50.0,
//                     width: 50.0, // fixed width and height
//                     child: Image.asset('assets/images/zzz.png')),
//                 onTap: () {
//                   // Update the state of the app.
//                   // ...
//                   Navigator.of(context).push(_createRoute3());
//                 },
//               ),

//               ListTile(
//                 title: Text(
//                   'Growth',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 leading: SizedBox(
//                     height: 50.0,
//                     width: 50.0, // fixed width and height
//                     child: Image.asset('assets/images/growth.png')),
//                 onTap: () {
//                   // Update the state of the app.
//                   // ...
//                 },
//               ),
//               ListTile(
//                 title: Text(
//                   'Notepad',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 leading: SizedBox(
//                     height: 37.0,
//                     width: 50.0, // fixed width and height
//                     child: Image.asset('assets/images/note.png')),
//                 onTap: () {
//                   // Update the state of the app.
//                   // ...
//                 },
//               ),
//               ListTile(
//                 title: Text(
//                   'Settings',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 leading: SizedBox(
//                     height: 50.0,
//                     width: 45.0, // fixed width and height
//                     child: Image.asset('assets/images/settings.png')),
//                 onTap: () {
//                   // Update the state of the app.
//                   // ...
//                 },
//               ),
//               ListTile(
//                   title: Text(
//                     'Logout',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   leading: SizedBox(
//                       height: 38.0,
//                       width: 45.0, // fixed width and height
//                       child: Image.asset('assets/images/login.png')),
//                   onTap: () async {
//                     await _auth.signOut();
//                   }),
//             ],
//           ),
//     );
//   }
// }
