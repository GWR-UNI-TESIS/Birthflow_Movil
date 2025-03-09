import 'package:birthflow_movil/src/domain/partograph/entities/alert_curves.dart';

class CervicalDilation {
  final int id;
  final String partographId;
  final double value;
  final DateTime hour;
  final bool remOrRam;
  AlertCurves? alertCurves;

  CervicalDilation({
    required this.id,
    required this.partographId,
    required this.value,
    required this.hour,
    required this.remOrRam,
    this.alertCurves,
  });
}
