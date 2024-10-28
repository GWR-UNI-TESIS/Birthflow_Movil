class CervicalDilation {
  final int id;
  final String partographId;
  final double value;
  final DateTime hour;
  final bool remOrRam;
 
  CervicalDilation({
    required this.id,
    required this.partographId,
    required this.value,
    required this.hour,
    required this.remOrRam,
  });
}
