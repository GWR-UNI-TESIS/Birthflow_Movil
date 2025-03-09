import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_otp_request.freezed.dart';
part 'validate_otp_request.g.dart';

@freezed
class ValidateOtpRequest with _$ValidateOtpRequest {

  const factory ValidateOtpRequest({
    required String userId,
    required String otpCode,
  }) = _ValidateOtpRequest;

  factory ValidateOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$ValidateOtpRequestFromJson(json);
}
