import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ihtprototype/screens/home/milestones/milestones.dart';

class EleventhMonth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[50],
        appBar: AppBar(
            backgroundColor: Colors.black87, title: Text('ELEVEN MONTHS')),
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
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text(
                      '  Your baby is eleven months old!  ',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
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
                      'Even if baby hasn’t taken her first step, don’t rush her. Ypur baby is growing up to become a toddler so make sure you don\'t miss out on any of the precious moments.\n\nWhat to expect:\n\n1) Understands object permanence.\n\n2) Crawls up the stairs (while supervised)\n\n3) Makes sounds with changes in tone (sounds more like speech)\n\n4) Develops separation anxiety',
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
