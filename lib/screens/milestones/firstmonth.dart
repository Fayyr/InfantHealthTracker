import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:ihtprototype/screens/milestones/milestones.dart';

class FirstMonth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.blueGrey[800]),
            brightness: Brightness.dark,
            backgroundColor: Colors.white,
            title: Text('ONE MONTH',
                style: GoogleFonts.josefinSans(
                    color: Colors.blueGrey[800],
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                    fontSize: 22))),
        drawer: Milestones(),
        body: new Stack(
          children: [
            Container(
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage(
                          'assets/images/baby-elementson-pink.jpg'),
                      fit: BoxFit.cover)),
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                child: new Container(
                  decoration:
                      new BoxDecoration(color: Colors.white.withOpacity(0.5)),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 0,
                ),
                //Container(
                //padding: EdgeInsets.all(10),
                //decoration: BoxDecoration(
                //color: Colors.blueGrey[800],
                //border: Border.all(color: Colors.blueGrey[800]),
                //),
                //child: Text(
                // '  Your baby is one month old!  ',
                // style: GoogleFonts.montserrat(
                //     color: Colors.white, fontSize: 22),
                //),
                // ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        border: Border.all(color: Colors.white54),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Text(
                      'What Should My 1-Month-Old Be Doing? That\'s the question every new parent asks.\n\n1\) While every baby\'s different, it\'s typical for a 1-month-old baby to still be keeping her hands tight in fists.\n\n2\) Baby probably jerks and quivers her arms and has keen reflexes.\n\n3\) If she hasn\'t started smiling already, she probably will this month—so exciting!\n\n4\) Notices faces and sees bold patterns, especially in black and white.\n\n5\) Recognizes the sound of your voice.\n\n6\) Starts to coo and make sounds beyond a simple cry.\n\n7\) Brings his hands within range of his eyes and mouth\n\n8\) Moves his head side to side when lying on his stomach ',
                      style: GoogleFonts.montserrat(
                          color: Colors.blueGrey[800], fontSize: 14),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
