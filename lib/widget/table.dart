import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: {
        0: FixedColumnWidth(100.0),
        2: FixedColumnWidth(100.0),
        3: FixedColumnWidth(200.0),
      },
      defaultColumnWidth: FixedColumnWidth(50.0),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(
          color: Colors.black, style: BorderStyle.solid, width: 2),
      children: <TableRow>[
        TableRow(children: [
          TableCell(
            child: Text('100'),
          ),
          TableCell(
            child: Text('100'),
          ),
          TableCell(
            child: Text('100'),
          ),
          TableCell(
            child: Text('100'),
          ),
          TableCell(
            child: Text('100'),
          ),
        ]),
        TableRow(children: [
          TableCell(
            child: Text('200'),
          ),
          TableCell(
            child: Text('200'),
          ),
          TableCell(
            child: Text('200'),
          ),
          TableCell(
            child: Text('100'),
          ),
          TableCell(
            child: Text('100'),
          ),
        ])
      ],
    );
  }
}
