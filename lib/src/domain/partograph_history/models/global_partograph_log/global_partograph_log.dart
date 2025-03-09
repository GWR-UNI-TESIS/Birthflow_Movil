// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_partograph_log.freezed.dart';
part 'global_partograph_log.g.dart';

// Conversores personalizados
String _stringFromJson(dynamic value) => value?.toString() ?? '';

int _intFromJson(dynamic value) {
  if (value is int) return value;
  if (value is String) return int.tryParse(value) ?? 0;
  return 0;
}

double _doubleFromJson(dynamic value) {
  if (value is double) return value;
  if (value is int) return value.toDouble();
  if (value is String) return double.tryParse(value) ?? 0.0;
  return 0.0;
}

DateTime _dateTimeFromJson(dynamic value) {
  if (value is String) return DateTime.parse(value);
  if (value is int) return DateTime.fromMillisecondsSinceEpoch(value);
  throw Exception('Formato de fecha desconocido: $value');
}

String _dateTimeToJson(DateTime date) => date.toIso8601String();

@freezed
abstract class GlobalPartographLog with _$GlobalPartographLog {
  factory GlobalPartographLog({
    @JsonKey(name: 'partographLog') required PartographLog partographLog,
    @JsonKey(name: 'cervicalDilationLog') @Default([]) List<CervicalDilationLog> cervicalDilationLog,
    @JsonKey(name: 'medicalSurveillanceTableLog') @Default([]) List<MedicalSurveillanceTableLog> medicalSurveillanceTableLog,
    @JsonKey(name: 'presentationPositionVarietyLog') @Default([]) List<PresentationPositionVarietyLog> presentationPositionVarietyLog,
    @JsonKey(name: 'contractionFrequencyLog') @Default([]) List<ContractionFrequencyLog> contractionFrequencyLog,
    @JsonKey(name: 'fetalHeartRateLog') @Default([]) List<FetalHeartRateLog> fetalHeartRateLog,
    @JsonKey(name: 'childbirthNoteLog') ChildbirthNoteLog? childbirthNoteLog,
    @JsonKey(name: 'curves') Curves? curves,
  }) = _GlobalPartographLog;

  factory GlobalPartographLog.fromJson(Map<String, dynamic> json) =>
      _$GlobalPartographLogFromJson(json);
}

@freezed
abstract class PartographLog with _$PartographLog {
  factory PartographLog({
    @JsonKey(name: 'Name', fromJson: _stringFromJson) required String name,
    @JsonKey(name: 'RecordName', fromJson: _stringFromJson) required String recordName,
    @JsonKey(name: 'Date', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) required DateTime date,
    @JsonKey(name: 'Observation', fromJson: _stringFromJson) required String observation,
    @JsonKey(name: 'WorkTime', fromJson: _stringFromJson) required String workTime,
  }) = _PartographLog;

  factory PartographLog.fromJson(Map<String, dynamic> json) =>
      _$PartographLogFromJson(json);
}

@freezed
abstract class CervicalDilationLog with _$CervicalDilationLog {
  factory CervicalDilationLog({
    @JsonKey(name: 'Value', fromJson: _doubleFromJson) required double value,
    @JsonKey(name: 'Hour', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) required DateTime hour,
    @JsonKey(name: 'RemOrRam') required bool remOrRam,
  }) = _CervicalDilationLog;

  factory CervicalDilationLog.fromJson(Map<String, dynamic> json) =>
      _$CervicalDilationLogFromJson(json);
}

@freezed
abstract class MedicalSurveillanceTableLog with _$MedicalSurveillanceTableLog {
  factory MedicalSurveillanceTableLog({
    @JsonKey(name: 'MaternalPosition', fromJson: _stringFromJson) required String maternalPosition,
    @JsonKey(name: 'ArterialPressure', fromJson: _stringFromJson) required String arterialPressure,
    @JsonKey(name: 'MaternalPulse', fromJson: _stringFromJson) required String maternalPulse,
    @JsonKey(name: 'FetalHeartRate', fromJson: _stringFromJson) required String fetalHeartRate,
    @JsonKey(name: 'ContractionsDuration', fromJson: _stringFromJson) required String contractionsDuration,
    @JsonKey(name: 'FrequencyContractions', fromJson: _stringFromJson) required String frequencyContractions,
    @JsonKey(name: 'Pain', fromJson: _stringFromJson) required String pain,
    @JsonKey(name: 'Letter', fromJson: _stringFromJson) required String letter,
    @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) required DateTime time,
  }) = _MedicalSurveillanceTableLog;

  factory MedicalSurveillanceTableLog.fromJson(Map<String, dynamic> json) =>
      _$MedicalSurveillanceTableLogFromJson(json);
}

