import 'package:birthflow_movil/src/domain/account/usecases/change_password_use_case.dart';
import 'package:birthflow_movil/src/ui/configuration/blocs/change_password/events/change_password_events.dart';
import 'package:birthflow_movil/src/ui/configuration/blocs/change_password/states/change_password_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePasswordBloc extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final ChangePasswordUseCase _changePasswordUseCase;

  ChangePasswordBloc(this._changePasswordUseCase) : super(const ChangePasswordState.initial()) {
    on<ChangePasswordSubmitted>((event, emit) async {
      emit(const ChangePasswordState.loading());
      try {
        await _changePasswordUseCase.execute(
          oldPassword: event.oldPassword,
          newPassword: event.newPassword,
        );
        emit(const ChangePasswordState.success());
      } catch (e) {
        emit(ChangePasswordState.failure(e.toString()));
      }
    });
  }
}
