import 'package:flutter/material.dart';
import 'package:ihtprototype/shared/drawer.dart';
// import 'package:ihtprototype/screens/liquids.dart';
// import 'package:ihtprototype/screens/solids.dart';

class Feeding extends StatefulWidget {
  @override
  _FeedingState createState() => _FeedingState();
}

class _FeedingState extends State<Feeding> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Scaffold(
        backgroundColor: Colors.amber[50],
          appBar: AppBar(
            title: Text('Feeding'),
            backgroundColor: Colors.black87,
          ),
          drawer: DrawerCode(),
          body: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Add New Data'),
                      SizedBox(height: 40.0),
                      RaisedButton(
                          color: Colors.pink[400],
                          child: Text(
                            'Liquids',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            
                          })
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Add new Data'),
                      SizedBox(height: 40.0),
                      RaisedButton(
                          color: Colors.blueAccent[100],
                          child: Text(
                            'Solids',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            
                          })
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

// Route solidr() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => Solids(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       return child;
//     },
//   );
// }

// Route Liquidr() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => Liquids(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       return child;
//     },
//   );
// }
