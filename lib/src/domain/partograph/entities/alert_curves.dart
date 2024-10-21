class AlertCurve {
  final double cervicalDilation;
  final DateTime time;

  AlertCurve({
    required this.cervicalDilation,
    required this.time,
  });
}

class AlertCurves {
  final AlertCurve? alertCurve;
  final AlertCurve? newAlertCurve;

  AlertCurves({
    this.alertCurve,
    this.newAlertCurve,
  });
}
