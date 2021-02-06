import 'package:flutter/material.dart';
import 'package:ihtprototype/screens/vaccform.dart';
import 'package:ihtprototype/shared/drawer.dart';
import 'package:ihtprototype/services/database.dart';

import 'package:provider/provider.dart';

import 'package:ihtprototype/screens/vaccinelist.dart';
import 'package:ihtprototype/models/vaccmodel.dart';

class VaccScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _showaddvaccinationpanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
                child: VaccForm());
          });
    }

    return StreamProvider<List<Vaccination>>.value(
      value: DatabaseService().vaccinations,
      child: Container(
          child: Scaffold(
        backgroundColor: Colors.amber[50],
        appBar: AppBar(
          title: Text('Vaccinations'),
          backgroundColor: Colors.black87,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.add),
              label: Text('New'),
              color: Colors.orange,
              onPressed: () => _showaddvaccinationpanel(),
            ) 
          ],
        ),
        drawer: DrawerCode(),
        body: VaccineList(),
        
      )),
    );
  }
}
