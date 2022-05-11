import 'package:atividade_lista/model/fruta.dart';
import 'package:collection/collection.dart';

class FrutaDatasource {
  final List<FrutaEntity> _frutas = [];

  void inicializarDados() {
    _frutas.add(const FrutaEntity(
        1,
        'Maçã',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSVAi2jVVH3IRoeyipV5eMufY-ZcDiEoiT0g&usqp=CAU',
        'Maçã Paulista'));
    _frutas.add(const FrutaEntity(
        2,
        'Uva',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmmDZE6jG5LdnzeAOmKwq_OD3FCGVmMElgjQ&usqp=CAU',
        'Uva niagara importada'));
    _frutas.add(const FrutaEntity(
        3,
        'Laranja',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbfBDsfxoFmPL8drKw-25I47DRpdgfwY9Eqw&usqp=CAU',
        'Laranja importada Argentina especial'));
    _frutas.add(const FrutaEntity(
        4,
        'Melância',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWyx1CihqCZuGlPN6B6jCWY6o6XmlcA4dc-w&usqp=CAU',
        'A melancia é uma fruta rasteira originária da África, pertence à família das cucurbitáceas. Pode apresentar formato arredondado ou alongado e seu tamanho varia ente 25 e 75 cm.'));
    _frutas.add(const FrutaEntity(
        5,
        'Ameixa',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCS8b9XM5k7oDOrqpa5r_FJbXqub-FAX9Q4g&usqp=CAU',
        'Pertencente à família das rosáceas, a ameixa de cor vermelha, amarela ou roxa escura é carnosa e suculenta. A ameixa possui alto valor nutritivo, é rica em açúcar, sais minerais (cálcio, fósforo e ferro) e algumas vitaminas, como as vitaminas do complexo B, que evitam problemas de pele e reumatismo.'));
    _frutas.add(const FrutaEntity(
        6,
        'Melão',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxD0rIVNbk_6RONJwhO5qPM4C_k2_qiaFfXA&usqp=CAU',
        'Melão é a fruta do meloeiro, planta pertencente à mesma família da melancia e do pepino. É originário da África e da Ásia, suas variedades são inúmeras, sendo que todas apresentam frutos de forma esférica, casca espessa, polpa carnosa e suculenta.'));
    _frutas.add(const FrutaEntity(
        7,
        'Figo',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmuAsSNNv_73witcy_82BQ1SCNHFYzSZC8IA&usqp=CAU',
        'O figo é um fruto da árvore chamada figueira (Ficus carica), pertencente à família Moraceae, que tem origem na região do Mediterrâneo.'));
  }

  List<FrutaEntity> buscarFrutas() {
    return _frutas;
  }

  FrutaEntity? buscarFrutasId(int id) {
    return _frutas.firstWhereOrNull((f) => f.id == id);
  }
}
