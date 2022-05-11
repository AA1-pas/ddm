import 'package:atividade_lista/model/fruta.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardDetalhesFrutaTile extends StatelessWidget {
  final FrutaEntity? entity;
  const CardDetalhesFrutaTile(this.entity, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Image.network(
                entity?.urlImagem ?? '',
                width: 100,
              ),
            ),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    entity?.nome ?? '',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    entity?.descricao ?? '',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
