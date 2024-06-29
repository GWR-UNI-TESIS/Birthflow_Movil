// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenRequest _$TokenRequestFromJson(Map<String, dynamic> json) {
  return _TokenRequest.fromJson(json);
}

/// @nodoc
mixin _$TokenRequest {
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenRequestCopyWith<TokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenRequestCopyWith<$Res> {
  factory $TokenRequestCopyWith(
          TokenRequest value, $Res Function(TokenRequest) then) =
      _$TokenRequestCopyWithImpl<$Res, TokenRequest>;
  @useResult
  $Res call({String? token});
}

/// @nodoc
class _$TokenRequestCopyWithImpl<$Res, $Val extends TokenRequest>
    implements $TokenRequestCopyWith<$Res> {
  _$TokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenRequestImplCopyWith<$Res>
    implements $TokenRequestCopyWith<$Res> {
  factory _$$TokenRequestImplCopyWith(
          _$TokenRequestImpl value, $Res Function(_$TokenRequestImpl) then) =
      __$$TokenRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token});
}

/// @nodoc
class __$$TokenRequestImplCopyWithImpl<$Res>
    extends _$TokenRequestCopyWithImpl<$Res, _$TokenRequestImpl>
    implements _$$TokenRequestImplCopyWith<$Res> {
  __$$TokenRequestImplCopyWithImpl(
      _$TokenRequestImpl _value, $Res Function(_$TokenRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$TokenRequestImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenRequestImpl implements _TokenRequest {
  const _$TokenRequestImpl({this.token});

  factory _$TokenRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenRequestImplFromJson(json);

  @override
  final String? token;

  @override
  String toString() {
    return 'TokenRequest(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenRequestImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenRequestImplCopyWith<_$TokenRequestImpl> get copyWith =>
      __$$TokenRequestImplCopyWithImpl<_$TokenRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenRequestImplToJson(
      this,
    );
  }
}

abstract class _TokenRequest implements TokenRequest {
  const factory _TokenRequest({final String? token}) = _$TokenRequestImpl;

  factory _TokenRequest.fromJson(Map<String, dynamic> json) =
      _$TokenRequestImpl.fromJson;

  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$TokenRequestImplCopyWith<_$TokenRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
