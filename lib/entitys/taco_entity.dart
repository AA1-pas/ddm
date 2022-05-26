class TacoEntity {
  int id;
  String kj;
  String categoria;
  String descricao;
  String umidade;
  String energia;
  String proteina;
  String lipideos;
  String colesterol;
  String carboidratos;
  String fibraAlimentar;
  String cinzas;
  String calcio;
  String magnesio;
  String manganes;
  String fosforo;
  String ferro;
  String sodio;
  String potassio;
  String cobre;
  String zinco;
  String retinol;
  String re;
  String rae;
  String tiamina;
  String riboflavina;
  String piridoxina;
  String niacina;
  String vitaminac;

  TacoEntity({
    this.descricao,
    this.calcio,
    this.carboidratos,
    this.cinzas,
    this.cobre,
    this.colesterol,
    this.energia,
    this.ferro,
    this.fibraAlimentar,
    this.fosforo,
    this.lipideos,
    this.magnesio,
    this.manganes,
    this.id,
    this.potassio,
    this.proteina,
    this.retinol,
    this.sodio,
    this.umidade,
    this.zinco,
    this.categoria,
    this.re,
    this.rae,
    this.tiamina,
    this.riboflavina,
    this.piridoxina,
    this.niacina,
    this.vitaminac,
    this.kj,
  });

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      keyCalcio: calcio,
      keyCarboidratos: carboidratos,
      keyCinzas: cinzas,
      keyCobre: cobre,
      keyColesterol: colesterol,
      keyEnergia: energia,
      keyFerro: ferro,
      keyFibraAlimentar: fibraAlimentar,
      keyFosforo: fosforo,
      keyKj: kj,
      keyLipideos: lipideos,
      keyMagnesio: magnesio,
      keyManganes: manganes,
      keyNiacina: niacina,
      keyPiridoxina: piridoxina,
      keyPotassio: potassio,
      keyProteina: proteina,
      keyRae: rae,
      keyRe: re,
      keyRetinol: retinol,
      keyRiboflavina: riboflavina,
      keySodio: sodio,
      keyTiamina: tiamina,
      keyUmidade: umidade,
      keyVitaminaC: vitaminac,
      keyZinco: zinco,
    };
    return map;
  }

  TacoEntity.fromMap(Map<String, dynamic> map) {
    calcio = map[keyCalcio];
    carboidratos = map[keyCarboidratos];
    cinzas = map[keyCinzas];
    cobre = map[keyCobre];
    colesterol = map[keyColesterol];
    energia = map[keyEnergia];
    ferro = map[keyFerro];
    fibraAlimentar = map[keyFibraAlimentar];
    fosforo = map[keyFosforo];
    lipideos = map[keyLipideos];
    magnesio = map[keyMagnesio];
    manganes = map[keyManganes];
    id = map[keyId];
    potassio = map[keyPotassio];
    proteina = map[keyProteina];
    retinol = map[keyRetinol];
    sodio = map[keySodio];
    umidade = map[keyUmidade];
    zinco = map[keyZinco];
    descricao = map[keyDescricao];
    categoria = map[keyCategoria];
    re = map[keyRe];
    rae = map[keyRae];
    tiamina = map[keyTiamina];
    riboflavina = map[keyRiboflavina];
    piridoxina = map[keyPiridoxina];
    niacina = map[keyNiacina];
    vitaminac = map[keyVitaminaC];
    kj = map[keyKj];
  }

  static const String keyId = 'id';
  static const String keyKj = 'kj';
  static const String keyDescricao = 'alimento';
  static const String keyCalcio = 'calcio';
  static const String keyCarboidratos = 'carboidratos';
  static const String keyCinzas = 'cinzas';
  static const String keyCobre = 'cobre';
  static const String keyColesterol = 'colesterol';
  static const String keyEnergia = 'energia';
  static const String keyFerro = 'ferro';
  static const String keyFibraAlimentar = 'fibraAlimentar';
  static const String keyFosforo = 'fosforo';
  static const String keyLipideos = 'lipideos';
  static const String keyMagnesio = 'magnesio';
  static const String keyManganes = 'manganes';
  static const String keyPotassio = 'potassio';
  static const String keyProteina = 'proteina';
  static const String keyRetinol = 'retinol';
  static const String keySodio = 'sodio';
  static const String keyUmidade = 'umidade';
  static const String keyZinco = 'zinco';
  static const String keyCategoria = 'categoria';
  static const String keyRe = 'remcg';
  static const String keyRae = 'raemcg';
  static const String keyTiamina = 'tiaminamg';
  static const String keyRiboflavina = 'riboflavinamg';
  static const String keyPiridoxina = 'piridoxinamg';
  static const String keyNiacina = 'niacinamg';
  static const String keyVitaminaC = 'vitaminaCmg';
}
