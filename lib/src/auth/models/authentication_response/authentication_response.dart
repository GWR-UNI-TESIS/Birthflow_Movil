
import 'package:birthflow_movil/src/auth/models/authentication_user/authentication_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_response.freezed.dart';
part 'authentication_response.g.dart';

@freezed
class AuthenticationResponse with _$AuthenticationResponse {
  const factory AuthenticationResponse({
    required String token,
    required UserAuthentication user,
  }) = _AuthenticationResponse;

  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResponseFromJson(json);
}
