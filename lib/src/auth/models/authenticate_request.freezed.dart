// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticate_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticateRequest _$AuthenticateRequestFromJson(Map<String, dynamic> json) {
  return _AuthenticateRequest.fromJson(json);
}

/// @nodoc
mixin _$AuthenticateRequest {
  String? get userName => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticateRequestCopyWith<AuthenticateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateRequestCopyWith<$Res> {
  factory $AuthenticateRequestCopyWith(
          AuthenticateRequest value, $Res Function(AuthenticateRequest) then) =
      _$AuthenticateRequestCopyWithImpl<$Res, AuthenticateRequest>;
  @useResult
  $Res call({String? userName, String? password});
}

/// @nodoc
class _$AuthenticateRequestCopyWithImpl<$Res, $Val extends AuthenticateRequest>
    implements $AuthenticateRequestCopyWith<$Res> {
  _$AuthenticateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticateRequestImplCopyWith<$Res>
    implements $AuthenticateRequestCopyWith<$Res> {
  factory _$$AuthenticateRequestImplCopyWith(_$AuthenticateRequestImpl value,
          $Res Function(_$AuthenticateRequestImpl) then) =
      __$$AuthenticateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userName, String? password});
}

/// @nodoc
class __$$AuthenticateRequestImplCopyWithImpl<$Res>
    extends _$AuthenticateRequestCopyWithImpl<$Res, _$AuthenticateRequestImpl>
    implements _$$AuthenticateRequestImplCopyWith<$Res> {
  __$$AuthenticateRequestImplCopyWithImpl(_$AuthenticateRequestImpl _value,
      $Res Function(_$AuthenticateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_$AuthenticateRequestImpl(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticateRequestImpl implements _AuthenticateRequest {
  const _$AuthenticateRequestImpl({this.userName, this.password});

  factory _$AuthenticateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticateRequestImplFromJson(json);

  @override
  final String? userName;
  @override
  final String? password;

  @override
  String toString() {
    return 'AuthenticateRequest(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateRequestImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticateRequestImplCopyWith<_$AuthenticateRequestImpl> get copyWith =>
      __$$AuthenticateRequestImplCopyWithImpl<_$AuthenticateRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticateRequestImplToJson(
      this,
    );
  }
}

abstract class _AuthenticateRequest implements AuthenticateRequest {
  const factory _AuthenticateRequest(
      {final String? userName,
      final String? password}) = _$AuthenticateRequestImpl;

  factory _AuthenticateRequest.fromJson(Map<String, dynamic> json) =
      _$AuthenticateRequestImpl.fromJson;

  @override
  String? get userName;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticateRequestImplCopyWith<_$AuthenticateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
