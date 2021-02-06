import 'package:ihtprototype/models/vaccmodel.dart';
import 'package:flutter/material.dart';

class VaccinationTile extends StatelessWidget {
  final Vaccination vaccination;
    VaccinationTile({
      this.vaccination
    });
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/images/vaccine.png'),
          ),
          title: Text(vaccination.name),
          subtitle: Text('Date taken on: ${vaccination.date}'),
        ),
      ),
    );
  }
}
