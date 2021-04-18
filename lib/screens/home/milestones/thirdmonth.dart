import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ihtprototype/screens/home/milestones/milestones.dart';

class ThirdMonth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[50],
        appBar: AppBar(
            backgroundColor: Colors.black87, title: Text('THREE MONTHS')),
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
                      '  Your baby is three months old!  ',
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
                      'Here\'s what to look out for when your baby turns three months old!\n\n1\) Baby\’s emotional skills will begin to develop: He may start to use different cries to tell you what he’s feeling and turn his head away to let you know he\’s bored.\n\n2\) Monthly baby milestones:\n\n3\) Can distinguish your face from others. \n\n4\) Starts to have different cries for different needs—hunger, diaper change, pain, etc.\n\n5\) Turns his head away to express boredom.\n\n6\) Opens and shuts his hands.\n\n7\) Swipes at dangling objects. \n\n8\) Follows moving objects with his eyes.\n\n9\) Turns his head in the direction of sounds.\n\n10\) Enjoys playing with other people \(and may cry when the playing stops\)',
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
