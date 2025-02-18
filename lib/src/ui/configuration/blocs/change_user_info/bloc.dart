import 'package:birthflow_movil/src/domain/account/usecases/change_user_info.dart';
import 'package:birthflow_movil/src/domain/account/usecases/get_user_usecase.dart';
import 'package:birthflow_movil/src/ui/configuration/blocs/change_user_info/events/change_user_info_events.dart';
import 'package:birthflow_movil/src/ui/configuration/blocs/change_user_info/states/change_user_info_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeUserInfoBloc extends Bloc<ChangeUserInfoEvent, ChangeUserInfoState> {
  final GetUserUseCase _getUserUseCase;
final ChangeUserInfoUseCase _changeUserInfoUseCase;
  ChangeUserInfoBloc(this._getUserUseCase, this._changeUserInfoUseCase) : super(const ChangeUserInfoState.initial()) {
    on<GetUser>((event, emit) async {
      emit(const ChangeUserInfoState.loading());
      try {
        final user = await _getUserUseCase.execute();
        if (user != null) {
          emit(ChangeUserInfoState.loaded(user));
        } else {
          emit(const ChangeUserInfoState.error('No se pudo obtener el usuario'));
        }
      } catch (e) {
        emit(ChangeUserInfoState.error(e.toString()));
      }
    });

    on<ChangeUserInfo>((event, emit) async {
      emit(const ChangeUserInfoState.loading());
      try {
        final auth = await _changeUserInfoUseCase.execute(
          id: event.id,
          name: event.name,
          secondName: event.secondName,
          userName: event.userName,
          email: event.email,
          phoneNumber: event.phoneNumber,
        );
        if (auth != null) {
          emit(ChangeUserInfoState.updated(auth, 'Actualizado correctamente' ));
        } else {
          emit(const ChangeUserInfoState.error('No se pudo actualizar la información'));
        }
      } catch (e) {
        emit(ChangeUserInfoState.error(e.toString()));
      }
    });
  }
}
