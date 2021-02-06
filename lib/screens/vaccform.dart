import 'package:flutter/material.dart';
import 'package:ihtprototype/services/database.dart';
import 'package:ihtprototype/shared/constants.dart';
import 'package:ihtprototype/models/user.dart';
import 'package:provider/provider.dart';

class VaccForm extends StatefulWidget {
  @override
  _VaccFormState createState() => _VaccFormState();
}

class _VaccFormState extends State<VaccForm> {
  String _currentname;
  String _currentdate;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    return Form(
      child: Column(
        children: <Widget>[
          Text(
            'Add New Vaccination',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Vaccine Name:'),
            validator: (val) => val.isEmpty ? "Enter a vaccine name" : null,
            onChanged: (val) => setState(() => _currentname = val),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(labelText: 'Date:'),
            validator: (val) => val.isEmpty ? "Enter date" : null,
            onChanged: (val) => setState(() => _currentdate = val),
          ),
          SizedBox(height: 20.0),
          RaisedButton(
              color: Colors.orange,
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                await DatabaseService(uid: user.uid)
                    .updateVaccineData(_currentname, _currentdate);
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
