import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ihtprototype/screens/home/milestones/milestones.dart';

class EighthMonth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[50],
        appBar: AppBar(
            backgroundColor: Colors.black87, title: Text('EIGHT MONTHS')),
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
                      '  Your baby is eight months old!  ',
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
                      'At this age, you might be paying particular attention to baby’s developing mobility—especially if you’re babyproofing like mad to help keep your little explorer safe. \n\nMonthly baby milestones:\n\n1) Develops a pincer grasp (using the thumb and index finger)\n\n2) Begins crawling. \n\n3) Stands while holding onto something',
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
