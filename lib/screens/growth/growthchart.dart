import 'package:flutter/material.dart';
import 'growthtable.dart';
import 'package:bidirectional_scroll_view/bidirectional_scroll_view.dart';

class DataTableDemo extends StatefulWidget {
  DataTableDemo() : super();

  @override
  DataTableDemoState createState() => DataTableDemoState();
}

class DataTableDemoState extends State<DataTableDemo> {
  List<GrowthTable> data;

  bool sort;

  @override
  void initState() {
    sort = false;

    data = GrowthTable.getData();
    super.initState();
  }

  onSortColum(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        data.sort((a, b) => a.age.compareTo(b.age));
      } else {
        data.sort((a, b) => b.age.compareTo(a.age));
      }
    }
  }

  BidirectionalScrollViewPlugin dataBody() {
    return BidirectionalScrollViewPlugin(
      child: DataTable(
        sortAscending: sort,
        sortColumnIndex: 0,
        columns: [
          DataColumn(
              label: Text("AGE "),
              numeric: false,
              tooltip: "THIS IS THE AGE OF BABY",
              onSort: (columnIndex, ascending) {
                setState(() {
                  sort = !sort;
                });
                onSortColum(columnIndex, ascending);
              }),
          DataColumn(
            label: Text("WEIGHT (BOY)"),
            numeric: false,
            tooltip: "THIS IS WEIGHT OF BABY BOY",
          ),
          DataColumn(
            label: Text("HEIGHT (BOY)"),
            numeric: false,
            tooltip: "THIS IS HEIGHT OF BABY BOY",
          ),
          DataColumn(
            label: Text("WEIGHT (GIRL)"),
            numeric: false,
            tooltip: "THIS IS WEIGHT OF BABY GIRL",
          ),
          DataColumn(
            label: Text("HEIGHT (GIRL)"),
            numeric: false,
            tooltip: "THIS IS HEIGHT OF BABY GIRL",
          ),
        ],
        rows: data
            .map(
              (user) => DataRow(cells: [
                DataCell(
                  Text(user.age),
                ),
                DataCell(
                  Text(user.bheight),
                ),
                DataCell(
                  Text(user.bweight),
                ),
                DataCell(
                  Text(user.gheight),
                ),
                DataCell(
                  Text(user.gweight),
                ),
              ]),
            )
            .toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Expanded(
            child: dataBody(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
          ),
        ],
      ),
    );
  }
}
