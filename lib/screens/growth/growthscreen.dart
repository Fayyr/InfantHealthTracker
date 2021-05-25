import 'package:flutter/material.dart';
import 'package:ihtprototype/screens/growth/growthform.dart';
import 'package:ihtprototype/shared/drawer.dart';
import 'package:ihtprototype/services/database.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:ihtprototype/screens/growth/growthlist.dart';
import 'package:ihtprototype/models/growthmodel.dart';

class GrowthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showaddgrowthpanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                child: GrowthForm());
          });
    }

    return StreamProvider<List<GrowthCounter>>.value(
      value: DatabaseService().growth,
      child: Container(
          child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.blueGrey[800]),
          title: Text('  Growth Records',
              style: TextStyle(
                  color: Colors.blueGrey[800], letterSpacing: 0, fontSize: 20)),
          backgroundColor: Colors.white,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.add),
              label: Text('New'),
              color: Colors.pink[50],
              onPressed: () => _showaddgrowthpanel(),
            )
          ],
        ),
        body: new Stack(
          children: [
            GrowthList(),
            Container(
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage(
                          'assets/images/baby-elementson-pink.jpg'),
                      colorFilter: new ColorFilter.mode(
                          Colors.white.withOpacity(0.3), BlendMode.dstATop),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      )),
    );
  }
}
