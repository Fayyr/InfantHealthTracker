import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ihtprototype/screens/home/milestones/milestones.dart';

class SecondMonth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[50],
        appBar:
            AppBar(backgroundColor: Colors.black87, title: Text('TWO MONTHS')),
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
                      '  Your baby is two months old!  ',
                      style: TextStyle(color: Colors.white, fontSize: 23),
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
                      'Monthly baby milestones: \n\n1) Starts to smile at people Briefly calms herself \n\n2) May bring her hands to her mouth to self-soothe.\n\n3) Begins to follow things with eyes and recognizes people at a distance.\n\n4) Begins to get fussy and acts bored if the activity doesn\’t change\n\n5) Holds her head up Begins to push up when lying on her tummy\n\n6) Makes smoother movements with her arms and legs.\n\nObserve these 2 month baby milestones closely— if baby isn\’t achieving them, your pediatrician may want to explore further.\nThe ability to track an object is important, because the inability to do so may indicate a visual or brain problem, just like not turning their head to sounds could indicate a hearing issue.',
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
