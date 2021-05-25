import 'package:flutter/material.dart';
import 'package:ihtprototype/screens/feeding/feedform.dart';
import 'package:ihtprototype/shared/drawer.dart';
import 'package:ihtprototype/services/database.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:ihtprototype/screens/feeding/feedinelist.dart';
import 'package:ihtprototype/models/feedmodel.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showaddfeedinationpanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                child: FeedForm());
          });
    }

    return StreamProvider<List<Feedination>>.value(
      value: DatabaseService().feedinations,
      child: Container(
          child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.blueAccent[50]),
                title: Text('Meals',
                    style: GoogleFonts.josefinSans(
                        color: Colors.blueGrey[800],
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold,
                        fontSize: 26)),
                backgroundColor: Colors.white,
                actions: <Widget>[
                  FlatButton.icon(
                    icon: Icon(Icons.add),
                    label: Text('New'),
                    color: Colors.pink[50],
                    onPressed: () => _showaddfeedinationpanel(),
                  )
                ],
              ),
              drawer: DrawerCode(),
              body: new Stack(
                children: [
                  FeedineList(),
                  Container(
                    decoration: new BoxDecoration(
                        image: new DecorationImage(
                            image: new AssetImage(
                                'assets/images/baby-elementson-pink.jpg'),
                            colorFilter: new ColorFilter.mode(
                                Colors.white.withOpacity(0.3),
                                BlendMode.dstATop),
                            fit: BoxFit.cover)),
                  ),
                ],
              ))),
    );
  }
}
