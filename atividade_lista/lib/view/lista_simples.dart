import 'package:atividade_lista/util/arguments_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListaSimples extends StatelessWidget {
  const ListaSimples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ArgumentsEntity arguments =
        ModalRoute.of(context)?.settings.arguments as ArgumentsEntity;

    final listaFrutas = arguments.datasource?.buscarFrutas() ?? [];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lista Simples Frutas',
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        color: Colors.amber[200],
        child: ListView.builder(
          itemCount: listaFrutas.length,
          itemBuilder: (context, index) {
            return InkWell(
              child: Card(
                margin: const EdgeInsets.all(4),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    listaFrutas.elementAt(index).nome,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onTap: () => Navigator.pushNamed(context, '/detalhes-fruta',
                  arguments:
                      ArgumentsEntity(entity: listaFrutas.elementAt(index))),
            );
          },
        ),
      ),
    );
  }
}
