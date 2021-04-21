import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ihtprototype/models/growthmodel.dart';
import 'package:ihtprototype/shared/growthtile.dart';

class GrowthList extends StatefulWidget {
  @override
  _GrowthListState createState() => _GrowthListState();
}

class _GrowthListState extends State<GrowthList> {
  @override
  Widget build(BuildContext context) {
    final growths = Provider.of<List<GrowthCounter>>(context) ?? [];
    return ListView.builder(
        itemCount: growths.length,
        itemBuilder: (context, index) {
          return GrowthTile(growth: growths[index]);
        });
  }
}
