import 'package:birthflow_movil/src/domain/notification/usecases/get_notifications_usecase.dart';
import 'package:birthflow_movil/src/ui/home/blocs/notifications/events/notifications_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/notifications/states/notifications_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final GetNotificationsUseCase _getNotificationsUseCase;

  NotificationsBloc({required GetNotificationsUseCase getNotificationsUseCase})
      : _getNotificationsUseCase = getNotificationsUseCase,
        super(const NotificationsState.initial()) {
    on<LoadNotifications>(_onLoadNotifications);
    on<AddNotification>(_onAddNotification);
  }

  Future<void> _onLoadNotifications(
    LoadNotifications event,
    Emitter<NotificationsState> emit,
  ) async {
    try {
      final notifications = await _getNotificationsUseCase.execute();
      emit(NotificationsState.loaded(notifications: notifications));
    } catch (e) {
      // Si falla, mantenemos el estado inicial
      emit(const NotificationsState.initial());
    }
  }

  void _onAddNotification(
    AddNotification event,
    Emitter<NotificationsState> emit,
  ) {
    if (state is NotificationsLoaded) {
      final currentState = state as NotificationsLoaded;
      // Crear una nueva lista con la notificación al inicio
      final updatedNotifications = [
        event.notification, // Agregar la nueva notificación primero
        ...currentState.notifications,
      ];
      emit(NotificationsState.loaded(notifications: updatedNotifications));
    }
  }
}
