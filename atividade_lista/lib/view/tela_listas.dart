import 'package:atividade_lista/datasource/fruta_datasource.dart';
import 'package:atividade_lista/util/arguments_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaLista extends StatelessWidget {
  final FrutaDatasource frutaDatasource;
  const TelaLista(this.frutaDatasource, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.amber[200],
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(200, 50))),
              child: const Text('Lista Simples'),
              onPressed: () => Navigator.pushNamed(context, '/lista-simples',
                  arguments: ArgumentsEntity(datasource: frutaDatasource)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ElevatedButton(
                style: ButtonStyle(
                    minimumSize:
                        MaterialStateProperty.all(const Size(200, 50))),
                child: const Text('Lista Complexa'),
                onPressed: () => Navigator.pushNamed(context, '/lista-complexa',
                    arguments: ArgumentsEntity(datasource: frutaDatasource)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
