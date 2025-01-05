import 'package:birthflow_movil/src/domain/account/usecases/request_reset_use_case.dart';
import 'package:birthflow_movil/src/domain/account/usecases/reset_password_use_case.dart';
import 'package:birthflow_movil/src/domain/account/usecases/validate_otp_use_case.dart';
import 'package:birthflow_movil/src/ui/forget_password/bloc/events/forgot_password_event.dart';
import 'package:birthflow_movil/src/ui/forget_password/bloc/states/forgot_password_event.dart';
import 'package:bloc/bloc.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final RequestResetCodeUseCase requestResetCodeUseCase;
  final ResetPasswordUseCase resetPasswordUseCase;
  final ValidateOtpUseCase validateOtpUseCase;

// Variable temporal para almacenar el userId
  String? _userId;

  ForgotPasswordBloc({
    required this.requestResetCodeUseCase,
    required this.resetPasswordUseCase,
    required this.validateOtpUseCase,
  }) : super(const AccountInitial()) {
    on<RequestResetCodeEvent>(_onRequestResetCode);
    on<ValidateOtpEvent>(_onValidateOtp);
    on<ResetPasswordEvent>(_onResetPassword);
    on<ResetPasswordStepChangeEvent>(_onStepChange);
  }

  Future<void> _onRequestResetCode(
    RequestResetCodeEvent event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(const ForgotPasswordState.loading());
    try {
      final result = await requestResetCodeUseCase.execute(email: event.email);
      if (result != null) {
        // Guardar el userId temporalmente
        _userId = result.user.id;
        emit(ForgotPasswordState.requestResetCodeSuccess(user: result.user, message: result.message));
        emit(const ForgotPasswordState.stepChanged(step: 1));
      } else {
        emit(
          const ForgotPasswordState.error(
            message: 'Correo no encontrado. Inténtalo de nuevo.',
          ),
        );
      }
    } catch (e) {
      emit(ForgotPasswordState.error(message: e.toString()));
    }
  }

  Future<void> _onValidateOtp(
    ValidateOtpEvent event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(const ForgotPasswordState.loading());
    try {
      final sessionToken = await validateOtpUseCase.execute(
        userId: _userId ?? event.userId,
        otpCode: event.otpCode,
      );
      emit(ForgotPasswordState.validateOtpSuccess(sessionToken: sessionToken));
      emit(const ForgotPasswordState.stepChanged(step: 2));
    } catch (e) {
      emit(
        const ForgotPasswordState.error(
          message: 'Código OTP inválido. Inténtalo de nuevo.',
        ),
      );
    }
  }

  Future<void> _onResetPassword(
    ResetPasswordEvent event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(const ForgotPasswordState.loading());
    try {
      final message = await resetPasswordUseCase.execute(
        userId: _userId ?? event.userId,
        otpCode: event.otpCode,
        newPassword: event.newPassword,
      );
      emit(ForgotPasswordState.resetPasswordSuccess(message: message));
      emit(ForgotPasswordState.resetPasswordSuccess(message: message));
    } catch (e) {
      emit(
        ForgotPasswordState.error(
          message: 'No se pudo cambiar la contraseña. $e',
        ),
      );
    }
  }

  Future<void> _onStepChange(
    ResetPasswordStepChangeEvent event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(ForgotPasswordState.stepChanged(step: event.step));
  }
}
