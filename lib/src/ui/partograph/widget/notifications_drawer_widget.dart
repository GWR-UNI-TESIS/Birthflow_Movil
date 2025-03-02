// ignore_for_file: library_prefixes

import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/domain/notification/usecases/get_partograph_notifications_usecase.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/notifications/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/notifications/events/partograph_notifications_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/notifications/states/partograph_notifications_states.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart'
    as partographState;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class NotificationDrawer extends StatelessWidget {
  final String partographId;
  const NotificationDrawer({super.key, required this.partographId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PartographNotificationBloc(
        getPartographNotificationsUseCase:
            locator<GetPartographNotificationsUseCase>(),
      )..add(
          PartographNotificationEvent.getNotifications(
            partographId: partographId,
          ),
        ),
      child: Drawer(
        child: Column(
          children: [
            AppBar(
              title: const Text('Notificaciones'),
              automaticallyImplyLeading: false,
            ),
            Expanded(
              child:
                  BlocBuilder<PartographBloc, partographState.PartographState>(
                builder: (context, state) {
                  if (state is partographState.Loaded) {
                    if (state.partograph.partographState!.silenced == false) {
                      return BlocBuilder<PartographNotificationBloc,
                          PartographNotificationState>(
                        builder: (context, state) {
                          return state.when(
                            initial: () => Container(),
                            loading: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            loaded: (notifications) => notifications.isEmpty
                                ? const Center(
                                    child: Text('No hay notificaciones'),
                                  )
                                : ListView.separated(
                                    itemCount: notifications.length,
                                    itemBuilder: (context, index) {
                                      final notification = notifications[index];
                                      final dateTime =
                                          DateFormat('yyyy-MM-dd HH:mm:ss')
                                              .parse(
                                        notification.scheduledFor.toString(),
                                        true,
                                      );
                                      final dateLocal = dateTime.toLocal();

                                      // Formatear la fecha
                                      final dayFormat =
                                          DateFormat('yyyy-MM-dd');
                                      final timeFormat = DateFormat('HH:mm:ss');
                                      final formattedDay =
                                          dayFormat.format(dateLocal);
                                      final formattedTime =
                                          timeFormat.format(dateLocal);

                                      return ListTile(
                                        title: Text(
                                          notification.title,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge,
                                        ),
                                        subtitle: Text(notification.message),
                                        trailing: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              formattedDay,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              formattedTime,
                                              style: const TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index) =>
                                        const Divider(),
                                  ),
                            error: (message) =>
                                Center(child: Text('Error: $message')),
                          );
                        },
                      );
                    } else {
                      return const Center(
                        child: Text(
                          'Se encuentra silenciadas las notificaciones para este partograma',
                        ),
                      );
                    }
                  } else {
                    return const Center(
                      child: Text(
                        'Ha ocurrido un error al encontrar el partograma',
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
