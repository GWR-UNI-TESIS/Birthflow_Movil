// ignore_for_file: avoid_print

import 'dart:async';

import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/config/router/app_router.dart';
import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/core/firebase/bloc/bloc.dart';
import 'package:birthflow_movil/src/core/firebase/bloc/event/notification_event.dart';
import 'package:birthflow_movil/src/core/firebase/firebase_service.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/notification/models/notification.dart'
    as notificaciones;
import 'package:birthflow_movil/src/domain/notification/usecases/get_notifications_usecase.dart';
import 'package:birthflow_movil/src/domain/notification/usecases/register_device_token_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/alert_curves_get_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/childbirth_note_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/childbirth_note_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/contraction_frequency_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/contraction_frequency_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/fetal_heart_rate_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/fetal_heart_rate_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/medical_surveillance_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/medical_surveillance_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_list_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_state_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/presentation_position_variety_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/presentation_position_variety_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph_history/usecases/get_partograph_history_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/group_create_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/group_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/group_update_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/groups_get_usecase.dart';
import 'package:birthflow_movil/src/notifiers/error_notifier.dart';
import 'package:birthflow_movil/src/providers/catalog_cubit.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/states/authentication_state.dart';
import 'package:birthflow_movil/src/ui/groups/bloc/bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/notifications/bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/notifications/events/notifications_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph_history/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppDev extends StatelessWidget {
  final Catalog catalog;

  const AppDev({required this.catalog, super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CatalogCubit(catalog),
        ),
        BlocProvider<AuthenticationBloc>(
          create: (_) => locator<AuthenticationBloc>(),
        ),
        BlocProvider(
          create: (context) => PartographsBloc(
            locator<GetPartographListUseCase>(),
            locator<UpdatePartographStateUseCase>(),
            locator<DeletePartographUseCase>(),
          ),
        ),
        BlocProvider(
          create: (context) => NotificationBloc(
            locator<RegisterDeviceTokenUseCase>(),
          ),
        ),
        BlocProvider(
          create: (BuildContext context) => PartographBloc(
            locator<GetPartographUseCase>(),
            locator<UpdatePartographUsecase>(),
            locator<DeletePartographUseCase>(),
            locator<CreateCervicalDilationUseCase>(),
            locator<UpdateCervicalDilationUseCase>(),
            locator<DeleteCervicalDilationUseCase>(),
            locator<GetAlertCurvesUseCase>(),
            locator<CreateMedicalSurveillanceUseCase>(),
            locator<UpdateMedicalSurveillanceUseCase>(),
            locator<CreatePresentationPositionVarietyUseCase>(),
            locator<UpdatePresentationPositionVarietyUseCase>(),
            locator<CreateContractionFrequencyUseCase>(),
            locator<UpdateContractionFrequencyUseCase>(),
            locator<CreateFetalHeartRateUseCase>(),
            locator<UpdateFetalHeartRateUseCase>(),
            locator<CreateChildbirthNoteUseCase>(),
            locator<UpdateChildbirthNoteUseCase>(),
          ),
        ),
        BlocProvider(
          create: (context) => GroupsBloc(
            getGroupsUseCase: locator<GetGroupsUseCase>(),
            createGroupUseCase: locator<CreateGroupUseCase>(),
            updateGroupUseCase: locator<UpdateGroupUseCase>(),
            deleteGroupUseCase: locator<DeleteGroupUseCase>(),
          ),
        ),
        BlocProvider(
          create: (context) => NotificationsBloc(
            getNotificationsUseCase: locator<GetNotificationsUseCase>(),
          )..add(const NotificationsEvent.loadNotifications()),
        ),
        BlocProvider(
          create: (context) =>
              PartographHistoryBloc(locator<GetPartographHistoryUsecase>()),
        ),
      ],
      child: AppEntry(),
    );
  }
}

class AppEntry extends StatefulWidget {
  @override
  AppEntryState createState() => AppEntryState();
}

class AppEntryState extends State<AppEntry> {
  late final StreamSubscription<String> _errorSubscription;

  @override
  void initState() {
    super.initState();
    _errorSubscription = locator<ErrorNotifier>().stream.listen((message) {
      // Realiza la navegación usando GoRouter con el BuildContext
      GoRouter.of(context).go(AppPaths.error.path, extra: message);
    });
  }

  @override
  void dispose() {
    _errorSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthenticationBloc>();
    final AppRouter appRouter = AppRouter(authBloc: authBloc);

    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) async {
        if (state is Authenticated) {
          final userId = state.response.id;
          final firebaseService = FirebaseService();
          final notificationBloc = context.read<NotificationBloc>();
          final notificationsBloc = context.read<NotificationsBloc>();

          // Siempre registrar el token del dispositivo al iniciar sesión
          final token = await firebaseService.getDeviceToken();
          if (token != null) {
            notificationBloc
                .add(RegisterTokenEvent(userId: userId!, token: token));
            print('Token registrado al iniciar sesión: $token');
          }

          // Escucha cambios en el token
          firebaseService.listenToTokenRefresh((newToken) {
            notificationBloc
                .add(RegisterTokenEvent(userId: userId!, token: newToken));
            print('Token actualizado y reenviado al backend: $newToken');
          });

          // Escucha mensajes en primer plano
          firebaseService.listenToForegroundMessages((title, body, data) {
            final notification = notificaciones.Notification(
              notificationId: int.parse(data['NotificationId'].toString()),
              title: data['Title']?.toString() ?? title,
              message: data['Message']?.toString() ?? body,
              scheduledFor: DateTime.tryParse(
                    data['ScheduledTime']?.toString() ?? '',
                  ) ??
                  DateTime.now(),
              partographId: data['PartographId']!.toString(),
            );

            notificationsBloc
                .add(NotificationsEvent.addNotification(notification));
          });
        }
      },
      child: MaterialApp.router(
        title: 'Birthflow',
        locale: const Locale('es', 'ES'), // Establece el idioma a español
        supportedLocales: const [
          Locale('es', 'ES'),
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        scaffoldMessengerKey: locator<GlobalKey<ScaffoldMessengerState>>(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        routerConfig: appRouter.router,
      ),
    );
  }

  Future<void> registerDeviceToken(String userId,
      FirebaseService firebaseService, NotificationBloc firebaseBloc) async {
    final token = await firebaseService.getDeviceToken();
    if (token == null) return;

    final prefs = await SharedPreferences.getInstance();
    final savedToken = prefs.getString('device_token');

    if (savedToken != token) {
      // Envía el nuevo token al servidor solo si ha cambiado
      print('Enviando nuevo token al servidor: $token');
      firebaseBloc.add(RegisterTokenEvent(userId: userId, token: token));
      await prefs.setString('device_token', token);
      print('Token registrado y guardado localmente');
    } else {
      print('El token ya es válido. No se envía al servidor.');
    }
  }
}
