// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatalogResponse _$CatalogResponseFromJson(Map<String, dynamic> json) {
  return _CatalogResponse.fromJson(json);
}

/// @nodoc
mixin _$CatalogResponse {
  List<HodgePlaneResponse> get hodgePlanesCatalog =>
      throw _privateConstructorUsedError;
  List<PositionResponse> get positionCatalog =>
      throw _privateConstructorUsedError;
  List<WorkTimeItemResponse> get workTimeItemsCatalog =>
      throw _privateConstructorUsedError;
  List<WorkTimeResponse> get workTimeCatalog =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogResponseCopyWith<CatalogResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogResponseCopyWith<$Res> {
  factory $CatalogResponseCopyWith(
          CatalogResponse value, $Res Function(CatalogResponse) then) =
      _$CatalogResponseCopyWithImpl<$Res, CatalogResponse>;
  @useResult
  $Res call(
      {List<HodgePlaneResponse> hodgePlanesCatalog,
      List<PositionResponse> positionCatalog,
      List<WorkTimeItemResponse> workTimeItemsCatalog,
      List<WorkTimeResponse> workTimeCatalog});
}

/// @nodoc
class _$CatalogResponseCopyWithImpl<$Res, $Val extends CatalogResponse>
    implements $CatalogResponseCopyWith<$Res> {
  _$CatalogResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hodgePlanesCatalog = null,
    Object? positionCatalog = null,
    Object? workTimeItemsCatalog = null,
    Object? workTimeCatalog = null,
  }) {
    return _then(_value.copyWith(
      hodgePlanesCatalog: null == hodgePlanesCatalog
          ? _value.hodgePlanesCatalog
          : hodgePlanesCatalog // ignore: cast_nullable_to_non_nullable
              as List<HodgePlaneResponse>,
      positionCatalog: null == positionCatalog
          ? _value.positionCatalog
          : positionCatalog // ignore: cast_nullable_to_non_nullable
              as List<PositionResponse>,
      workTimeItemsCatalog: null == workTimeItemsCatalog
          ? _value.workTimeItemsCatalog
          : workTimeItemsCatalog // ignore: cast_nullable_to_non_nullable
              as List<WorkTimeItemResponse>,
      workTimeCatalog: null == workTimeCatalog
          ? _value.workTimeCatalog
          : workTimeCatalog // ignore: cast_nullable_to_non_nullable
              as List<WorkTimeResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogResponseImplCopyWith<$Res>
    implements $CatalogResponseCopyWith<$Res> {
  factory _$$CatalogResponseImplCopyWith(_$CatalogResponseImpl value,
          $Res Function(_$CatalogResponseImpl) then) =
      __$$CatalogResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HodgePlaneResponse> hodgePlanesCatalog,
      List<PositionResponse> positionCatalog,
      List<WorkTimeItemResponse> workTimeItemsCatalog,
      List<WorkTimeResponse> workTimeCatalog});
}

/// @nodoc
class __$$CatalogResponseImplCopyWithImpl<$Res>
    extends _$CatalogResponseCopyWithImpl<$Res, _$CatalogResponseImpl>
    implements _$$CatalogResponseImplCopyWith<$Res> {
  __$$CatalogResponseImplCopyWithImpl(
      _$CatalogResponseImpl _value, $Res Function(_$CatalogResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hodgePlanesCatalog = null,
    Object? positionCatalog = null,
    Object? workTimeItemsCatalog = null,
    Object? workTimeCatalog = null,
  }) {
    return _then(_$CatalogResponseImpl(
      hodgePlanesCatalog: null == hodgePlanesCatalog
          ? _value._hodgePlanesCatalog
          : hodgePlanesCatalog // ignore: cast_nullable_to_non_nullable
              as List<HodgePlaneResponse>,
      positionCatalog: null == positionCatalog
          ? _value._positionCatalog
          : positionCatalog // ignore: cast_nullable_to_non_nullable
              as List<PositionResponse>,
      workTimeItemsCatalog: null == workTimeItemsCatalog
          ? _value._workTimeItemsCatalog
          : workTimeItemsCatalog // ignore: cast_nullable_to_non_nullable
              as List<WorkTimeItemResponse>,
      workTimeCatalog: null == workTimeCatalog
          ? _value._workTimeCatalog
          : workTimeCatalog // ignore: cast_nullable_to_non_nullable
              as List<WorkTimeResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogResponseImpl implements _CatalogResponse {
  const _$CatalogResponseImpl(
      {required final List<HodgePlaneResponse> hodgePlanesCatalog,
      required final List<PositionResponse> positionCatalog,
      required final List<WorkTimeItemResponse> workTimeItemsCatalog,
      required final List<WorkTimeResponse> workTimeCatalog})
      : _hodgePlanesCatalog = hodgePlanesCatalog,
        _positionCatalog = positionCatalog,
        _workTimeItemsCatalog = workTimeItemsCatalog,
        _workTimeCatalog = workTimeCatalog;

  factory _$CatalogResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogResponseImplFromJson(json);

  final List<HodgePlaneResponse> _hodgePlanesCatalog;
  @override
  List<HodgePlaneResponse> get hodgePlanesCatalog {
    if (_hodgePlanesCatalog is EqualUnmodifiableListView)
      return _hodgePlanesCatalog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hodgePlanesCatalog);
  }

  final List<PositionResponse> _positionCatalog;
  @override
  List<PositionResponse> get positionCatalog {
    if (_positionCatalog is EqualUnmodifiableListView) return _positionCatalog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positionCatalog);
  }

  final List<WorkTimeItemResponse> _workTimeItemsCatalog;
  @override
  List<WorkTimeItemResponse> get workTimeItemsCatalog {
    if (_workTimeItemsCatalog is EqualUnmodifiableListView)
      return _workTimeItemsCatalog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workTimeItemsCatalog);
  }

  final List<WorkTimeResponse> _workTimeCatalog;
  @override
  List<WorkTimeResponse> get workTimeCatalog {
    if (_workTimeCatalog is EqualUnmodifiableListView) return _workTimeCatalog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workTimeCatalog);
  }

  @override
  String toString() {
    return 'CatalogResponse(hodgePlanesCatalog: $hodgePlanesCatalog, positionCatalog: $positionCatalog, workTimeItemsCatalog: $workTimeItemsCatalog, workTimeCatalog: $workTimeCatalog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._hodgePlanesCatalog, _hodgePlanesCatalog) &&
            const DeepCollectionEquality()
                .equals(other._positionCatalog, _positionCatalog) &&
            const DeepCollectionEquality()
                .equals(other._workTimeItemsCatalog, _workTimeItemsCatalog) &&
            const DeepCollectionEquality()
                .equals(other._workTimeCatalog, _workTimeCatalog));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_hodgePlanesCatalog),
      const DeepCollectionEquality().hash(_positionCatalog),
      const DeepCollectionEquality().hash(_workTimeItemsCatalog),
      const DeepCollectionEquality().hash(_workTimeCatalog));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogResponseImplCopyWith<_$CatalogResponseImpl> get copyWith =>
      __$$CatalogResponseImplCopyWithImpl<_$CatalogResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogResponseImplToJson(
      this,
    );
  }
}

abstract class _CatalogResponse implements CatalogResponse {
  const factory _CatalogResponse(
          {required final List<HodgePlaneResponse> hodgePlanesCatalog,
          required final List<PositionResponse> positionCatalog,
          required final List<WorkTimeItemResponse> workTimeItemsCatalog,
          required final List<WorkTimeResponse> workTimeCatalog}) =
      _$CatalogResponseImpl;

  factory _CatalogResponse.fromJson(Map<String, dynamic> json) =
      _$CatalogResponseImpl.fromJson;

  @override
  List<HodgePlaneResponse> get hodgePlanesCatalog;
  @override
  List<PositionResponse> get positionCatalog;
  @override
  List<WorkTimeItemResponse> get workTimeItemsCatalog;
  @override
  List<WorkTimeResponse> get workTimeCatalog;
  @override
  @JsonKey(ignore: true)
  _$$CatalogResponseImplCopyWith<_$CatalogResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