@freezed
abstract class PresentationPositionVarietyLog with _$PresentationPositionVarietyLog {
  factory PresentationPositionVarietyLog({
    @JsonKey(name: 'HodgePlane', fromJson: _intFromJson) required int hodgePlane,
    @JsonKey(name: 'Position', fromJson: _intFromJson) required int position,
    @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) required DateTime time,
  }) = _PresentationPositionVarietyLog;

  factory PresentationPositionVarietyLog.fromJson(Map<String, dynamic> json) =>
      _$PresentationPositionVarietyLogFromJson(json);
}

@freezed
abstract class ContractionFrequencyLog with _$ContractionFrequencyLog {
  factory ContractionFrequencyLog({
    @JsonKey(name: 'PartographId', fromJson: _stringFromJson) required String partographId,
    @JsonKey(name: 'Value', fromJson: _stringFromJson) required String value,
    @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) required DateTime time,
  }) = _ContractionFrequencyLog;

  factory ContractionFrequencyLog.fromJson(Map<String, dynamic> json) =>
      _$ContractionFrequencyLogFromJson(json);
}

@freezed
abstract class FetalHeartRateLog with _$FetalHeartRateLog {
  factory FetalHeartRateLog({
    @JsonKey(name: 'Value', fromJson: _stringFromJson) required String value,
    @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) required DateTime time,
  }) = _FetalHeartRateLog;

  factory FetalHeartRateLog.fromJson(Map<String, dynamic> json) =>
      _$FetalHeartRateLogFromJson(json);
}

@freezed
abstract class ChildbirthNoteLog with _$ChildbirthNoteLog {
  factory ChildbirthNoteLog({
    @JsonKey(name: 'Description', fromJson: _stringFromJson) String? description,
    @JsonKey(name: 'Hour', fromJson: _stringFromJson) required String hour,
    @JsonKey(name: 'Sex', fromJson: _stringFromJson) required String sex,
    @JsonKey(name: 'Apgar', fromJson: _stringFromJson) required String apgar,
    @JsonKey(name: 'Temperature', fromJson: _stringFromJson) required String temperature,
    @JsonKey(name: 'Caputto', fromJson: _stringFromJson) required String caputto,
    @JsonKey(name: 'Circular', fromJson: _stringFromJson) required String circular,
    @JsonKey(name: 'Lamniotico', fromJson: _stringFromJson) required String lamniotico,
    @JsonKey(name: 'Miccion', fromJson: _stringFromJson) required String miccion,
    @JsonKey(name: 'Meconio', fromJson: _stringFromJson) required String meconio,
    @JsonKey(name: 'Pa', fromJson: _stringFromJson) required String pa,
    @JsonKey(name: 'Expulsivo', fromJson: _stringFromJson) required String expulsivo,
    @JsonKey(name: 'Placenta', fromJson: _stringFromJson) required String placenta,
    @JsonKey(name: 'Alumbramiento', fromJson: _stringFromJson) required String alumbramiento,
    @JsonKey(name: 'HuellaPlantar', fromJson: _stringFromJson) required String huellaPlantar,
  }) = _ChildbirthNoteLog;

  factory ChildbirthNoteLog.fromJson(Map<String, dynamic> json) =>
      _$ChildbirthNoteLogFromJson(json);
}

@freezed
abstract class AlertCurve with _$AlertCurve {
  factory AlertCurve({
    @JsonKey(name: 'CervicalDilation', fromJson: _doubleFromJson) required double cervicalDilation,
    @JsonKey(name: 'Time', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) required DateTime time,
  }) = _AlertCurve;

  factory AlertCurve.fromJson(Map<String, dynamic> json) =>
      _$AlertCurveFromJson(json);
}

@freezed
abstract class Curves with _$Curves {
  factory Curves({
    @JsonKey(name: 'AlertCurve') List<AlertCurve>? alertCurve,
    @JsonKey(name: 'newAlertCurve') List<AlertCurve>? newAlertCurve,
  }) = _Curves;

  factory Curves.fromJson(Map<String, dynamic> json) => _$CurvesFromJson(json);
}
