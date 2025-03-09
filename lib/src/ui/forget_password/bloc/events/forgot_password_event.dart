import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_event.freezed.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.requestResetCode({required String email}) =
      RequestResetCodeEvent;
  const factory ForgotPasswordEvent.validateOtp({
    required String userId,
    required String otpCode,
  }) = ValidateOtpEvent;
  const factory ForgotPasswordEvent.resetPassword({
    required String userId,
    required String otpCode,
    required String newPassword,
  }) = ResetPasswordEvent;
  const factory ForgotPasswordEvent.stepChange({required int step}) =
      ResetPasswordStepChangeEvent;
}
