import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:ihtprototype/services/database.dart';
import 'package:ihtprototype/screens/vaccscreen.dart';
import 'package:ihtprototype/models/vaccmodel.dart';
import 'package:ihtprototype/shared/vaccinationtile.dart';

class VaccineList extends StatefulWidget {
  @override
  _VaccineListState createState() => _VaccineListState();
}

class _VaccineListState extends State<VaccineList> {
  @override
  Widget build(BuildContext context) {
    final vaccinations = Provider.of<List<Vaccination>>(context) ?? [];

    return ListView.builder(
        itemCount: vaccinations.length,
        itemBuilder: (context, index) {
          return VaccinationTile(vaccination: vaccinations[index]);
        });
  }
}
