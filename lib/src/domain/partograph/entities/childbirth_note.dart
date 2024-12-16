class ChildbirthNote {
  final String partographId;
  final String? description;
  final String hour;
  final String sex;
  final String apgar;
  final String temperature;
  final String caputto;
  final String circular;
  final String lamniotico;
  final String miccion;
  final String meconio;
  final String pa;
  final String expulsivo;
  final String placenta;
  final String alumbramiento;
  final String huellaPlantar;
  final String pc;
  final String talla;
  final String brazalete;
  final String huellaDig;
  final DateTime createAt;
  final DateTime? updateAt;
  final DateTime? deleteAt;
  final String? createdBy;
  final String? updateBy;
  final String? deleteBy;

  ChildbirthNote({
    required this.partographId,
    this.description,
    required this.hour,
    required this.sex,
    required this.apgar,
    required this.temperature,
    required this.caputto,
    required this.circular,
    required this.lamniotico,
    required this.miccion,
    required this.meconio,
    required this.pa,
    required this.expulsivo,
    required this.placenta,
    required this.alumbramiento,
    required this.huellaPlantar,
    required this.pc,
    required this.talla,
    required this.brazalete,
    required this.huellaDig,
    required this.createAt,
    this.updateAt,
    this.deleteAt,
    this.createdBy,
    this.updateBy,
    this.deleteBy,
  });
}