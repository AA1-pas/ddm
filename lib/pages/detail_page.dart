import 'package:flutter/material.dart';
import 'package:flutter_sqlite/entitys/propriety_entity.dart';
import 'package:flutter_sqlite/entitys/taco_entity.dart';
import 'package:flutter_sqlite/util/extensios.dart';
import 'package:flutter_sqlite/widgets/propriety_tile.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TacoEntity alimento =
        ModalRoute.of(context).settings.arguments as TacoEntity;
    final Map<String, dynamic> alimentoMap = alimento.toMap();
    final List<DataRow> rows = [];
    alimentoMap.forEach((key, value) {
      final ProprietyEntity item = ProprietyEntity(
          key.toDescription(), value.toString(), key.toUnidade());
      final tile = ProprietyTile(item.descricao, item.unidade, item.valor);
      rows.add(tile.dataRow());
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes ${alimento.descricao}'),
      ),
      body: ListView(
        children: [
          DataTable(columns: [
            DataColumn(label: Text('ID')),
            DataColumn(label: Text('Descrição')),
            DataColumn(label: Text('Categoria')),
          ], rows: [
            DataRow(cells: [
              DataCell(Text(alimento.id.toString())),
              DataCell(Text(alimento.descricao.toString())),
              DataCell(Text(alimento.categoria.toString())),
            ])
          ]),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 30),
            child: DataTable(
              columns: [
                DataColumn(label: Text('Propriedade')),
                DataColumn(label: Text('Valor')),
                DataColumn(label: Text('Unidade')),
              ],
              rows: rows,
            ),
          ),
        ],
      ),
    );
  }
}
