import 'package:birthflow_movil/src/core/firebase/bloc/event/notification_event.dart';
import 'package:birthflow_movil/src/core/firebase/bloc/state/notification_state.dart';
import 'package:birthflow_movil/src/domain/notification/usecases/register_device_token_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Bloc para el manejo de notificaciones de firebase
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final RegisterDeviceTokenUseCase registerDeviceTokenUsecases;

  NotificationBloc(this.registerDeviceTokenUsecases)
      : super(const NotificationState.initial()) {
    //Registro del token de firebase en la servicio
    on<RegisterTokenEvent>((event, emit) async {
      emit(const NotificationState.registering());
      try {
        await registerDeviceTokenUsecases.execute(
          userId: event.userId,
          token: event.token,
          deviceInfo: 'Android',
        );
        emit(const NotificationState.success());
      } catch (e) {
        emit(NotificationState.error(e.toString()));
      }
    });
    on<TokenRefreshedEvent>((event, emit) {
      add(RegisterTokenEvent(userId: event.userId, token: event.token));
    });
  }
}
