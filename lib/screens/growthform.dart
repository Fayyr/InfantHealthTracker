import 'package:flutter/material.dart';
import 'package:ihtprototype/services/database.dart';

import 'package:ihtprototype/models/user.dart';
import 'package:provider/provider.dart';

class GrowthForm extends StatefulWidget {
  @override
  GrowthFormState createState() => GrowthFormState();
}

class GrowthFormState extends State<GrowthForm> {
  String _currentname;
  String _currentdate;
  String _currenttime;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    return Form(
      child: Column(
        children: <Widget>[
          Text(
            'Add New Record',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Date:'),
            validator: (val) => val.isEmpty ? "Enter a Date" : null,
            onChanged: (val) => setState(() => _currentname = val),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(labelText: 'Height (inch):'),
            validator: (val) => val.isEmpty ? "Enter Height" : null,
            onChanged: (val) => setState(() => _currentdate = val),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(labelText: 'Weight (lbs):'),
            validator: (val) => val.isEmpty ? "Enter Weight" : null,
            onChanged: (val) => setState(() => _currenttime = val),
          ),
          SizedBox(height: 20.0),
          RaisedButton(
              color: Colors.pink[50],
              child: Text(
                'Add',
                style: TextStyle(color: Colors.blueGrey[700]),
              ),
              onPressed: () async {
                await DatabaseService(uid: user.uid)
                    .updateGrowthData(_currentname, _currentdate, _currenttime);
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
