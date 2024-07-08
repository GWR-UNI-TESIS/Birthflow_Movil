import 'package:birthflow_movil/src/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/auth/service/authentication_service.dart';
import 'package:birthflow_movil/src/config/dio/dio.dart';
import 'package:birthflow_movil/src/data/partograph/datasources/partograph_service.dart';
import 'package:birthflow_movil/src/data/partograph/repositories/partograph_repository_imp.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_usecase.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> initializeDependencies() async {
  final String? apiUrl = dotenv.env['API_URL'];
  final dio = buildDioClient(apiUrl!);

  locator.registerSingleton<AuthenticationService>(AuthenticationService(dio));

  locator.registerSingleton<AuthenticationBloc>(
    AuthenticationBloc(locator<AuthenticationService>()),
  );

  locator.registerSingleton<PartographService>(PartographService(dio));

  locator.registerSingleton<PartographRepository>(
    PartographRepositoryImplementation(
      partogramaService: locator<PartographService>(),
    ),
  );

  locator.registerSingleton<PartographGetUseCase>(
    PartographGetUseCase(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );
}
