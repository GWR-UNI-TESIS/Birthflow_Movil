import 'package:birthflow_movil/src/auth/models/user_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticate_response.freezed.dart';
part 'authenticate_response.g.dart';

@freezed
class AuthenticateResponse with _$AuthenticateResponse {
  const factory AuthenticateResponse({
    required String token,
    required UserAuth user,
  }) = _AuthenticateResponse;

  factory AuthenticateResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateResponseFromJson(json);
}
