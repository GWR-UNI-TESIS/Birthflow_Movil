// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidateTokenResponse _$ValidateTokenResponseFromJson(
    Map<String, dynamic> json) {
  return _ValidateTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$ValidateTokenResponse {
  String? get message => throw _privateConstructorUsedError;
  bool? get isValid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidateTokenResponseCopyWith<ValidateTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateTokenResponseCopyWith<$Res> {
  factory $ValidateTokenResponseCopyWith(ValidateTokenResponse value,
          $Res Function(ValidateTokenResponse) then) =
      _$ValidateTokenResponseCopyWithImpl<$Res, ValidateTokenResponse>;
  @useResult
  $Res call({String? message, bool? isValid});
}

/// @nodoc
class _$ValidateTokenResponseCopyWithImpl<$Res,
        $Val extends ValidateTokenResponse>
    implements $ValidateTokenResponseCopyWith<$Res> {
  _$ValidateTokenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? isValid = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidateTokenResponseImplCopyWith<$Res>
    implements $ValidateTokenResponseCopyWith<$Res> {
  factory _$$ValidateTokenResponseImplCopyWith(
          _$ValidateTokenResponseImpl value,
          $Res Function(_$ValidateTokenResponseImpl) then) =
      __$$ValidateTokenResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, bool? isValid});
}

/// @nodoc
class __$$ValidateTokenResponseImplCopyWithImpl<$Res>
    extends _$ValidateTokenResponseCopyWithImpl<$Res,
        _$ValidateTokenResponseImpl>
    implements _$$ValidateTokenResponseImplCopyWith<$Res> {
  __$$ValidateTokenResponseImplCopyWithImpl(_$ValidateTokenResponseImpl _value,
      $Res Function(_$ValidateTokenResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? isValid = freezed,
  }) {
    return _then(_$ValidateTokenResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateTokenResponseImpl implements _ValidateTokenResponse {
  const _$ValidateTokenResponseImpl({this.message, this.isValid});

  factory _$ValidateTokenResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateTokenResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? isValid;

  @override
  String toString() {
    return 'ValidateTokenResponse(message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateTokenResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateTokenResponseImplCopyWith<_$ValidateTokenResponseImpl>
      get copyWith => __$$ValidateTokenResponseImplCopyWithImpl<
          _$ValidateTokenResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateTokenResponseImplToJson(
      this,
    );
  }
}

abstract class _ValidateTokenResponse implements ValidateTokenResponse {
  const factory _ValidateTokenResponse(
      {final String? message,
      final bool? isValid}) = _$ValidateTokenResponseImpl;

  factory _ValidateTokenResponse.fromJson(Map<String, dynamic> json) =
      _$ValidateTokenResponseImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get isValid;
  @override
  @JsonKey(ignore: true)
  _$$ValidateTokenResponseImplCopyWith<_$ValidateTokenResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
