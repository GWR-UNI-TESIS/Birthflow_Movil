// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partograph_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PartographEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographEventCopyWith<$Res> {
  factory $PartographEventCopyWith(
          PartographEvent value, $Res Function(PartographEvent) then) =
      _$PartographEventCopyWithImpl<$Res, PartographEvent>;
}

/// @nodoc
class _$PartographEventCopyWithImpl<$Res, $Val extends PartographEvent>
    implements $PartographEventCopyWith<$Res> {
  _$PartographEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$onFetchDataImplCopyWith<$Res> {
  factory _$$onFetchDataImplCopyWith(
          _$onFetchDataImpl value, $Res Function(_$onFetchDataImpl) then) =
      __$$onFetchDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String partographId});
}

/// @nodoc
class __$$onFetchDataImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res, _$onFetchDataImpl>
    implements _$$onFetchDataImplCopyWith<$Res> {
  __$$onFetchDataImplCopyWithImpl(
      _$onFetchDataImpl _value, $Res Function(_$onFetchDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
  }) {
    return _then(_$onFetchDataImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onFetchDataImpl implements onFetchData {
  const _$onFetchDataImpl({required this.partographId});

  @override
  final String partographId;

  @override
  String toString() {
    return 'PartographEvent.onFetchData(partographId: $partographId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onFetchDataImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partographId);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$onFetchDataImplCopyWith<_$onFetchDataImpl> get copyWith =>
      __$$onFetchDataImplCopyWithImpl<_$onFetchDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) {
    return onFetchData(partographId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) {
    return onFetchData?.call(partographId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (onFetchData != null) {
      return onFetchData(partographId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) {
    return onFetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) {
    return onFetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (onFetchData != null) {
      return onFetchData(this);
    }
    return orElse();
  }
}

abstract class onFetchData implements PartographEvent {
  const factory onFetchData({required final String partographId}) =
      _$onFetchDataImpl;

  String get partographId;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$onFetchDataImplCopyWith<_$onFetchDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ModifyingPartographImplCopyWith<$Res> {
  factory _$$ModifyingPartographImplCopyWith(_$ModifyingPartographImpl value,
          $Res Function(_$ModifyingPartographImpl) then) =
      __$$ModifyingPartographImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String partographId,
      String name,
      String recordName,
      DateTime date,
      String observation,
      String workTime});
}

/// @nodoc
class __$$ModifyingPartographImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res, _$ModifyingPartographImpl>
    implements _$$ModifyingPartographImplCopyWith<$Res> {
  __$$ModifyingPartographImplCopyWithImpl(_$ModifyingPartographImpl _value,
      $Res Function(_$ModifyingPartographImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? name = null,
    Object? recordName = null,
    Object? date = null,
    Object? observation = null,
    Object? workTime = null,
  }) {
    return _then(_$ModifyingPartographImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      recordName: null == recordName
          ? _value.recordName
          : recordName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      observation: null == observation
          ? _value.observation
          : observation // ignore: cast_nullable_to_non_nullable
              as String,
      workTime: null == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ModifyingPartographImpl implements ModifyingPartograph {
  const _$ModifyingPartographImpl(
      {required this.partographId,
      required this.name,
      required this.recordName,
      required this.date,
      required this.observation,
      required this.workTime});

  @override
  final String partographId;
  @override
  final String name;
  @override
  final String recordName;
  @override
  final DateTime date;
  @override
  final String observation;
  @override
  final String workTime;

  @override
  String toString() {
    return 'PartographEvent.modifyingPartograph(partographId: $partographId, name: $name, recordName: $recordName, date: $date, observation: $observation, workTime: $workTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModifyingPartographImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.recordName, recordName) ||
                other.recordName == recordName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.observation, observation) ||
                other.observation == observation) &&
            (identical(other.workTime, workTime) ||
                other.workTime == workTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, partographId, name, recordName, date, observation, workTime);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModifyingPartographImplCopyWith<_$ModifyingPartographImpl> get copyWith =>
      __$$ModifyingPartographImplCopyWithImpl<_$ModifyingPartographImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) {
    return modifyingPartograph(
        partographId, name, recordName, date, observation, workTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) {
    return modifyingPartograph?.call(
        partographId, name, recordName, date, observation, workTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (modifyingPartograph != null) {
      return modifyingPartograph(
          partographId, name, recordName, date, observation, workTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) {
    return modifyingPartograph(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) {
    return modifyingPartograph?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (modifyingPartograph != null) {
      return modifyingPartograph(this);
    }
    return orElse();
  }
}

abstract class ModifyingPartograph implements PartographEvent {
  const factory ModifyingPartograph(
      {required final String partographId,
      required final String name,
      required final String recordName,
      required final DateTime date,
      required final String observation,
      required final String workTime}) = _$ModifyingPartographImpl;

  String get partographId;
  String get name;
  String get recordName;
  DateTime get date;
  String get observation;
  String get workTime;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModifyingPartographImplCopyWith<_$ModifyingPartographImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnDeletePartographImplCopyWith<$Res> {
  factory _$$OnDeletePartographImplCopyWith(_$OnDeletePartographImpl value,
          $Res Function(_$OnDeletePartographImpl) then) =
      __$$OnDeletePartographImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String partographId});
}

/// @nodoc
class __$$OnDeletePartographImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res, _$OnDeletePartographImpl>
    implements _$$OnDeletePartographImplCopyWith<$Res> {
  __$$OnDeletePartographImplCopyWithImpl(_$OnDeletePartographImpl _value,
      $Res Function(_$OnDeletePartographImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
  }) {
    return _then(_$OnDeletePartographImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnDeletePartographImpl implements OnDeletePartograph {
  const _$OnDeletePartographImpl({required this.partographId});

  @override
  final String partographId;

  @override
  String toString() {
    return 'PartographEvent.onDeletePartograph(partographId: $partographId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDeletePartographImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partographId);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDeletePartographImplCopyWith<_$OnDeletePartographImpl> get copyWith =>
      __$$OnDeletePartographImplCopyWithImpl<_$OnDeletePartographImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) {
    return onDeletePartograph(partographId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) {
    return onDeletePartograph?.call(partographId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (onDeletePartograph != null) {
      return onDeletePartograph(partographId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) {
    return onDeletePartograph(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) {
    return onDeletePartograph?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (onDeletePartograph != null) {
      return onDeletePartograph(this);
    }
    return orElse();
  }
}

abstract class OnDeletePartograph implements PartographEvent {
  const factory OnDeletePartograph({required final String partographId}) =
      _$OnDeletePartographImpl;

  String get partographId;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnDeletePartographImplCopyWith<_$OnDeletePartographImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveCervicalDilationImplCopyWith<$Res> {
  factory _$$SaveCervicalDilationImplCopyWith(_$SaveCervicalDilationImpl value,
          $Res Function(_$SaveCervicalDilationImpl) then) =
      __$$SaveCervicalDilationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String partographId, double value, DateTime hour, bool remOrRam});
}

/// @nodoc
class __$$SaveCervicalDilationImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res, _$SaveCervicalDilationImpl>
    implements _$$SaveCervicalDilationImplCopyWith<$Res> {
  __$$SaveCervicalDilationImplCopyWithImpl(_$SaveCervicalDilationImpl _value,
      $Res Function(_$SaveCervicalDilationImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? value = null,
    Object? hour = null,
    Object? remOrRam = null,
  }) {
    return _then(_$SaveCervicalDilationImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remOrRam: null == remOrRam
          ? _value.remOrRam
          : remOrRam // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SaveCervicalDilationImpl implements SaveCervicalDilation {
  const _$SaveCervicalDilationImpl(
      {required this.partographId,
      required this.value,
      required this.hour,
      required this.remOrRam});

  @override
  final String partographId;
  @override
  final double value;
  @override
  final DateTime hour;
  @override
  final bool remOrRam;

  @override
  String toString() {
    return 'PartographEvent.saveCervicalDilation(partographId: $partographId, value: $value, hour: $hour, remOrRam: $remOrRam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCervicalDilationImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.remOrRam, remOrRam) ||
                other.remOrRam == remOrRam));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, partographId, value, hour, remOrRam);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCervicalDilationImplCopyWith<_$SaveCervicalDilationImpl>
      get copyWith =>
          __$$SaveCervicalDilationImplCopyWithImpl<_$SaveCervicalDilationImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) {
    return saveCervicalDilation(partographId, value, hour, remOrRam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) {
    return saveCervicalDilation?.call(partographId, value, hour, remOrRam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (saveCervicalDilation != null) {
      return saveCervicalDilation(partographId, value, hour, remOrRam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) {
    return saveCervicalDilation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) {
    return saveCervicalDilation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (saveCervicalDilation != null) {
      return saveCervicalDilation(this);
    }
    return orElse();
  }
}

abstract class SaveCervicalDilation implements PartographEvent {
  const factory SaveCervicalDilation(
      {required final String partographId,
      required final double value,
      required final DateTime hour,
      required final bool remOrRam}) = _$SaveCervicalDilationImpl;

  String get partographId;
  double get value;
  DateTime get hour;
  bool get remOrRam;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveCervicalDilationImplCopyWith<_$SaveCervicalDilationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCervicalDilationImplCopyWith<$Res> {
  factory _$$UpdateCervicalDilationImplCopyWith(
          _$UpdateCervicalDilationImpl value,
          $Res Function(_$UpdateCervicalDilationImpl) then) =
      __$$UpdateCervicalDilationImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String partographId,
      double value,
      DateTime hour,
      bool remOrRam});
}

/// @nodoc
class __$$UpdateCervicalDilationImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res, _$UpdateCervicalDilationImpl>
    implements _$$UpdateCervicalDilationImplCopyWith<$Res> {
  __$$UpdateCervicalDilationImplCopyWithImpl(
      _$UpdateCervicalDilationImpl _value,
      $Res Function(_$UpdateCervicalDilationImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographId = null,
    Object? value = null,
    Object? hour = null,
    Object? remOrRam = null,
  }) {
    return _then(_$UpdateCervicalDilationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remOrRam: null == remOrRam
          ? _value.remOrRam
          : remOrRam // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateCervicalDilationImpl implements UpdateCervicalDilation {
  const _$UpdateCervicalDilationImpl(
      {required this.id,
      required this.partographId,
      required this.value,
      required this.hour,
      required this.remOrRam});

  @override
  final int id;
  @override
  final String partographId;
  @override
  final double value;
  @override
  final DateTime hour;
  @override
  final bool remOrRam;

  @override
  String toString() {
    return 'PartographEvent.updateCervicalDilation(id: $id, partographId: $partographId, value: $value, hour: $hour, remOrRam: $remOrRam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCervicalDilationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.remOrRam, remOrRam) ||
                other.remOrRam == remOrRam));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, partographId, value, hour, remOrRam);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCervicalDilationImplCopyWith<_$UpdateCervicalDilationImpl>
      get copyWith => __$$UpdateCervicalDilationImplCopyWithImpl<
          _$UpdateCervicalDilationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) {
    return updateCervicalDilation(id, partographId, value, hour, remOrRam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) {
    return updateCervicalDilation?.call(
        id, partographId, value, hour, remOrRam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (updateCervicalDilation != null) {
      return updateCervicalDilation(id, partographId, value, hour, remOrRam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) {
    return updateCervicalDilation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) {
    return updateCervicalDilation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (updateCervicalDilation != null) {
      return updateCervicalDilation(this);
    }
    return orElse();
  }
}

abstract class UpdateCervicalDilation implements PartographEvent {
  const factory UpdateCervicalDilation(
      {required final int id,
      required final String partographId,
      required final double value,
      required final DateTime hour,
      required final bool remOrRam}) = _$UpdateCervicalDilationImpl;

  int get id;
  String get partographId;
  double get value;
  DateTime get hour;
  bool get remOrRam;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCervicalDilationImplCopyWith<_$UpdateCervicalDilationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCervicalDilationImplCopyWith<$Res> {
  factory _$$DeleteCervicalDilationImplCopyWith(
          _$DeleteCervicalDilationImpl value,
          $Res Function(_$DeleteCervicalDilationImpl) then) =
      __$$DeleteCervicalDilationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteCervicalDilationImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res, _$DeleteCervicalDilationImpl>
    implements _$$DeleteCervicalDilationImplCopyWith<$Res> {
  __$$DeleteCervicalDilationImplCopyWithImpl(
      _$DeleteCervicalDilationImpl _value,
      $Res Function(_$DeleteCervicalDilationImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteCervicalDilationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteCervicalDilationImpl implements DeleteCervicalDilation {
  const _$DeleteCervicalDilationImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'PartographEvent.deleteCervicalDilation(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCervicalDilationImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCervicalDilationImplCopyWith<_$DeleteCervicalDilationImpl>
      get copyWith => __$$DeleteCervicalDilationImplCopyWithImpl<
          _$DeleteCervicalDilationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) {
    return deleteCervicalDilation(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) {
    return deleteCervicalDilation?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (deleteCervicalDilation != null) {
      return deleteCervicalDilation(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) {
    return deleteCervicalDilation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) {
    return deleteCervicalDilation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (deleteCervicalDilation != null) {
      return deleteCervicalDilation(this);
    }
    return orElse();
  }
}

abstract class DeleteCervicalDilation implements PartographEvent {
  const factory DeleteCervicalDilation({required final int id}) =
      _$DeleteCervicalDilationImpl;

  int get id;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCervicalDilationImplCopyWith<_$DeleteCervicalDilationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateMedicalSurveillanceImplCopyWith<$Res> {
  factory _$$CreateMedicalSurveillanceImplCopyWith(
          _$CreateMedicalSurveillanceImpl value,
          $Res Function(_$CreateMedicalSurveillanceImpl) then) =
      __$$CreateMedicalSurveillanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String partographId,
      String letter,
      String maternalPosition,
      String arterialPressure,
      String maternalPulse,
      String fetalHeartRate,
      String contractionsDuration,
      String frequencyContractions,
      String pain,
      DateTime time});
}

/// @nodoc
class __$$CreateMedicalSurveillanceImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res, _$CreateMedicalSurveillanceImpl>
    implements _$$CreateMedicalSurveillanceImplCopyWith<$Res> {
  __$$CreateMedicalSurveillanceImplCopyWithImpl(
      _$CreateMedicalSurveillanceImpl _value,
      $Res Function(_$CreateMedicalSurveillanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? letter = null,
    Object? maternalPosition = null,
    Object? arterialPressure = null,
    Object? maternalPulse = null,
    Object? fetalHeartRate = null,
    Object? contractionsDuration = null,
    Object? frequencyContractions = null,
    Object? pain = null,
    Object? time = null,
  }) {
    return _then(_$CreateMedicalSurveillanceImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      letter: null == letter
          ? _value.letter
          : letter // ignore: cast_nullable_to_non_nullable
              as String,
      maternalPosition: null == maternalPosition
          ? _value.maternalPosition
          : maternalPosition // ignore: cast_nullable_to_non_nullable
              as String,
      arterialPressure: null == arterialPressure
          ? _value.arterialPressure
          : arterialPressure // ignore: cast_nullable_to_non_nullable
              as String,
      maternalPulse: null == maternalPulse
          ? _value.maternalPulse
          : maternalPulse // ignore: cast_nullable_to_non_nullable
              as String,
      fetalHeartRate: null == fetalHeartRate
          ? _value.fetalHeartRate
          : fetalHeartRate // ignore: cast_nullable_to_non_nullable
              as String,
      contractionsDuration: null == contractionsDuration
          ? _value.contractionsDuration
          : contractionsDuration // ignore: cast_nullable_to_non_nullable
              as String,
      frequencyContractions: null == frequencyContractions
          ? _value.frequencyContractions
          : frequencyContractions // ignore: cast_nullable_to_non_nullable
              as String,
      pain: null == pain
          ? _value.pain
          : pain // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CreateMedicalSurveillanceImpl implements CreateMedicalSurveillance {
  const _$CreateMedicalSurveillanceImpl(
      {required this.partographId,
      required this.letter,
      required this.maternalPosition,
      required this.arterialPressure,
      required this.maternalPulse,
      required this.fetalHeartRate,
      required this.contractionsDuration,
      required this.frequencyContractions,
      required this.pain,
      required this.time});

  @override
  final String partographId;
  @override
  final String letter;
  @override
  final String maternalPosition;
  @override
  final String arterialPressure;
  @override
  final String maternalPulse;
  @override
  final String fetalHeartRate;
  @override
  final String contractionsDuration;
  @override
  final String frequencyContractions;
  @override
  final String pain;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'PartographEvent.createMedicalSurveillance(partographId: $partographId, letter: $letter, maternalPosition: $maternalPosition, arterialPressure: $arterialPressure, maternalPulse: $maternalPulse, fetalHeartRate: $fetalHeartRate, contractionsDuration: $contractionsDuration, frequencyContractions: $frequencyContractions, pain: $pain, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMedicalSurveillanceImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.letter, letter) || other.letter == letter) &&
            (identical(other.maternalPosition, maternalPosition) ||
                other.maternalPosition == maternalPosition) &&
            (identical(other.arterialPressure, arterialPressure) ||
                other.arterialPressure == arterialPressure) &&
            (identical(other.maternalPulse, maternalPulse) ||
                other.maternalPulse == maternalPulse) &&
            (identical(other.fetalHeartRate, fetalHeartRate) ||
                other.fetalHeartRate == fetalHeartRate) &&
            (identical(other.contractionsDuration, contractionsDuration) ||
                other.contractionsDuration == contractionsDuration) &&
            (identical(other.frequencyContractions, frequencyContractions) ||
                other.frequencyContractions == frequencyContractions) &&
            (identical(other.pain, pain) || other.pain == pain) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      partographId,
      letter,
      maternalPosition,
      arterialPressure,
      maternalPulse,
      fetalHeartRate,
      contractionsDuration,
      frequencyContractions,
      pain,
      time);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMedicalSurveillanceImplCopyWith<_$CreateMedicalSurveillanceImpl>
      get copyWith => __$$CreateMedicalSurveillanceImplCopyWithImpl<
          _$CreateMedicalSurveillanceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) {
    return createMedicalSurveillance(
        partographId,
        letter,
        maternalPosition,
        arterialPressure,
        maternalPulse,
        fetalHeartRate,
        contractionsDuration,
        frequencyContractions,
        pain,
        time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) {
    return createMedicalSurveillance?.call(
        partographId,
        letter,
        maternalPosition,
        arterialPressure,
        maternalPulse,
        fetalHeartRate,
        contractionsDuration,
        frequencyContractions,
        pain,
        time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (createMedicalSurveillance != null) {
      return createMedicalSurveillance(
          partographId,
          letter,
          maternalPosition,
          arterialPressure,
          maternalPulse,
          fetalHeartRate,
          contractionsDuration,
          frequencyContractions,
          pain,
          time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) {
    return createMedicalSurveillance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) {
    return createMedicalSurveillance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (createMedicalSurveillance != null) {
      return createMedicalSurveillance(this);
    }
    return orElse();
  }
}

abstract class CreateMedicalSurveillance implements PartographEvent {
  const factory CreateMedicalSurveillance(
      {required final String partographId,
      required final String letter,
      required final String maternalPosition,
      required final String arterialPressure,
      required final String maternalPulse,
      required final String fetalHeartRate,
      required final String contractionsDuration,
      required final String frequencyContractions,
      required final String pain,
      required final DateTime time}) = _$CreateMedicalSurveillanceImpl;

  String get partographId;
  String get letter;
  String get maternalPosition;
  String get arterialPressure;
  String get maternalPulse;
  String get fetalHeartRate;
  String get contractionsDuration;
  String get frequencyContractions;
  String get pain;
  DateTime get time;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateMedicalSurveillanceImplCopyWith<_$CreateMedicalSurveillanceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateMedicalSurveillanceImplCopyWith<$Res> {
  factory _$$UpdateMedicalSurveillanceImplCopyWith(
          _$UpdateMedicalSurveillanceImpl value,
          $Res Function(_$UpdateMedicalSurveillanceImpl) then) =
      __$$UpdateMedicalSurveillanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String partographId,
      String letter,
      String maternalPosition,
      String arterialPressure,
      String maternalPulse,
      String fetalHeartRate,
      String contractionsDuration,
      String frequencyContractions,
      String pain,
      DateTime time});
}

/// @nodoc
class __$$UpdateMedicalSurveillanceImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res, _$UpdateMedicalSurveillanceImpl>
    implements _$$UpdateMedicalSurveillanceImplCopyWith<$Res> {
  __$$UpdateMedicalSurveillanceImplCopyWithImpl(
      _$UpdateMedicalSurveillanceImpl _value,
      $Res Function(_$UpdateMedicalSurveillanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographId = null,
    Object? letter = null,
    Object? maternalPosition = null,
    Object? arterialPressure = null,
    Object? maternalPulse = null,
    Object? fetalHeartRate = null,
    Object? contractionsDuration = null,
    Object? frequencyContractions = null,
    Object? pain = null,
    Object? time = null,
  }) {
    return _then(_$UpdateMedicalSurveillanceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      letter: null == letter
          ? _value.letter
          : letter // ignore: cast_nullable_to_non_nullable
              as String,
      maternalPosition: null == maternalPosition
          ? _value.maternalPosition
          : maternalPosition // ignore: cast_nullable_to_non_nullable
              as String,
      arterialPressure: null == arterialPressure
          ? _value.arterialPressure
          : arterialPressure // ignore: cast_nullable_to_non_nullable
              as String,
      maternalPulse: null == maternalPulse
          ? _value.maternalPulse
          : maternalPulse // ignore: cast_nullable_to_non_nullable
              as String,
      fetalHeartRate: null == fetalHeartRate
          ? _value.fetalHeartRate
          : fetalHeartRate // ignore: cast_nullable_to_non_nullable
              as String,
      contractionsDuration: null == contractionsDuration
          ? _value.contractionsDuration
          : contractionsDuration // ignore: cast_nullable_to_non_nullable
              as String,
      frequencyContractions: null == frequencyContractions
          ? _value.frequencyContractions
          : frequencyContractions // ignore: cast_nullable_to_non_nullable
              as String,
      pain: null == pain
          ? _value.pain
          : pain // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateMedicalSurveillanceImpl implements UpdateMedicalSurveillance {
  const _$UpdateMedicalSurveillanceImpl(
      {required this.id,
      required this.partographId,
      required this.letter,
      required this.maternalPosition,
      required this.arterialPressure,
      required this.maternalPulse,
      required this.fetalHeartRate,
      required this.contractionsDuration,
      required this.frequencyContractions,
      required this.pain,
      required this.time});

  @override
  final int id;
  @override
  final String partographId;
  @override
  final String letter;
  @override
  final String maternalPosition;
  @override
  final String arterialPressure;
  @override
  final String maternalPulse;
  @override
  final String fetalHeartRate;
  @override
  final String contractionsDuration;
  @override
  final String frequencyContractions;
  @override
  final String pain;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'PartographEvent.updateMedicalSurveillance(id: $id, partographId: $partographId, letter: $letter, maternalPosition: $maternalPosition, arterialPressure: $arterialPressure, maternalPulse: $maternalPulse, fetalHeartRate: $fetalHeartRate, contractionsDuration: $contractionsDuration, frequencyContractions: $frequencyContractions, pain: $pain, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMedicalSurveillanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.letter, letter) || other.letter == letter) &&
            (identical(other.maternalPosition, maternalPosition) ||
                other.maternalPosition == maternalPosition) &&
            (identical(other.arterialPressure, arterialPressure) ||
                other.arterialPressure == arterialPressure) &&
            (identical(other.maternalPulse, maternalPulse) ||
                other.maternalPulse == maternalPulse) &&
            (identical(other.fetalHeartRate, fetalHeartRate) ||
                other.fetalHeartRate == fetalHeartRate) &&
            (identical(other.contractionsDuration, contractionsDuration) ||
                other.contractionsDuration == contractionsDuration) &&
            (identical(other.frequencyContractions, frequencyContractions) ||
                other.frequencyContractions == frequencyContractions) &&
            (identical(other.pain, pain) || other.pain == pain) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      partographId,
      letter,
      maternalPosition,
      arterialPressure,
      maternalPulse,
      fetalHeartRate,
      contractionsDuration,
      frequencyContractions,
      pain,
      time);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMedicalSurveillanceImplCopyWith<_$UpdateMedicalSurveillanceImpl>
      get copyWith => __$$UpdateMedicalSurveillanceImplCopyWithImpl<
          _$UpdateMedicalSurveillanceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) {
    return updateMedicalSurveillance(
        id,
        partographId,
        letter,
        maternalPosition,
        arterialPressure,
        maternalPulse,
        fetalHeartRate,
        contractionsDuration,
        frequencyContractions,
        pain,
        time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) {
    return updateMedicalSurveillance?.call(
        id,
        partographId,
        letter,
        maternalPosition,
        arterialPressure,
        maternalPulse,
        fetalHeartRate,
        contractionsDuration,
        frequencyContractions,
        pain,
        time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (updateMedicalSurveillance != null) {
      return updateMedicalSurveillance(
          id,
          partographId,
          letter,
          maternalPosition,
          arterialPressure,
          maternalPulse,
          fetalHeartRate,
          contractionsDuration,
          frequencyContractions,
          pain,
          time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) {
    return updateMedicalSurveillance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) {
    return updateMedicalSurveillance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (updateMedicalSurveillance != null) {
      return updateMedicalSurveillance(this);
    }
    return orElse();
  }
}

abstract class UpdateMedicalSurveillance implements PartographEvent {
  const factory UpdateMedicalSurveillance(
      {required final int id,
      required final String partographId,
      required final String letter,
      required final String maternalPosition,
      required final String arterialPressure,
      required final String maternalPulse,
      required final String fetalHeartRate,
      required final String contractionsDuration,
      required final String frequencyContractions,
      required final String pain,
      required final DateTime time}) = _$UpdateMedicalSurveillanceImpl;

  int get id;
  String get partographId;
  String get letter;
  String get maternalPosition;
  String get arterialPressure;
  String get maternalPulse;
  String get fetalHeartRate;
  String get contractionsDuration;
  String get frequencyContractions;
  String get pain;
  DateTime get time;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMedicalSurveillanceImplCopyWith<_$UpdateMedicalSurveillanceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatePresentationPositionVarietyImplCopyWith<$Res> {
  factory _$$CreatePresentationPositionVarietyImplCopyWith(
          _$CreatePresentationPositionVarietyImpl value,
          $Res Function(_$CreatePresentationPositionVarietyImpl) then) =
      __$$CreatePresentationPositionVarietyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String partographId, int hodgePlane, int position, DateTime time});
}

/// @nodoc
class __$$CreatePresentationPositionVarietyImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res,
        _$CreatePresentationPositionVarietyImpl>
    implements _$$CreatePresentationPositionVarietyImplCopyWith<$Res> {
  __$$CreatePresentationPositionVarietyImplCopyWithImpl(
      _$CreatePresentationPositionVarietyImpl _value,
      $Res Function(_$CreatePresentationPositionVarietyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? hodgePlane = null,
    Object? position = null,
    Object? time = null,
  }) {
    return _then(_$CreatePresentationPositionVarietyImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      hodgePlane: null == hodgePlane
          ? _value.hodgePlane
          : hodgePlane // ignore: cast_nullable_to_non_nullable
              as int,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CreatePresentationPositionVarietyImpl
    implements CreatePresentationPositionVariety {
  const _$CreatePresentationPositionVarietyImpl(
      {required this.partographId,
      required this.hodgePlane,
      required this.position,
      required this.time});

  @override
  final String partographId;
  @override
  final int hodgePlane;
  @override
  final int position;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'PartographEvent.createPresentationPositionVariety(partographId: $partographId, hodgePlane: $hodgePlane, position: $position, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePresentationPositionVarietyImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.hodgePlane, hodgePlane) ||
                other.hodgePlane == hodgePlane) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, partographId, hodgePlane, position, time);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePresentationPositionVarietyImplCopyWith<
          _$CreatePresentationPositionVarietyImpl>
      get copyWith => __$$CreatePresentationPositionVarietyImplCopyWithImpl<
          _$CreatePresentationPositionVarietyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) {
    return createPresentationPositionVariety(
        partographId, hodgePlane, position, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) {
    return createPresentationPositionVariety?.call(
        partographId, hodgePlane, position, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (createPresentationPositionVariety != null) {
      return createPresentationPositionVariety(
          partographId, hodgePlane, position, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) {
    return createPresentationPositionVariety(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) {
    return createPresentationPositionVariety?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (createPresentationPositionVariety != null) {
      return createPresentationPositionVariety(this);
    }
    return orElse();
  }
}

abstract class CreatePresentationPositionVariety implements PartographEvent {
  const factory CreatePresentationPositionVariety(
      {required final String partographId,
      required final int hodgePlane,
      required final int position,
      required final DateTime time}) = _$CreatePresentationPositionVarietyImpl;

  String get partographId;
  int get hodgePlane;
  int get position;
  DateTime get time;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePresentationPositionVarietyImplCopyWith<
          _$CreatePresentationPositionVarietyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePresentationPositionVarietyImplCopyWith<$Res> {
  factory _$$UpdatePresentationPositionVarietyImplCopyWith(
          _$UpdatePresentationPositionVarietyImpl value,
          $Res Function(_$UpdatePresentationPositionVarietyImpl) then) =
      __$$UpdatePresentationPositionVarietyImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String partographId,
      int hodgePlane,
      int position,
      DateTime time});
}

/// @nodoc
class __$$UpdatePresentationPositionVarietyImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res,
        _$UpdatePresentationPositionVarietyImpl>
    implements _$$UpdatePresentationPositionVarietyImplCopyWith<$Res> {
  __$$UpdatePresentationPositionVarietyImplCopyWithImpl(
      _$UpdatePresentationPositionVarietyImpl _value,
      $Res Function(_$UpdatePresentationPositionVarietyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographId = null,
    Object? hodgePlane = null,
    Object? position = null,
    Object? time = null,
  }) {
    return _then(_$UpdatePresentationPositionVarietyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      hodgePlane: null == hodgePlane
          ? _value.hodgePlane
          : hodgePlane // ignore: cast_nullable_to_non_nullable
              as int,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdatePresentationPositionVarietyImpl
    implements UpdatePresentationPositionVariety {
  const _$UpdatePresentationPositionVarietyImpl(
      {required this.id,
      required this.partographId,
      required this.hodgePlane,
      required this.position,
      required this.time});

  @override
  final int id;
  @override
  final String partographId;
  @override
  final int hodgePlane;
  @override
  final int position;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'PartographEvent.updatePresentationPositionVariety(id: $id, partographId: $partographId, hodgePlane: $hodgePlane, position: $position, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePresentationPositionVarietyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.hodgePlane, hodgePlane) ||
                other.hodgePlane == hodgePlane) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, partographId, hodgePlane, position, time);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePresentationPositionVarietyImplCopyWith<
          _$UpdatePresentationPositionVarietyImpl>
      get copyWith => __$$UpdatePresentationPositionVarietyImplCopyWithImpl<
          _$UpdatePresentationPositionVarietyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) {
    return updatePresentationPositionVariety(
        id, partographId, hodgePlane, position, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) {
    return updatePresentationPositionVariety?.call(
        id, partographId, hodgePlane, position, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (updatePresentationPositionVariety != null) {
      return updatePresentationPositionVariety(
          id, partographId, hodgePlane, position, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) {
    return updatePresentationPositionVariety(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) {
    return updatePresentationPositionVariety?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (updatePresentationPositionVariety != null) {
      return updatePresentationPositionVariety(this);
    }
    return orElse();
  }
}

abstract class UpdatePresentationPositionVariety implements PartographEvent {
  const factory UpdatePresentationPositionVariety(
      {required final int id,
      required final String partographId,
      required final int hodgePlane,
      required final int position,
      required final DateTime time}) = _$UpdatePresentationPositionVarietyImpl;

  int get id;
  String get partographId;
  int get hodgePlane;
  int get position;
  DateTime get time;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePresentationPositionVarietyImplCopyWith<
          _$UpdatePresentationPositionVarietyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateFetalHeartRateImplCopyWith<$Res> {
  factory _$$CreateFetalHeartRateImplCopyWith(_$CreateFetalHeartRateImpl value,
          $Res Function(_$CreateFetalHeartRateImpl) then) =
      __$$CreateFetalHeartRateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String partographId, String value, DateTime time});
}

/// @nodoc
class __$$CreateFetalHeartRateImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res, _$CreateFetalHeartRateImpl>
    implements _$$CreateFetalHeartRateImplCopyWith<$Res> {
  __$$CreateFetalHeartRateImplCopyWithImpl(_$CreateFetalHeartRateImpl _value,
      $Res Function(_$CreateFetalHeartRateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? value = null,
    Object? time = null,
  }) {
    return _then(_$CreateFetalHeartRateImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CreateFetalHeartRateImpl implements CreateFetalHeartRate {
  const _$CreateFetalHeartRateImpl(
      {required this.partographId, required this.value, required this.time});

  @override
  final String partographId;
  @override
  final String value;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'PartographEvent.createFetalHeartRate(partographId: $partographId, value: $value, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFetalHeartRateImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partographId, value, time);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFetalHeartRateImplCopyWith<_$CreateFetalHeartRateImpl>
      get copyWith =>
          __$$CreateFetalHeartRateImplCopyWithImpl<_$CreateFetalHeartRateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) {
    return createFetalHeartRate(partographId, value, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) {
    return createFetalHeartRate?.call(partographId, value, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (createFetalHeartRate != null) {
      return createFetalHeartRate(partographId, value, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) {
    return createFetalHeartRate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) {
    return createFetalHeartRate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (createFetalHeartRate != null) {
      return createFetalHeartRate(this);
    }
    return orElse();
  }
}

abstract class CreateFetalHeartRate implements PartographEvent {
  const factory CreateFetalHeartRate(
      {required final String partographId,
      required final String value,
      required final DateTime time}) = _$CreateFetalHeartRateImpl;

  String get partographId;
  String get value;
  DateTime get time;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFetalHeartRateImplCopyWith<_$CreateFetalHeartRateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateFetalHeartRateImplCopyWith<$Res> {
  factory _$$UpdateFetalHeartRateImplCopyWith(_$UpdateFetalHeartRateImpl value,
          $Res Function(_$UpdateFetalHeartRateImpl) then) =
      __$$UpdateFetalHeartRateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String partographId, String value, DateTime time});
}

/// @nodoc
class __$$UpdateFetalHeartRateImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res, _$UpdateFetalHeartRateImpl>
    implements _$$UpdateFetalHeartRateImplCopyWith<$Res> {
  __$$UpdateFetalHeartRateImplCopyWithImpl(_$UpdateFetalHeartRateImpl _value,
      $Res Function(_$UpdateFetalHeartRateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographId = null,
    Object? value = null,
    Object? time = null,
  }) {
    return _then(_$UpdateFetalHeartRateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateFetalHeartRateImpl implements UpdateFetalHeartRate {
  const _$UpdateFetalHeartRateImpl(
      {required this.id,
      required this.partographId,
      required this.value,
      required this.time});

  @override
  final int id;
  @override
  final String partographId;
  @override
  final String value;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'PartographEvent.updateFetalHeartRate(id: $id, partographId: $partographId, value: $value, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFetalHeartRateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, partographId, value, time);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFetalHeartRateImplCopyWith<_$UpdateFetalHeartRateImpl>
      get copyWith =>
          __$$UpdateFetalHeartRateImplCopyWithImpl<_$UpdateFetalHeartRateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) {
    return updateFetalHeartRate(id, partographId, value, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) {
    return updateFetalHeartRate?.call(id, partographId, value, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (updateFetalHeartRate != null) {
      return updateFetalHeartRate(id, partographId, value, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) {
    return updateFetalHeartRate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) {
    return updateFetalHeartRate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (updateFetalHeartRate != null) {
      return updateFetalHeartRate(this);
    }
    return orElse();
  }
}

abstract class UpdateFetalHeartRate implements PartographEvent {
  const factory UpdateFetalHeartRate(
      {required final int id,
      required final String partographId,
      required final String value,
      required final DateTime time}) = _$UpdateFetalHeartRateImpl;

  int get id;
  String get partographId;
  String get value;
  DateTime get time;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFetalHeartRateImplCopyWith<_$UpdateFetalHeartRateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateContractionFrequencyImplCopyWith<$Res> {
  factory _$$CreateContractionFrequencyImplCopyWith(
          _$CreateContractionFrequencyImpl value,
          $Res Function(_$CreateContractionFrequencyImpl) then) =
      __$$CreateContractionFrequencyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String partographId, String value, DateTime time});
}

/// @nodoc
class __$$CreateContractionFrequencyImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res,
        _$CreateContractionFrequencyImpl>
    implements _$$CreateContractionFrequencyImplCopyWith<$Res> {
  __$$CreateContractionFrequencyImplCopyWithImpl(
      _$CreateContractionFrequencyImpl _value,
      $Res Function(_$CreateContractionFrequencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? value = null,
    Object? time = null,
  }) {
    return _then(_$CreateContractionFrequencyImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CreateContractionFrequencyImpl implements CreateContractionFrequency {
  const _$CreateContractionFrequencyImpl(
      {required this.partographId, required this.value, required this.time});

  @override
  final String partographId;
  @override
  final String value;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'PartographEvent.createContractionFrequency(partographId: $partographId, value: $value, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateContractionFrequencyImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, partographId, value, time);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateContractionFrequencyImplCopyWith<_$CreateContractionFrequencyImpl>
      get copyWith => __$$CreateContractionFrequencyImplCopyWithImpl<
          _$CreateContractionFrequencyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) {
    return createContractionFrequency(partographId, value, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) {
    return createContractionFrequency?.call(partographId, value, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (createContractionFrequency != null) {
      return createContractionFrequency(partographId, value, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) {
    return createContractionFrequency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) {
    return createContractionFrequency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (createContractionFrequency != null) {
      return createContractionFrequency(this);
    }
    return orElse();
  }
}

abstract class CreateContractionFrequency implements PartographEvent {
  const factory CreateContractionFrequency(
      {required final String partographId,
      required final String value,
      required final DateTime time}) = _$CreateContractionFrequencyImpl;

  String get partographId;
  String get value;
  DateTime get time;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateContractionFrequencyImplCopyWith<_$CreateContractionFrequencyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateContractionFrequencyImplCopyWith<$Res> {
  factory _$$UpdateContractionFrequencyImplCopyWith(
          _$UpdateContractionFrequencyImpl value,
          $Res Function(_$UpdateContractionFrequencyImpl) then) =
      __$$UpdateContractionFrequencyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String partographId, String value, DateTime time});
}

/// @nodoc
class __$$UpdateContractionFrequencyImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res,
        _$UpdateContractionFrequencyImpl>
    implements _$$UpdateContractionFrequencyImplCopyWith<$Res> {
  __$$UpdateContractionFrequencyImplCopyWithImpl(
      _$UpdateContractionFrequencyImpl _value,
      $Res Function(_$UpdateContractionFrequencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partographId = null,
    Object? value = null,
    Object? time = null,
  }) {
    return _then(_$UpdateContractionFrequencyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateContractionFrequencyImpl implements UpdateContractionFrequency {
  const _$UpdateContractionFrequencyImpl(
      {required this.id,
      required this.partographId,
      required this.value,
      required this.time});

  @override
  final int id;
  @override
  final String partographId;
  @override
  final String value;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'PartographEvent.updateContractionFrequency(id: $id, partographId: $partographId, value: $value, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateContractionFrequencyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, partographId, value, time);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateContractionFrequencyImplCopyWith<_$UpdateContractionFrequencyImpl>
      get copyWith => __$$UpdateContractionFrequencyImplCopyWithImpl<
          _$UpdateContractionFrequencyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) {
    return updateContractionFrequency(id, partographId, value, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) {
    return updateContractionFrequency?.call(id, partographId, value, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (updateContractionFrequency != null) {
      return updateContractionFrequency(id, partographId, value, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) {
    return updateContractionFrequency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) {
    return updateContractionFrequency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (updateContractionFrequency != null) {
      return updateContractionFrequency(this);
    }
    return orElse();
  }
}

abstract class UpdateContractionFrequency implements PartographEvent {
  const factory UpdateContractionFrequency(
      {required final int id,
      required final String partographId,
      required final String value,
      required final DateTime time}) = _$UpdateContractionFrequencyImpl;

  int get id;
  String get partographId;
  String get value;
  DateTime get time;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateContractionFrequencyImplCopyWith<_$UpdateContractionFrequencyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateChildbirthNoteImplCopyWith<$Res> {
  factory _$$CreateChildbirthNoteImplCopyWith(_$CreateChildbirthNoteImpl value,
          $Res Function(_$CreateChildbirthNoteImpl) then) =
      __$$CreateChildbirthNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String partographId,
      String? description,
      String date,
      String hour,
      String sex,
      String peso,
      String apgar,
      String temperature,
      String caputto,
      String circular,
      String lamniotico,
      String miccion,
      String meconio,
      String pa,
      String expulsivo,
      String placenta,
      String alumbramiento,
      String huellaPlantar,
      String pc,
      String talla,
      String brazalete,
      String huellaDig});
}

/// @nodoc
class __$$CreateChildbirthNoteImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res, _$CreateChildbirthNoteImpl>
    implements _$$CreateChildbirthNoteImplCopyWith<$Res> {
  __$$CreateChildbirthNoteImplCopyWithImpl(_$CreateChildbirthNoteImpl _value,
      $Res Function(_$CreateChildbirthNoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? description = freezed,
    Object? date = null,
    Object? hour = null,
    Object? sex = null,
    Object? peso = null,
    Object? apgar = null,
    Object? temperature = null,
    Object? caputto = null,
    Object? circular = null,
    Object? lamniotico = null,
    Object? miccion = null,
    Object? meconio = null,
    Object? pa = null,
    Object? expulsivo = null,
    Object? placenta = null,
    Object? alumbramiento = null,
    Object? huellaPlantar = null,
    Object? pc = null,
    Object? talla = null,
    Object? brazalete = null,
    Object? huellaDig = null,
  }) {
    return _then(_$CreateChildbirthNoteImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
      peso: null == peso
          ? _value.peso
          : peso // ignore: cast_nullable_to_non_nullable
              as String,
      apgar: null == apgar
          ? _value.apgar
          : apgar // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String,
      caputto: null == caputto
          ? _value.caputto
          : caputto // ignore: cast_nullable_to_non_nullable
              as String,
      circular: null == circular
          ? _value.circular
          : circular // ignore: cast_nullable_to_non_nullable
              as String,
      lamniotico: null == lamniotico
          ? _value.lamniotico
          : lamniotico // ignore: cast_nullable_to_non_nullable
              as String,
      miccion: null == miccion
          ? _value.miccion
          : miccion // ignore: cast_nullable_to_non_nullable
              as String,
      meconio: null == meconio
          ? _value.meconio
          : meconio // ignore: cast_nullable_to_non_nullable
              as String,
      pa: null == pa
          ? _value.pa
          : pa // ignore: cast_nullable_to_non_nullable
              as String,
      expulsivo: null == expulsivo
          ? _value.expulsivo
          : expulsivo // ignore: cast_nullable_to_non_nullable
              as String,
      placenta: null == placenta
          ? _value.placenta
          : placenta // ignore: cast_nullable_to_non_nullable
              as String,
      alumbramiento: null == alumbramiento
          ? _value.alumbramiento
          : alumbramiento // ignore: cast_nullable_to_non_nullable
              as String,
      huellaPlantar: null == huellaPlantar
          ? _value.huellaPlantar
          : huellaPlantar // ignore: cast_nullable_to_non_nullable
              as String,
      pc: null == pc
          ? _value.pc
          : pc // ignore: cast_nullable_to_non_nullable
              as String,
      talla: null == talla
          ? _value.talla
          : talla // ignore: cast_nullable_to_non_nullable
              as String,
      brazalete: null == brazalete
          ? _value.brazalete
          : brazalete // ignore: cast_nullable_to_non_nullable
              as String,
      huellaDig: null == huellaDig
          ? _value.huellaDig
          : huellaDig // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateChildbirthNoteImpl implements CreateChildbirthNote {
  const _$CreateChildbirthNoteImpl(
      {required this.partographId,
      this.description,
      required this.date,
      required this.hour,
      required this.sex,
      required this.peso,
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
      required this.huellaDig});

  @override
  final String partographId;
  @override
  final String? description;
  @override
  final String date;
  @override
  final String hour;
  @override
  final String sex;
  @override
  final String peso;
  @override
  final String apgar;
  @override
  final String temperature;
  @override
  final String caputto;
  @override
  final String circular;
  @override
  final String lamniotico;
  @override
  final String miccion;
  @override
  final String meconio;
  @override
  final String pa;
  @override
  final String expulsivo;
  @override
  final String placenta;
  @override
  final String alumbramiento;
  @override
  final String huellaPlantar;
  @override
  final String pc;
  @override
  final String talla;
  @override
  final String brazalete;
  @override
  final String huellaDig;

  @override
  String toString() {
    return 'PartographEvent.createChildbirthNote(partographId: $partographId, description: $description, date: $date, hour: $hour, sex: $sex, peso: $peso, apgar: $apgar, temperature: $temperature, caputto: $caputto, circular: $circular, lamniotico: $lamniotico, miccion: $miccion, meconio: $meconio, pa: $pa, expulsivo: $expulsivo, placenta: $placenta, alumbramiento: $alumbramiento, huellaPlantar: $huellaPlantar, pc: $pc, talla: $talla, brazalete: $brazalete, huellaDig: $huellaDig)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateChildbirthNoteImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.peso, peso) || other.peso == peso) &&
            (identical(other.apgar, apgar) || other.apgar == apgar) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.caputto, caputto) || other.caputto == caputto) &&
            (identical(other.circular, circular) ||
                other.circular == circular) &&
            (identical(other.lamniotico, lamniotico) ||
                other.lamniotico == lamniotico) &&
            (identical(other.miccion, miccion) || other.miccion == miccion) &&
            (identical(other.meconio, meconio) || other.meconio == meconio) &&
            (identical(other.pa, pa) || other.pa == pa) &&
            (identical(other.expulsivo, expulsivo) ||
                other.expulsivo == expulsivo) &&
            (identical(other.placenta, placenta) ||
                other.placenta == placenta) &&
            (identical(other.alumbramiento, alumbramiento) ||
                other.alumbramiento == alumbramiento) &&
            (identical(other.huellaPlantar, huellaPlantar) ||
                other.huellaPlantar == huellaPlantar) &&
            (identical(other.pc, pc) || other.pc == pc) &&
            (identical(other.talla, talla) || other.talla == talla) &&
            (identical(other.brazalete, brazalete) ||
                other.brazalete == brazalete) &&
            (identical(other.huellaDig, huellaDig) ||
                other.huellaDig == huellaDig));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        partographId,
        description,
        date,
        hour,
        sex,
        peso,
        apgar,
        temperature,
        caputto,
        circular,
        lamniotico,
        miccion,
        meconio,
        pa,
        expulsivo,
        placenta,
        alumbramiento,
        huellaPlantar,
        pc,
        talla,
        brazalete,
        huellaDig
      ]);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateChildbirthNoteImplCopyWith<_$CreateChildbirthNoteImpl>
      get copyWith =>
          __$$CreateChildbirthNoteImplCopyWithImpl<_$CreateChildbirthNoteImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) {
    return createChildbirthNote(
        partographId,
        description,
        date,
        hour,
        sex,
        peso,
        apgar,
        temperature,
        caputto,
        circular,
        lamniotico,
        miccion,
        meconio,
        pa,
        expulsivo,
        placenta,
        alumbramiento,
        huellaPlantar,
        pc,
        talla,
        brazalete,
        huellaDig);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) {
    return createChildbirthNote?.call(
        partographId,
        description,
        date,
        hour,
        sex,
        peso,
        apgar,
        temperature,
        caputto,
        circular,
        lamniotico,
        miccion,
        meconio,
        pa,
        expulsivo,
        placenta,
        alumbramiento,
        huellaPlantar,
        pc,
        talla,
        brazalete,
        huellaDig);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (createChildbirthNote != null) {
      return createChildbirthNote(
          partographId,
          description,
          date,
          hour,
          sex,
          peso,
          apgar,
          temperature,
          caputto,
          circular,
          lamniotico,
          miccion,
          meconio,
          pa,
          expulsivo,
          placenta,
          alumbramiento,
          huellaPlantar,
          pc,
          talla,
          brazalete,
          huellaDig);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) {
    return createChildbirthNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) {
    return createChildbirthNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (createChildbirthNote != null) {
      return createChildbirthNote(this);
    }
    return orElse();
  }
}

abstract class CreateChildbirthNote implements PartographEvent {
  const factory CreateChildbirthNote(
      {required final String partographId,
      final String? description,
      required final String date,
      required final String hour,
      required final String sex,
      required final String peso,
      required final String apgar,
      required final String temperature,
      required final String caputto,
      required final String circular,
      required final String lamniotico,
      required final String miccion,
      required final String meconio,
      required final String pa,
      required final String expulsivo,
      required final String placenta,
      required final String alumbramiento,
      required final String huellaPlantar,
      required final String pc,
      required final String talla,
      required final String brazalete,
      required final String huellaDig}) = _$CreateChildbirthNoteImpl;

  String get partographId;
  String? get description;
  String get date;
  String get hour;
  String get sex;
  String get peso;
  String get apgar;
  String get temperature;
  String get caputto;
  String get circular;
  String get lamniotico;
  String get miccion;
  String get meconio;
  String get pa;
  String get expulsivo;
  String get placenta;
  String get alumbramiento;
  String get huellaPlantar;
  String get pc;
  String get talla;
  String get brazalete;
  String get huellaDig;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateChildbirthNoteImplCopyWith<_$CreateChildbirthNoteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateChildbirthNoteImplCopyWith<$Res> {
  factory _$$UpdateChildbirthNoteImplCopyWith(_$UpdateChildbirthNoteImpl value,
          $Res Function(_$UpdateChildbirthNoteImpl) then) =
      __$$UpdateChildbirthNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String partographId,
      String? description,
      String date,
      String hour,
      String sex,
      String peso,
      String apgar,
      String temperature,
      String caputto,
      String circular,
      String lamniotico,
      String miccion,
      String meconio,
      String pa,
      String expulsivo,
      String placenta,
      String alumbramiento,
      String huellaPlantar,
      String pc,
      String talla,
      String brazalete,
      String huellaDig});
}

/// @nodoc
class __$$UpdateChildbirthNoteImplCopyWithImpl<$Res>
    extends _$PartographEventCopyWithImpl<$Res, _$UpdateChildbirthNoteImpl>
    implements _$$UpdateChildbirthNoteImplCopyWith<$Res> {
  __$$UpdateChildbirthNoteImplCopyWithImpl(_$UpdateChildbirthNoteImpl _value,
      $Res Function(_$UpdateChildbirthNoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = null,
    Object? description = freezed,
    Object? date = null,
    Object? hour = null,
    Object? sex = null,
    Object? peso = null,
    Object? apgar = null,
    Object? temperature = null,
    Object? caputto = null,
    Object? circular = null,
    Object? lamniotico = null,
    Object? miccion = null,
    Object? meconio = null,
    Object? pa = null,
    Object? expulsivo = null,
    Object? placenta = null,
    Object? alumbramiento = null,
    Object? huellaPlantar = null,
    Object? pc = null,
    Object? talla = null,
    Object? brazalete = null,
    Object? huellaDig = null,
  }) {
    return _then(_$UpdateChildbirthNoteImpl(
      partographId: null == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as String,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
      peso: null == peso
          ? _value.peso
          : peso // ignore: cast_nullable_to_non_nullable
              as String,
      apgar: null == apgar
          ? _value.apgar
          : apgar // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String,
      caputto: null == caputto
          ? _value.caputto
          : caputto // ignore: cast_nullable_to_non_nullable
              as String,
      circular: null == circular
          ? _value.circular
          : circular // ignore: cast_nullable_to_non_nullable
              as String,
      lamniotico: null == lamniotico
          ? _value.lamniotico
          : lamniotico // ignore: cast_nullable_to_non_nullable
              as String,
      miccion: null == miccion
          ? _value.miccion
          : miccion // ignore: cast_nullable_to_non_nullable
              as String,
      meconio: null == meconio
          ? _value.meconio
          : meconio // ignore: cast_nullable_to_non_nullable
              as String,
      pa: null == pa
          ? _value.pa
          : pa // ignore: cast_nullable_to_non_nullable
              as String,
      expulsivo: null == expulsivo
          ? _value.expulsivo
          : expulsivo // ignore: cast_nullable_to_non_nullable
              as String,
      placenta: null == placenta
          ? _value.placenta
          : placenta // ignore: cast_nullable_to_non_nullable
              as String,
      alumbramiento: null == alumbramiento
          ? _value.alumbramiento
          : alumbramiento // ignore: cast_nullable_to_non_nullable
              as String,
      huellaPlantar: null == huellaPlantar
          ? _value.huellaPlantar
          : huellaPlantar // ignore: cast_nullable_to_non_nullable
              as String,
      pc: null == pc
          ? _value.pc
          : pc // ignore: cast_nullable_to_non_nullable
              as String,
      talla: null == talla
          ? _value.talla
          : talla // ignore: cast_nullable_to_non_nullable
              as String,
      brazalete: null == brazalete
          ? _value.brazalete
          : brazalete // ignore: cast_nullable_to_non_nullable
              as String,
      huellaDig: null == huellaDig
          ? _value.huellaDig
          : huellaDig // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateChildbirthNoteImpl implements UpdateChildbirthNote {
  const _$UpdateChildbirthNoteImpl(
      {required this.partographId,
      this.description,
      required this.date,
      required this.hour,
      required this.sex,
      required this.peso,
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
      required this.huellaDig});

  @override
  final String partographId;
  @override
  final String? description;
  @override
  final String date;
  @override
  final String hour;
  @override
  final String sex;
  @override
  final String peso;
  @override
  final String apgar;
  @override
  final String temperature;
  @override
  final String caputto;
  @override
  final String circular;
  @override
  final String lamniotico;
  @override
  final String miccion;
  @override
  final String meconio;
  @override
  final String pa;
  @override
  final String expulsivo;
  @override
  final String placenta;
  @override
  final String alumbramiento;
  @override
  final String huellaPlantar;
  @override
  final String pc;
  @override
  final String talla;
  @override
  final String brazalete;
  @override
  final String huellaDig;

  @override
  String toString() {
    return 'PartographEvent.updateChildbirthNote(partographId: $partographId, description: $description, date: $date, hour: $hour, sex: $sex, peso: $peso, apgar: $apgar, temperature: $temperature, caputto: $caputto, circular: $circular, lamniotico: $lamniotico, miccion: $miccion, meconio: $meconio, pa: $pa, expulsivo: $expulsivo, placenta: $placenta, alumbramiento: $alumbramiento, huellaPlantar: $huellaPlantar, pc: $pc, talla: $talla, brazalete: $brazalete, huellaDig: $huellaDig)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateChildbirthNoteImpl &&
            (identical(other.partographId, partographId) ||
                other.partographId == partographId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.peso, peso) || other.peso == peso) &&
            (identical(other.apgar, apgar) || other.apgar == apgar) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.caputto, caputto) || other.caputto == caputto) &&
            (identical(other.circular, circular) ||
                other.circular == circular) &&
            (identical(other.lamniotico, lamniotico) ||
                other.lamniotico == lamniotico) &&
            (identical(other.miccion, miccion) || other.miccion == miccion) &&
            (identical(other.meconio, meconio) || other.meconio == meconio) &&
            (identical(other.pa, pa) || other.pa == pa) &&
            (identical(other.expulsivo, expulsivo) ||
                other.expulsivo == expulsivo) &&
            (identical(other.placenta, placenta) ||
                other.placenta == placenta) &&
            (identical(other.alumbramiento, alumbramiento) ||
                other.alumbramiento == alumbramiento) &&
            (identical(other.huellaPlantar, huellaPlantar) ||
                other.huellaPlantar == huellaPlantar) &&
            (identical(other.pc, pc) || other.pc == pc) &&
            (identical(other.talla, talla) || other.talla == talla) &&
            (identical(other.brazalete, brazalete) ||
                other.brazalete == brazalete) &&
            (identical(other.huellaDig, huellaDig) ||
                other.huellaDig == huellaDig));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        partographId,
        description,
        date,
        hour,
        sex,
        peso,
        apgar,
        temperature,
        caputto,
        circular,
        lamniotico,
        miccion,
        meconio,
        pa,
        expulsivo,
        placenta,
        alumbramiento,
        huellaPlantar,
        pc,
        talla,
        brazalete,
        huellaDig
      ]);

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateChildbirthNoteImplCopyWith<_$UpdateChildbirthNoteImpl>
      get copyWith =>
          __$$UpdateChildbirthNoteImplCopyWithImpl<_$UpdateChildbirthNoteImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String partographId) onFetchData,
    required TResult Function(
            String partographId,
            String name,
            String recordName,
            DateTime date,
            String observation,
            String workTime)
        modifyingPartograph,
    required TResult Function(String partographId) onDeletePartograph,
    required TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)
        saveCervicalDilation,
    required TResult Function(int id, String partographId, double value,
            DateTime hour, bool remOrRam)
        updateCervicalDilation,
    required TResult Function(int id) deleteCervicalDilation,
    required TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        createMedicalSurveillance,
    required TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)
        updateMedicalSurveillance,
    required TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)
        createPresentationPositionVariety,
    required TResult Function(int id, String partographId, int hodgePlane,
            int position, DateTime time)
        updatePresentationPositionVariety,
    required TResult Function(String partographId, String value, DateTime time)
        createFetalHeartRate,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateFetalHeartRate,
    required TResult Function(String partographId, String value, DateTime time)
        createContractionFrequency,
    required TResult Function(
            int id, String partographId, String value, DateTime time)
        updateContractionFrequency,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        createChildbirthNote,
    required TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)
        updateChildbirthNote,
  }) {
    return updateChildbirthNote(
        partographId,
        description,
        date,
        hour,
        sex,
        peso,
        apgar,
        temperature,
        caputto,
        circular,
        lamniotico,
        miccion,
        meconio,
        pa,
        expulsivo,
        placenta,
        alumbramiento,
        huellaPlantar,
        pc,
        talla,
        brazalete,
        huellaDig);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String partographId)? onFetchData,
    TResult? Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult? Function(String partographId)? onDeletePartograph,
    TResult? Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult? Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult? Function(int id)? deleteCervicalDilation,
    TResult? Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult? Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult? Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult? Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult? Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult? Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult? Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult? Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
  }) {
    return updateChildbirthNote?.call(
        partographId,
        description,
        date,
        hour,
        sex,
        peso,
        apgar,
        temperature,
        caputto,
        circular,
        lamniotico,
        miccion,
        meconio,
        pa,
        expulsivo,
        placenta,
        alumbramiento,
        huellaPlantar,
        pc,
        talla,
        brazalete,
        huellaDig);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String partographId)? onFetchData,
    TResult Function(String partographId, String name, String recordName,
            DateTime date, String observation, String workTime)?
        modifyingPartograph,
    TResult Function(String partographId)? onDeletePartograph,
    TResult Function(
            String partographId, double value, DateTime hour, bool remOrRam)?
        saveCervicalDilation,
    TResult Function(int id, String partographId, double value, DateTime hour,
            bool remOrRam)?
        updateCervicalDilation,
    TResult Function(int id)? deleteCervicalDilation,
    TResult Function(
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        createMedicalSurveillance,
    TResult Function(
            int id,
            String partographId,
            String letter,
            String maternalPosition,
            String arterialPressure,
            String maternalPulse,
            String fetalHeartRate,
            String contractionsDuration,
            String frequencyContractions,
            String pain,
            DateTime time)?
        updateMedicalSurveillance,
    TResult Function(
            String partographId, int hodgePlane, int position, DateTime time)?
        createPresentationPositionVariety,
    TResult Function(int id, String partographId, int hodgePlane, int position,
            DateTime time)?
        updatePresentationPositionVariety,
    TResult Function(String partographId, String value, DateTime time)?
        createFetalHeartRate,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateFetalHeartRate,
    TResult Function(String partographId, String value, DateTime time)?
        createContractionFrequency,
    TResult Function(int id, String partographId, String value, DateTime time)?
        updateContractionFrequency,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        createChildbirthNote,
    TResult Function(
            String partographId,
            String? description,
            String date,
            String hour,
            String sex,
            String peso,
            String apgar,
            String temperature,
            String caputto,
            String circular,
            String lamniotico,
            String miccion,
            String meconio,
            String pa,
            String expulsivo,
            String placenta,
            String alumbramiento,
            String huellaPlantar,
            String pc,
            String talla,
            String brazalete,
            String huellaDig)?
        updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (updateChildbirthNote != null) {
      return updateChildbirthNote(
          partographId,
          description,
          date,
          hour,
          sex,
          peso,
          apgar,
          temperature,
          caputto,
          circular,
          lamniotico,
          miccion,
          meconio,
          pa,
          expulsivo,
          placenta,
          alumbramiento,
          huellaPlantar,
          pc,
          talla,
          brazalete,
          huellaDig);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetchData value) onFetchData,
    required TResult Function(ModifyingPartograph value) modifyingPartograph,
    required TResult Function(OnDeletePartograph value) onDeletePartograph,
    required TResult Function(SaveCervicalDilation value) saveCervicalDilation,
    required TResult Function(UpdateCervicalDilation value)
        updateCervicalDilation,
    required TResult Function(DeleteCervicalDilation value)
        deleteCervicalDilation,
    required TResult Function(CreateMedicalSurveillance value)
        createMedicalSurveillance,
    required TResult Function(UpdateMedicalSurveillance value)
        updateMedicalSurveillance,
    required TResult Function(CreatePresentationPositionVariety value)
        createPresentationPositionVariety,
    required TResult Function(UpdatePresentationPositionVariety value)
        updatePresentationPositionVariety,
    required TResult Function(CreateFetalHeartRate value) createFetalHeartRate,
    required TResult Function(UpdateFetalHeartRate value) updateFetalHeartRate,
    required TResult Function(CreateContractionFrequency value)
        createContractionFrequency,
    required TResult Function(UpdateContractionFrequency value)
        updateContractionFrequency,
    required TResult Function(CreateChildbirthNote value) createChildbirthNote,
    required TResult Function(UpdateChildbirthNote value) updateChildbirthNote,
  }) {
    return updateChildbirthNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFetchData value)? onFetchData,
    TResult? Function(ModifyingPartograph value)? modifyingPartograph,
    TResult? Function(OnDeletePartograph value)? onDeletePartograph,
    TResult? Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult? Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult? Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult? Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult? Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult? Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult? Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult? Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult? Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult? Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult? Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult? Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult? Function(UpdateChildbirthNote value)? updateChildbirthNote,
  }) {
    return updateChildbirthNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetchData value)? onFetchData,
    TResult Function(ModifyingPartograph value)? modifyingPartograph,
    TResult Function(OnDeletePartograph value)? onDeletePartograph,
    TResult Function(SaveCervicalDilation value)? saveCervicalDilation,
    TResult Function(UpdateCervicalDilation value)? updateCervicalDilation,
    TResult Function(DeleteCervicalDilation value)? deleteCervicalDilation,
    TResult Function(CreateMedicalSurveillance value)?
        createMedicalSurveillance,
    TResult Function(UpdateMedicalSurveillance value)?
        updateMedicalSurveillance,
    TResult Function(CreatePresentationPositionVariety value)?
        createPresentationPositionVariety,
    TResult Function(UpdatePresentationPositionVariety value)?
        updatePresentationPositionVariety,
    TResult Function(CreateFetalHeartRate value)? createFetalHeartRate,
    TResult Function(UpdateFetalHeartRate value)? updateFetalHeartRate,
    TResult Function(CreateContractionFrequency value)?
        createContractionFrequency,
    TResult Function(UpdateContractionFrequency value)?
        updateContractionFrequency,
    TResult Function(CreateChildbirthNote value)? createChildbirthNote,
    TResult Function(UpdateChildbirthNote value)? updateChildbirthNote,
    required TResult orElse(),
  }) {
    if (updateChildbirthNote != null) {
      return updateChildbirthNote(this);
    }
    return orElse();
  }
}

abstract class UpdateChildbirthNote implements PartographEvent {
  const factory UpdateChildbirthNote(
      {required final String partographId,
      final String? description,
      required final String date,
      required final String hour,
      required final String sex,
      required final String peso,
      required final String apgar,
      required final String temperature,
      required final String caputto,
      required final String circular,
      required final String lamniotico,
      required final String miccion,
      required final String meconio,
      required final String pa,
      required final String expulsivo,
      required final String placenta,
      required final String alumbramiento,
      required final String huellaPlantar,
      required final String pc,
      required final String talla,
      required final String brazalete,
      required final String huellaDig}) = _$UpdateChildbirthNoteImpl;

  String get partographId;
  String? get description;
  String get date;
  String get hour;
  String get sex;
  String get peso;
  String get apgar;
  String get temperature;
  String get caputto;
  String get circular;
  String get lamniotico;
  String get miccion;
  String get meconio;
  String get pa;
  String get expulsivo;
  String get placenta;
  String get alumbramiento;
  String get huellaPlantar;
  String get pc;
  String get talla;
  String get brazalete;
  String get huellaDig;

  /// Create a copy of PartographEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateChildbirthNoteImplCopyWith<_$UpdateChildbirthNoteImpl>
      get copyWith => throw _privateConstructorUsedError;
}
