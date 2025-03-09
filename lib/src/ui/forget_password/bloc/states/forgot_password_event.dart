import 'package:birthflow_movil/src/domain/auth/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_event.freezed.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial() = AccountInitial;
  const factory ForgotPasswordState.loading() = AccountLoading;
  const factory ForgotPasswordState.stepChanged({required int step}) = StepChanged;
  const factory ForgotPasswordState.requestResetCodeSuccess({required User user, required String message}) =
      RequestResetCodeSuccess;
  const factory ForgotPasswordState.validateOtpSuccess({required String sessionToken}) =
      ValidateOtpSuccess;
  const factory ForgotPasswordState.resetPasswordSuccess({required String message}) =
      ResetPasswordSuccess;
  const factory ForgotPasswordState.error({required String message}) = AccountError;
}
