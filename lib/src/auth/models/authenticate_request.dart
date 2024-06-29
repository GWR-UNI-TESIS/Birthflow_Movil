import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticate_request.freezed.dart';
part 'authenticate_request.g.dart';

@freezed
class AuthenticateRequest with _$AuthenticateRequest {
  const factory AuthenticateRequest({
    String? userName,
    String? password,
  }) = _AuthenticateRequest;

  factory AuthenticateRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateRequestFromJson(json);
}
