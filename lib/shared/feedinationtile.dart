import 'package:ihtprototype/models/feedmodel.dart';
import 'package:flutter/material.dart';

class FeedinationTile extends StatelessWidget {
  final Feedination feedination;
  FeedinationTile({this.feedination});
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
              backgroundImage: AssetImage('assets/images/dietbnw.png'),
            ),
            title: Text(feedination.name),
            subtitle: Text('Date taken on: ${feedination.date}'
                ', Time: ${feedination.time}')),
      ),
    );
  }
}
