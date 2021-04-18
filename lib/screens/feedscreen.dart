import 'package:flutter/material.dart';
import 'package:ihtprototype/screens/feedform.dart';
import 'package:ihtprototype/shared/drawer.dart';
import 'package:ihtprototype/services/database.dart';

import 'package:provider/provider.dart';

import 'package:ihtprototype/screens/feedinelist.dart';
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
        backgroundColor: Colors.amber[50],
        appBar: AppBar(
          title: Text('Meals'),
          backgroundColor: Colors.black87,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.add),
              label: Text('New'),
              color: Colors.orange,
              onPressed: () => _showaddfeedinationpanel(),
            ) 
          ],
        ),
        drawer: DrawerCode(),
        body: FeedineList(),
        
      )),
    );
  }
}
