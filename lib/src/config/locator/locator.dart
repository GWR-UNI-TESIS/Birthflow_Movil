import 'package:birthflow_movil/src/config/dio/dio.dart';
import 'package:birthflow_movil/src/data/auth/datasources/auth_rest_client.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> initializeDependencies() async {
  final dio = buildDioClient('');

  locator.registerLazySingleton<AuthRestClient>(() => AuthRestClient(dio));

}
