import 'package:birthflow_movil/src/auth/bloc/auth_bloc.dart';
import 'package:birthflow_movil/src/auth/service/auth_service.dart';
import 'package:birthflow_movil/src/config/dio/dio.dart';
import 'package:birthflow_movil/src/data/partograma/datasources/partograma_service.dart';
import 'package:birthflow_movil/src/data/partograma/repositories/partograma_repository_imp.dart';
import 'package:birthflow_movil/src/domain/partograma/repositories/partograma_repository.dart';
import 'package:birthflow_movil/src/domain/partograma/usecases/partograma_get_usecase.dart';
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

  locator.registerSingleton<PartogramaService>(PartogramaService(dio));

  locator.registerSingleton<PartogramaRepository>(
    PartogramaRepositoryImplementation(
      partogramaService: locator<PartogramaService>(),
    ),
  );

  locator.registerSingleton<PartogramaGetUseCase>(
    PartogramaGetUseCase(
      partogramaRepository: locator<PartogramaRepository>(),
    ),
  );
}
