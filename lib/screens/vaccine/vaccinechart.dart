import 'package:flutter/material.dart';
import 'vaccinetable.dart';
import 'package:bidirectional_scroll_view/bidirectional_scroll_view.dart';

class DataTableDemo extends StatefulWidget {
  DataTableDemo() : super();

  @override
  DataTableDemoState createState() => DataTableDemoState();
}

class DataTableDemoState extends State<DataTableDemo> {
  List<VaccineTable> vaccdata;
  List<VaccineTable> selectvaccdata;
  bool sort;

  @override
  void initState() {
    sort = false;
    selectvaccdata = [];
    vaccdata = VaccineTable.getVaccData();
    super.initState();
  }

  onSortColum(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        vaccdata.sort((a, b) => a.age.compareTo(b.age));
      } else {
        vaccdata.sort((a, b) => b.age.compareTo(a.age));
      }
    }
  }

  onSelectedRow(bool selected, VaccineTable vaccine) async {
    setState(() {
      if (selected) {
        selectvaccdata.add(vaccine);
      } else {
        selectvaccdata.remove(vaccine);
      }
    });
  }

  deleteSelected() async {
    setState(() {
      if (selectvaccdata.isNotEmpty) {
        List<VaccineTable> temp = [];
        temp.addAll(selectvaccdata);
        for (VaccineTable vaccine in temp) {
          vaccdata.remove(vaccine);
          selectvaccdata.remove(vaccine);
        }
      }
    });
  }

  BidirectionalScrollViewPlugin dataBody() {
    return BidirectionalScrollViewPlugin(
      child: DataTable(
        dataRowHeight: 150,
        columnSpacing: 100,
        sortAscending: sort,
        sortColumnIndex: 0,
        columns: [
          DataColumn(
              label: Text("AGE"),
              numeric: false,
              tooltip: "This is age",
              onSort: (columnIndex, ascending) {
                setState(() {
                  sort = !sort;
                });
                onSortColum(columnIndex, ascending);
              }),
          DataColumn(
            label: Text("Vaccine"),
            numeric: false,
            tooltip: "This is vaccine name",
          ),
        ],
        rows: vaccdata
            .map(
              (vaccine) => DataRow(
                  selected: selectvaccdata.contains(vaccine),
                  onSelectChanged: (b) {
                    onSelectedRow(b, vaccine);
                  },
                  cells: [
                    DataCell(
                      Text(vaccine.age),
                      onTap: () {
                        print('Selected ${vaccine.age}');
                      },
                    ),
                    DataCell(
                      Text(vaccine.name),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.up,
        children: <Widget>[
          Expanded(
            child: dataBody(),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   mainAxisSize: MainAxisSize.min,
          //   children: <Widget>[
          //     Padding(
          //       padding: EdgeInsets.all(20.0),
          //       child: OutlineButton(
          //         child: Text('SELECTED ${selectvaccdata.length}'),
          //         onPressed: () {},
          //       ),
          //     ),
          //     Padding(
          //       padding: EdgeInsets.all(20.0),
          //       child: OutlineButton(
          //         child: Text('DELETE SELECTED'),
          //         onPressed: selectvaccdata.isEmpty
          //             ? null
          //             : () {
          //                 deleteSelected();
          //               },
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
