import 'package:flutter/material.dart';
import 'package:ihtprototype/screens/authenticate/sign_in.dart';
import 'package:ihtprototype/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.amber[50],
        appBar: AppBar(
          title: Text('InfHealTracker'),
          backgroundColor: Color.fromRGBO(237, 146, 0, 0.4),
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}
