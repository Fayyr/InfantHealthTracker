import 'package:flutter/material.dart';
import 'package:ihtprototype/services/database.dart';

import 'package:ihtprototype/models/user.dart';
import 'package:provider/provider.dart';

class FeedForm extends StatefulWidget {
  @override
  _FeedFormState createState() => _FeedFormState();
}

class _FeedFormState extends State<FeedForm> {
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
            'Add New Meal',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Meal Name:'),
            validator: (val) => val.isEmpty ? "Enter a Meal name" : null,
            onChanged: (val) => setState(() => _currentname = val),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(labelText: 'Date:'),
            validator: (val) => val.isEmpty ? "Enter date" : null,
            onChanged: (val) => setState(() => _currentdate = val),
          ),
           SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(labelText: 'Time:'),
            validator: (val) => val.isEmpty ? "Enter time" : null,
            onChanged: (val) => setState(() => _currenttime = val),
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
                    .updateFeedineData(_currentname, _currentdate,_currenttime);
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
