import 'package:flutter_sqlite/entitys/taco_entity.dart';

extension TacoTableExtension on String {
  String toDescription() {
    switch (this) {
      case TacoEntity.keyDescricao:
        return 'Descrição';
      case TacoEntity.keyId:
        return 'ID';
      case TacoEntity.keyCalcio:
        return 'Cálcio';
      case TacoEntity.keyCarboidratos:
        return 'Carboidratos';
      case TacoEntity.keyCategoria:
        return 'Categoria';
      case TacoEntity.keyCinzas:
        return 'Cinzas';
      case TacoEntity.keyCobre:
        return 'cobre';
      case TacoEntity.keyColesterol:
        return 'Colesterol';
      case TacoEntity.keyEnergia:
        return 'Energia';
      case TacoEntity.keyFerro:
        return 'Ferro';
      case TacoEntity.keyFibraAlimentar:
        return 'Fibra Alimentar';
      case TacoEntity.keyFosforo:
        return 'Fósforo';
      case TacoEntity.keyKj:
        return 'KJ';
      case TacoEntity.keyLipideos:
        return 'Lipídeos';
      case TacoEntity.keyMagnesio:
        return 'Magnésio';
      case TacoEntity.keyManganes:
        return 'Manganês';
      case TacoEntity.keyNiacina:
        return 'Niacina';
      case TacoEntity.keyPiridoxina:
        return 'Piridoxina';
      case TacoEntity.keyPotassio:
        return 'Potássio';
      case TacoEntity.keyProteina:
        return 'Proteína';
      case TacoEntity.keyRae:
        return 'RAE';
      case TacoEntity.keyRe:
        return 'RE';
      case TacoEntity.keyRetinol:
        return 'Retinol';
      case TacoEntity.keyRiboflavina:
        return 'Riboflavina';
      case TacoEntity.keySodio:
        return 'Sódio';
      case TacoEntity.keyTiamina:
        return 'Tiamina';
      case TacoEntity.keyUmidade:
        return 'Umidade';
      case TacoEntity.keyVitaminaC:
        return 'Vitamina C';
      case TacoEntity.keyZinco:
        return 'Zinco';
      default:
        return '';
    }
  }

  String toUnidade() {
    switch (this) {
      case TacoEntity.keyCalcio:
      case TacoEntity.keyCobre:
      case TacoEntity.keyColesterol:
      case TacoEntity.keyFerro:
      case TacoEntity.keyFosforo:
      case TacoEntity.keyMagnesio:
      case TacoEntity.keyNiacina:
      case TacoEntity.keyPotassio:
      case TacoEntity.keyPiridoxina:
      case TacoEntity.keyRiboflavina:
      case TacoEntity.keySodio:
      case TacoEntity.keyTiamina:
      case TacoEntity.keyVitaminaC:
      case TacoEntity.keyZinco:
      case TacoEntity.keyManganes:
        return 'mg';
      case TacoEntity.keyCarboidratos:
      case TacoEntity.keyProteina:
      case TacoEntity.keyCinzas:
      case TacoEntity.keyFibraAlimentar:
      case TacoEntity.keyLipideos:
        return 'g';
      case TacoEntity.keyEnergia:
        return 'kCal';
      case TacoEntity.keyKj:
        return 'KJ';
      case TacoEntity.keyRae:
      case TacoEntity.keyRe:
      case TacoEntity.keyRetinol:
        return 'mcg';
      case TacoEntity.keyUmidade:
        return '%';
      default:
        return '';
    }
  }
}
