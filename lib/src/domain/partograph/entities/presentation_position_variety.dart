enum HodgePlanePosition {
  i(9.5),
  ii(6.5),
  iii(3.5),
  iv(1);

  const HodgePlanePosition(this.value);

  final double value;

  static HodgePlanePosition fromString(String value) {
    return HodgePlanePosition.values.firstWhere(
      (position) => position.valueAsString == value,
      orElse: () =>
          throw ArgumentError('Invalid HodgePlanePosition value: $value'),
    );
  }
}

extension HodgePlanePositionExtensionString on HodgePlanePosition {
  String get valueAsString {
    switch (this) {
      case HodgePlanePosition.i:
        return 'I';
      case HodgePlanePosition.ii:
        return 'II';
      case HodgePlanePosition.iii:
        return 'III';
      case HodgePlanePosition.iv:
        return 'IV';
      default:
        return '';
    }
  }
}

enum Position {
  OIA('OIIA'),
  OIT('OIIT'),
  OIP('OIIP'),
  ODA('OIDA'),
  ODT('OIDT'),
  ODP('OIDP'),
  OP('OP'),
  OS('OS');

  const Position(this.value);

  final String value;

  static Position fromString(String value) {
    return Position.values.firstWhere(
      (position) => position.value == value,
      orElse: () => throw ArgumentError('Invalid Position value: $value'),
    );
  }
}

class PresentationPositionVariety {
  final int id;
  final String partographId;
  final String hodgePlane;
  final String position;
  final DateTime time;

  PresentationPositionVariety({
    required this.id,
    required this.partographId,
    required this.hodgePlane,
    required this.position,
    required this.time,
  });
}
