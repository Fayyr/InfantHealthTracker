import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:ihtprototype/models/feedmodel.dart';
import 'package:ihtprototype/shared/feedinationtile.dart';

class FeedineList extends StatefulWidget {
  @override
  _FeedineListState createState() => _FeedineListState();
}

class _FeedineListState extends State<FeedineList> {
  @override
  Widget build(BuildContext context) {
    final feedinations = Provider.of<List<Feedination>>(context) ?? [];

    return ListView.builder(
        itemCount: feedinations.length,
        itemBuilder: (context, index) {
          return FeedinationTile(feedination: feedinations[index]);
        });
  }
}