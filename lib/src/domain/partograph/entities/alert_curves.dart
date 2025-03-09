class AlertCurve {
  final double cervicalDilation;
  final DateTime time;

  AlertCurve({
    required this.cervicalDilation,
    required this.time,
  });
}

class AlertCurves {
  final List<AlertCurve>? alertCurve;
  final List<AlertCurve>? newAlertCurve;

  AlertCurves({
    this.alertCurve,
    this.newAlertCurve,
  });
}
