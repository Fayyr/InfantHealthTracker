import 'package:ihtprototype/models/growthmodel.dart';
import 'package:flutter/material.dart';

class GrowthTile extends StatelessWidget {
  final GrowthCounter growth;
  GrowthTile({this.growth});
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
            backgroundImage: AssetImage('assets/images/height.png'),
          ),
          title: Text(growth.date),
          subtitle: Text(
              'Weight : ${growth.weight} lbs | Height : ${growth.weight} inches'),
        ),
      ),
    );
  }
}
