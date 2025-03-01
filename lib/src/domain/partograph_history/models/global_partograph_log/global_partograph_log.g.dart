// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_partograph_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GlobalPartographLogImpl _$$GlobalPartographLogImplFromJson(
        Map<String, dynamic> json) =>
    _$GlobalPartographLogImpl(
      partographLog:
          PartographLog.fromJson(json['partographLog'] as Map<String, dynamic>),
      cervicalDilationLog: (json['cervicalDilationLog'] as List<dynamic>?)
              ?.map((e) =>
                  CervicalDilationLog.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      medicalSurveillanceTableLog:
          (json['medicalSurveillanceTableLog'] as List<dynamic>?)
                  ?.map((e) => MedicalSurveillanceTableLog.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const [],
      presentationPositionVarietyLog:
          (json['presentationPositionVarietyLog'] as List<dynamic>?)
                  ?.map((e) => PresentationPositionVarietyLog.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const [],
      contractionFrequencyLog: (json['contractionFrequencyLog']
                  as List<dynamic>?)
              ?.map((e) =>
                  ContractionFrequencyLog.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      fetalHeartRateLog: (json['fetalHeartRateLog'] as List<dynamic>?)
              ?.map(
                  (e) => FetalHeartRateLog.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      childbirthNoteLog: json['childbirthNoteLog'] == null
          ? null
          : ChildbirthNoteLog.fromJson(
              json['childbirthNoteLog'] as Map<String, dynamic>),
      curves: json['curves'] == null
          ? null
          : Curves.fromJson(json['curves'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GlobalPartographLogImplToJson(
        _$GlobalPartographLogImpl instance) =>
    <String, dynamic>{
      'partographLog': instance.partographLog.toJson(),
      'cervicalDilationLog':
          instance.cervicalDilationLog.map((e) => e.toJson()).toList(),
      'medicalSurveillanceTableLog':
          instance.medicalSurveillanceTableLog.map((e) => e.toJson()).toList(),
      'presentationPositionVarietyLog': instance.presentationPositionVarietyLog
          .map((e) => e.toJson())
          .toList(),
      'contractionFrequencyLog':
          instance.contractionFrequencyLog.map((e) => e.toJson()).toList(),
      'fetalHeartRateLog':
          instance.fetalHeartRateLog.map((e) => e.toJson()).toList(),
      'childbirthNoteLog': instance.childbirthNoteLog?.toJson(),
      'curves': instance.curves?.toJson(),
    };

_$PartographLogImpl _$$PartographLogImplFromJson(Map<String, dynamic> json) =>
    _$PartographLogImpl(
      name: _stringFromJson(json['Name']),
      recordName: _stringFromJson(json['RecordName']),
      date: _dateTimeFromJson(json['Date']),
      observation: _stringFromJson(json['Observation']),
      workTime: _stringFromJson(json['WorkTime']),
    );

Map<String, dynamic> _$$PartographLogImplToJson(_$PartographLogImpl instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'RecordName': instance.recordName,
      'Date': _dateTimeToJson(instance.date),
      'Observation': instance.observation,
      'WorkTime': instance.workTime,
    };

_$CervicalDilationLogImpl _$$CervicalDilationLogImplFromJson(
        Map<String, dynamic> json) =>
    _$CervicalDilationLogImpl(
      value: _doubleFromJson(json['Value']),
      hour: _dateTimeFromJson(json['Hour']),
      remOrRam: json['RemOrRam'] as bool,
    );

Map<String, dynamic> _$$CervicalDilationLogImplToJson(
        _$CervicalDilationLogImpl instance) =>
    <String, dynamic>{
      'Value': instance.value,
      'Hour': _dateTimeToJson(instance.hour),
      'RemOrRam': instance.remOrRam,
    };

_$MedicalSurveillanceTableLogImpl _$$MedicalSurveillanceTableLogImplFromJson(
        Map<String, dynamic> json) =>
    _$MedicalSurveillanceTableLogImpl(
      maternalPosition: _stringFromJson(json['MaternalPosition']),
      arterialPressure: _stringFromJson(json['ArterialPressure']),
      maternalPulse: _stringFromJson(json['MaternalPulse']),
      fetalHeartRate: _stringFromJson(json['FetalHeartRate']),
      contractionsDuration: _stringFromJson(json['ContractionsDuration']),
      frequencyContractions: _stringFromJson(json['FrequencyContractions']),
      pain: _stringFromJson(json['Pain']),
      letter: _stringFromJson(json['Letter']),
      time: _dateTimeFromJson(json['Time']),
    );

Map<String, dynamic> _$$MedicalSurveillanceTableLogImplToJson(
        _$MedicalSurveillanceTableLogImpl instance) =>
    <String, dynamic>{
      'MaternalPosition': instance.maternalPosition,
      'ArterialPressure': instance.arterialPressure,
      'MaternalPulse': instance.maternalPulse,
      'FetalHeartRate': instance.fetalHeartRate,
      'ContractionsDuration': instance.contractionsDuration,
      'FrequencyContractions': instance.frequencyContractions,
      'Pain': instance.pain,
      'Letter': instance.letter,
      'Time': _dateTimeToJson(instance.time),
    };

_$PresentationPositionVarietyLogImpl
    _$$PresentationPositionVarietyLogImplFromJson(Map<String, dynamic> json) =>
        _$PresentationPositionVarietyLogImpl(
          hodgePlane: _intFromJson(json['HodgePlane']),
          position: _intFromJson(json['Position']),
          time: _dateTimeFromJson(json['Time']),
        );

Map<String, dynamic> _$$PresentationPositionVarietyLogImplToJson(
        _$PresentationPositionVarietyLogImpl instance) =>
    <String, dynamic>{
      'HodgePlane': instance.hodgePlane,
      'Position': instance.position,
      'Time': _dateTimeToJson(instance.time),
    };

_$ContractionFrequencyLogImpl _$$ContractionFrequencyLogImplFromJson(
        Map<String, dynamic> json) =>
    _$ContractionFrequencyLogImpl(
      partographId: _stringFromJson(json['PartographId']),
      value: _stringFromJson(json['Value']),
      time: _dateTimeFromJson(json['Time']),
    );

Map<String, dynamic> _$$ContractionFrequencyLogImplToJson(
        _$ContractionFrequencyLogImpl instance) =>
    <String, dynamic>{
      'PartographId': instance.partographId,
      'Value': instance.value,
      'Time': _dateTimeToJson(instance.time),
    };

_$FetalHeartRateLogImpl _$$FetalHeartRateLogImplFromJson(
        Map<String, dynamic> json) =>
    _$FetalHeartRateLogImpl(
      value: _stringFromJson(json['Value']),
      time: _dateTimeFromJson(json['Time']),
    );

Map<String, dynamic> _$$FetalHeartRateLogImplToJson(
        _$FetalHeartRateLogImpl instance) =>
    <String, dynamic>{
      'Value': instance.value,
      'Time': _dateTimeToJson(instance.time),
    };

_$ChildbirthNoteLogImpl _$$ChildbirthNoteLogImplFromJson(
        Map<String, dynamic> json) =>
    _$ChildbirthNoteLogImpl(
      description: _stringFromJson(json['Description']),
      hour: _stringFromJson(json['Hour']),
      sex: _stringFromJson(json['Sex']),
      apgar: _stringFromJson(json['Apgar']),
      temperature: _stringFromJson(json['Temperature']),
      caputto: _stringFromJson(json['Caputto']),
      circular: _stringFromJson(json['Circular']),
      lamniotico: _stringFromJson(json['Lamniotico']),
      miccion: _stringFromJson(json['Miccion']),
      meconio: _stringFromJson(json['Meconio']),
      pa: _stringFromJson(json['Pa']),
      expulsivo: _stringFromJson(json['Expulsivo']),
      placenta: _stringFromJson(json['Placenta']),
      alumbramiento: _stringFromJson(json['Alumbramiento']),
      huellaPlantar: _stringFromJson(json['HuellaPlantar']),
    );

Map<String, dynamic> _$$ChildbirthNoteLogImplToJson(
        _$ChildbirthNoteLogImpl instance) =>
    <String, dynamic>{
      'Description': instance.description,
      'Hour': instance.hour,
      'Sex': instance.sex,
      'Apgar': instance.apgar,
      'Temperature': instance.temperature,
      'Caputto': instance.caputto,
      'Circular': instance.circular,
      'Lamniotico': instance.lamniotico,
      'Miccion': instance.miccion,
      'Meconio': instance.meconio,
      'Pa': instance.pa,
      'Expulsivo': instance.expulsivo,
      'Placenta': instance.placenta,
      'Alumbramiento': instance.alumbramiento,
      'HuellaPlantar': instance.huellaPlantar,
    };

_$AlertCurveImpl _$$AlertCurveImplFromJson(Map<String, dynamic> json) =>
    _$AlertCurveImpl(
      cervicalDilation: _doubleFromJson(json['CervicalDilation']),
      time: _dateTimeFromJson(json['Time']),
    );

Map<String, dynamic> _$$AlertCurveImplToJson(_$AlertCurveImpl instance) =>
    <String, dynamic>{
      'CervicalDilation': instance.cervicalDilation,
      'Time': _dateTimeToJson(instance.time),
    };

_$CurvesImpl _$$CurvesImplFromJson(Map<String, dynamic> json) => _$CurvesImpl(
      alertCurve: (json['AlertCurve'] as List<dynamic>?)
          ?.map((e) => AlertCurve.fromJson(e as Map<String, dynamic>))
          .toList(),
      newAlertCurve: (json['newAlertCurve'] as List<dynamic>?)
          ?.map((e) => AlertCurve.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CurvesImplToJson(_$CurvesImpl instance) =>
    <String, dynamic>{
      'AlertCurve': instance.alertCurve?.map((e) => e.toJson()).toList(),
      'newAlertCurve': instance.newAlertCurve?.map((e) => e.toJson()).toList(),
    };
