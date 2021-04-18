import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ihtprototype/screens/home/milestones/milestones.dart';

class FirstMonth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[50],
        appBar:
            AppBar(backgroundColor: Colors.black87, title: Text('ONE MONTH')),
        drawer: Milestones(),
        body: new Stack(
          children: [
            Container(
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage('assets/images/babybackground.jpg'),
                      fit: BoxFit.cover)),
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                child: new Container(
                  decoration: new BoxDecoration(
                      color: Colors.amber[50].withOpacity(0.7)),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Text(
                    '  Your baby is one month old!  ',
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 4),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text(
                      'What Should My 1-Month-Old Be Doing? That\'s the question every new parent asks.\n\n1\) While every baby\'s different, it\'s typical for a 1-month-old baby to still be keeping her hands tight in fists.\n\n2\) Baby probably jerks and quivers her arms and has keen reflexes.\n\n3\) If she hasn\'t started smiling already, she probably will this month—so exciting!\n\n4\) Notices faces and sees bold patterns, especially in black and white.\n\n5\) Recognizes the sound of your voice.\n\n6\) Starts to coo and make sounds beyond a simple cry.\n\n7\) Brings his hands within range of his eyes and mouth\n\n8\) Moves his head side to side when lying on his stomach ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
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
