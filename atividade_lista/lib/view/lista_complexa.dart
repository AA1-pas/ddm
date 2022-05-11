import 'package:atividade_lista/util/arguments_entity.dart';
import 'package:atividade_lista/view/card_detalhes_fruta_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListaComplexa extends StatelessWidget {
  const ListaComplexa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ArgumentsEntity arguments =
        ModalRoute.of(context)?.settings.arguments as ArgumentsEntity;

    final listaFrutas = arguments.datasource?.buscarFrutas() ?? [];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lista Complexa Frutas',
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        color: Colors.amber[200],
        child: ListView.builder(
          itemCount: listaFrutas.length,
          itemBuilder: (context, index) {
            return CardDetalhesFrutaTile(listaFrutas.elementAt(index));
          },
        ),
      ),
    );
  }
}
