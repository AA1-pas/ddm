import 'package:flutter_sqlite/datasource/migrate_Taco.dart';
import 'package:flutter_sqlite/entitys/taco_entity.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../util/util.dart';

class DBHelper {
  static Database _db;
  final MigrateTabelaTaco _taco = MigrateTabelaTaco();

  initDatabase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, Util.kBanco);
    _db = await openDatabase(path, version: 1, onCreate: _onCreate);
    await _onPopulation(_db);
  }

  _onCreate(Database db, int version) async {
    await db.execute(_taco.scriptTable());
  }

  Future<void> _onPopulation(Database db) async {
    final bool addItens = (await getAlimentos()).length == 0;
    if (addItens) await db.execute(_taco.scriptInsert());
  }

  Future<List<TacoEntity>> getAlimentos([String value]) async {
    final String where =
        value != null ? '${TacoEntity.keyDescricao} like ?' : '1 = 1';
    final List<dynamic> whereArgs = value != null ? ['%$value%'] : [];
    List<Map> maps = await _db.query(
      Util.kTableNameTaco,
      where: where,
      whereArgs: whereArgs,
    );
    List<TacoEntity> alimentos = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        alimentos.add(TacoEntity.fromMap(maps[i]));
      }
    }
    return alimentos..sort((a, b) => a.descricao.compareTo(b.descricao));
  }

  Future close() async {
    _db.close();
  }
}
