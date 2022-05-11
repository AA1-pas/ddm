import 'package:atividade_lista/datasource/fruta_datasource.dart';
import 'package:atividade_lista/model/fruta.dart';

class ArgumentsEntity {
  final FrutaDatasource? datasource;
  final FrutaEntity? entity;

  const ArgumentsEntity({this.datasource, this.entity});
}
