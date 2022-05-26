import 'package:flutter/material.dart';

class ProprietyTile {
  final String description;
  final String value;
  final String unidade;

  const ProprietyTile(this.description, this.unidade, this.value);

  DataRow dataRow() {
    return DataRow(
      cells: [
        DataCell(Text(description)),
        DataCell(Text(value)),
        DataCell(Text(unidade)),
      ],
    );
  }
}
