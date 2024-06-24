import 'package:birthflow_movil/src/auth/service/auth_service.dart';
import 'package:birthflow_movil/src/config/dio/dio.dart';

import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> initializeDependencies() async {


  final dio = buildDioClient('http://localhost:4000');
  locator.registerSingleton<AuthService>(AuthService(dio));

}
