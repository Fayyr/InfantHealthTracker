import 'package:flutter/material.dart';
import 'package:ihtprototype/screens/authenticate/sign_in.dart';
import 'package:ihtprototype/screens/diaper.dart';
import 'package:ihtprototype/screens/feeding.dart';
import 'package:ihtprototype/screens/sleep.dart';
import 'package:ihtprototype/services/auth.dart';
import 'package:ihtprototype/shared/drawer.dart';
import 'package:ihtprototype/screens/home/milestones/milestones.dart';
// import 'package:ihtprototype/screens/nursing.dart';

import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.amber[50],
        appBar: AppBar(
          title: Text(
            'InfantHealth',
            style: GoogleFonts.raleway(),
          ),
          backgroundColor: Colors.black87,
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
      ),
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
