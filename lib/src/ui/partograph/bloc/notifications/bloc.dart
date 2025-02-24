
import 'package:birthflow_movil/src/domain/notification/usecases/get_partograph_notifications_usecase.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/notifications/events/partograph_notifications_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/notifications/states/partograph_notifications_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartographNotificationBloc
    extends Bloc<PartographNotificationEvent, PartographNotificationState> {
  final GetPartographNotificationsUseCase getPartographNotificationsUseCase;

  PartographNotificationBloc({
    required this.getPartographNotificationsUseCase,
  }) : super(const PartographNotificationState.initial()) {
    on<GetNotifications>((event, emit) async {
      emit(const PartographNotificationState.loading());
      try {
        final notifications =
            await getPartographNotificationsUseCase.execute(event.partographId);
        emit(PartographNotificationState.loaded(notifications: notifications));
      } catch (e) {
        emit(PartographNotificationState.error(message: e.toString()));
      }
    });
  }
}
