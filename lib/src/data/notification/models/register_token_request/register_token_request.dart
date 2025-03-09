import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_token_request.freezed.dart';
part 'register_token_request.g.dart';

@freezed
class RegisterTokenRequest with _$RegisterTokenRequest {
  const factory RegisterTokenRequest({
    required String userId,
    required String token,
    required String deviceInfo,
  }) = _RegisterTokenRequest;

  factory RegisterTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterTokenRequestFromJson(json);
}
