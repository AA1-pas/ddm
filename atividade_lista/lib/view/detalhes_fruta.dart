import 'package:atividade_lista/model/fruta.dart';
import 'package:atividade_lista/util/arguments_entity.dart';
import 'package:atividade_lista/view/card_detalhes_fruta_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetalhesFruta extends StatelessWidget {
  const DetalhesFruta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ArgumentsEntity arguments =
        ModalRoute.of(context)?.settings.arguments as ArgumentsEntity;
    final FrutaEntity? entity = arguments.entity;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detalhes Fruta',
        ),
      ),
      body: Container(
          alignment: Alignment.topLeft,
          color: Colors.amber[200],
          child: CardDetalhesFrutaTile(entity)),
    );
  }
}
