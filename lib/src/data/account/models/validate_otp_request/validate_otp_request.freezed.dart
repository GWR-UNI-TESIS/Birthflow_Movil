// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_otp_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidateOtpRequest _$ValidateOtpRequestFromJson(Map<String, dynamic> json) {
  return _ValidateOtpRequest.fromJson(json);
}

/// @nodoc
mixin _$ValidateOtpRequest {
  String get userId => throw _privateConstructorUsedError;
  String get otpCode => throw _privateConstructorUsedError;

  /// Serializes this ValidateOtpRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidateOtpRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidateOtpRequestCopyWith<ValidateOtpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateOtpRequestCopyWith<$Res> {
  factory $ValidateOtpRequestCopyWith(
          ValidateOtpRequest value, $Res Function(ValidateOtpRequest) then) =
      _$ValidateOtpRequestCopyWithImpl<$Res, ValidateOtpRequest>;
  @useResult
  $Res call({String userId, String otpCode});
}

/// @nodoc
class _$ValidateOtpRequestCopyWithImpl<$Res, $Val extends ValidateOtpRequest>
    implements $ValidateOtpRequestCopyWith<$Res> {
  _$ValidateOtpRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidateOtpRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? otpCode = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidateOtpRequestImplCopyWith<$Res>
    implements $ValidateOtpRequestCopyWith<$Res> {
  factory _$$ValidateOtpRequestImplCopyWith(_$ValidateOtpRequestImpl value,
          $Res Function(_$ValidateOtpRequestImpl) then) =
      __$$ValidateOtpRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String otpCode});
}

/// @nodoc
class __$$ValidateOtpRequestImplCopyWithImpl<$Res>
    extends _$ValidateOtpRequestCopyWithImpl<$Res, _$ValidateOtpRequestImpl>
    implements _$$ValidateOtpRequestImplCopyWith<$Res> {
  __$$ValidateOtpRequestImplCopyWithImpl(_$ValidateOtpRequestImpl _value,
      $Res Function(_$ValidateOtpRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidateOtpRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? otpCode = null,
  }) {
    return _then(_$ValidateOtpRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateOtpRequestImpl implements _ValidateOtpRequest {
  const _$ValidateOtpRequestImpl({required this.userId, required this.otpCode});

  factory _$ValidateOtpRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateOtpRequestImplFromJson(json);

  @override
  final String userId;
  @override
  final String otpCode;

  @override
  String toString() {
    return 'ValidateOtpRequest(userId: $userId, otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateOtpRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, otpCode);

  /// Create a copy of ValidateOtpRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateOtpRequestImplCopyWith<_$ValidateOtpRequestImpl> get copyWith =>
      __$$ValidateOtpRequestImplCopyWithImpl<_$ValidateOtpRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateOtpRequestImplToJson(
      this,
    );
  }
}

abstract class _ValidateOtpRequest implements ValidateOtpRequest {
  const factory _ValidateOtpRequest(
      {required final String userId,
      required final String otpCode}) = _$ValidateOtpRequestImpl;

  factory _ValidateOtpRequest.fromJson(Map<String, dynamic> json) =
      _$ValidateOtpRequestImpl.fromJson;

  @override
  String get userId;
  @override
  String get otpCode;

  /// Create a copy of ValidateOtpRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidateOtpRequestImplCopyWith<_$ValidateOtpRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
