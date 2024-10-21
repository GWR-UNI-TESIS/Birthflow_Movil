// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partograph_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartographRequest _$PartographRequestFromJson(Map<String, dynamic> json) {
  return _PartographRequest.fromJson(json);
}

/// @nodoc
mixin _$PartographRequest {
  String? get partographId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get recordName => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get observation => throw _privateConstructorUsedError;
  String get workTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartographRequestCopyWith<PartographRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartographRequestCopyWith<$Res> {
  factory $PartographRequestCopyWith(
          PartographRequest value, $Res Function(PartographRequest) then) =
      _$PartographRequestCopyWithImpl<$Res, PartographRequest>;
  @useResult
  $Res call(
      {String? partographId,
      String name,
      String recordName,
      String date,
      String observation,
      String workTime});
}

/// @nodoc
class _$PartographRequestCopyWithImpl<$Res, $Val extends PartographRequest>
    implements $PartographRequestCopyWith<$Res> {
  _$PartographRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = freezed,
    Object? name = null,
    Object? recordName = null,
    Object? date = null,
    Object? observation = null,
    Object? workTime = null,
  }) {
    return _then(_value.copyWith(
      partographId: freezed == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String,
      observation: null == observation
          ? _value.observation
          : observation // ignore: cast_nullable_to_non_nullable
              as String,
      workTime: null == workTime
          ? _value.workTime
          : workTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartographRequestImplCopyWith<$Res>
    implements $PartographRequestCopyWith<$Res> {
  factory _$$PartographRequestImplCopyWith(_$PartographRequestImpl value,
          $Res Function(_$PartographRequestImpl) then) =
      __$$PartographRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? partographId,
      String name,
      String recordName,
      String date,
      String observation,
      String workTime});
}

/// @nodoc
class __$$PartographRequestImplCopyWithImpl<$Res>
    extends _$PartographRequestCopyWithImpl<$Res, _$PartographRequestImpl>
    implements _$$PartographRequestImplCopyWith<$Res> {
  __$$PartographRequestImplCopyWithImpl(_$PartographRequestImpl _value,
      $Res Function(_$PartographRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partographId = freezed,
    Object? name = null,
    Object? recordName = null,
    Object? date = null,
    Object? observation = null,
    Object? workTime = null,
  }) {
    return _then(_$PartographRequestImpl(
      partographId: freezed == partographId
          ? _value.partographId
          : partographId // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String,
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
@JsonSerializable()
class _$PartographRequestImpl implements _PartographRequest {
  const _$PartographRequestImpl(
      {this.partographId,
      required this.name,
      required this.recordName,
      required this.date,
      required this.observation,
      required this.workTime});

  factory _$PartographRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartographRequestImplFromJson(json);

  @override
  final String? partographId;
  @override
  final String name;
  @override
  final String recordName;
  @override
  final String date;
  @override
  final String observation;
  @override
  final String workTime;

  @override
  String toString() {
    return 'PartographRequest(partographId: $partographId, name: $name, recordName: $recordName, date: $date, observation: $observation, workTime: $workTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartographRequestImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, partographId, name, recordName, date, observation, workTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartographRequestImplCopyWith<_$PartographRequestImpl> get copyWith =>
      __$$PartographRequestImplCopyWithImpl<_$PartographRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartographRequestImplToJson(
      this,
    );
  }
}

abstract class _PartographRequest implements PartographRequest {
  const factory _PartographRequest(
      {final String? partographId,
      required final String name,
      required final String recordName,
      required final String date,
      required final String observation,
      required final String workTime}) = _$PartographRequestImpl;

  factory _PartographRequest.fromJson(Map<String, dynamic> json) =
      _$PartographRequestImpl.fromJson;

  @override
  String? get partographId;
  @override
  String get name;
  @override
  String get recordName;
  @override
  String get date;
  @override
  String get observation;
  @override
  String get workTime;
  @override
  @JsonKey(ignore: true)
  _$$PartographRequestImplCopyWith<_$PartographRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
