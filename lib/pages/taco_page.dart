import 'package:flutter/material.dart';
import 'package:flutter_sqlite/datasource/db_helper.dart';
import 'package:flutter_sqlite/entitys/taco_entity.dart';
import 'package:flutter_sqlite/util/util.dart';

class TacoPage extends StatefulWidget {
  @override
  _TacoPageState createState() => _TacoPageState();
}

class _TacoPageState extends State<TacoPage> {
  List<TacoEntity> alimentos;
  bool isLoading = true;
  DBHelper dbHelper;
  final _alimentoNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dbHelper = DBHelper();
    _init();
  }

  Future<void> _init() async {
    await dbHelper.initDatabase();
    await refreshFoodList();
  }

  Future<void> refreshFoodList([String value]) async {
    final alimentosGet = await dbHelper
        .getAlimentos((value ?? '').trim().isEmpty ? null : value);
    setState(() {
      alimentos = alimentosGet;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabela Taco'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: TextFormField(
              onChanged: (value) => refreshFoodList(value),
              controller: _alimentoNameController,
              decoration: InputDecoration(
                focusedBorder: new UnderlineInputBorder(
                  borderSide: new BorderSide(
                    color: Colors.purple,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
                hintText: "Digite o nome do alimento",
                labelText: "Pesquise aqui",
                icon: Icon(
                  Icons.restaurant,
                  color: Colors.purple,
                ),
                fillColor: Colors.white,
                labelStyle: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
          ),
          generateList(alimentos),
        ],
      ),
    );
  }

  Widget generateList(List<TacoEntity> entitys) {
    if (isLoading)
      return Container(height: 50, child: CircularProgressIndicator());

    if (entitys == null) return Text('Sem registros');

    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => InkWell(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              entitys.elementAt(index).descricao,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          onTap: () => Navigator.pushNamed(
            context,
            Util.kRouteDetail,
            arguments: entitys.elementAt(index),
          ),
        ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: entitys.length,
      ),
    );
  }
}
