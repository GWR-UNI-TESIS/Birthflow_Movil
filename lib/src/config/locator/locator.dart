import 'package:birthflow_movil/src/auth/bloc/auth_bloc.dart';
import 'package:birthflow_movil/src/auth/service/auth_service.dart';
import 'package:birthflow_movil/src/config/dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> initializeDependencies() async {
  final String? apiUrl = dotenv.env['API_URL'];
  final dio = buildDioClient(apiUrl!);

  locator.registerSingleton<AuthService>(AuthService(dio));

  locator.registerSingleton<AuthenticationBloc>(
    AuthenticationBloc(locator<AuthService>()),
  );
}
