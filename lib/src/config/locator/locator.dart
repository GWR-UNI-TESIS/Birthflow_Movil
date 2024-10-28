import 'package:birthflow_movil/src/config/device_fingerprint/index.dart';
import 'package:birthflow_movil/src/config/dio/dio.dart';
import 'package:birthflow_movil/src/data/auth/datasources/authentication_service.dart';
import 'package:birthflow_movil/src/data/auth/repositories/authentication_repository_imp.dart';
import 'package:birthflow_movil/src/data/partograph/datasources/partograph_service.dart';
import 'package:birthflow_movil/src/data/partograph/repositories/partograph_repository_imp.dart';
import 'package:birthflow_movil/src/domain/auth/repositories/authentication_repository.dart';
import 'package:birthflow_movil/src/domain/auth/usecases/create_user_usecase.dart';
import 'package:birthflow_movil/src/domain/auth/usecases/login_usecase.dart';
import 'package:birthflow_movil/src/domain/auth/usecases/logout_usercase.dart';
import 'package:birthflow_movil/src/domain/auth/usecases/refresh_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_get_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_list_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_usecase.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> initializeDependencies() async {
  // Obtiene la URL de la API desde el archivo .env (asumiendo que existe un paquete dotenv)
  final String? apiUrl = dotenv.env['API_URL'];
  final device = await getDeviceFingerprint();
  // Crea un cliente Dio para realizar llamadas HTTP a la API
  final dio = buildDioClient(apiUrl!, device);

  // Registra el AuthenticationService como singleton en GetIt
  locator.registerSingleton<AuthenticationService>(AuthenticationService(dio));

  locator.registerSingleton<AuthenticationRepository>(
    AuthenticationRepositoryImplementation(locator<AuthenticationService>()),
  );

  locator.registerSingleton<CreateUserUsecase>(
    CreateUserUsecaseImplementation(locator<AuthenticationRepository>()),
  );

  locator.registerSingleton<LoginUsecase>(
    LoginUsecaseImplementation(locator<AuthenticationRepository>()),
  );

  locator.registerSingleton<RefreshUsecase>(
    RefreshUsecaseImplementation(locator<AuthenticationRepository>()),
  );

  locator.registerSingleton<LogoutUsecase>(
    LogoutUsecaseImplementation(locator<AuthenticationRepository>()),
  );

  // Registra el AuthenticationBloc como singleton en GetIt, inyectando AuthenticationService
  locator.registerSingleton<AuthenticationBloc>(
    AuthenticationBloc(
      locator<CreateUserUsecase>(),
      locator<LoginUsecase>(),
      locator<RefreshUsecase>(),
      locator<LogoutUsecase>(),
    ),
  );

  // Registra el PartographService como singleton en GetIt
  locator.registerSingleton<PartographService>(PartographService(dio));

  // Registra el PartographRepositoryImplementation como singleton en GetIt, inyectando PartographService
  locator.registerSingleton<PartographRepository>(
    PartographRepositoryImplementation(
      partogramaService: locator<PartographService>(),
    ),
  );

  // Registra el PartographGetUseCase como singleton en GetIt, inyectando PartographRepository
  locator.registerSingleton<PartographGetUsecase>(
    PartographGetUsecaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<PartographListGetUseCase>(
    PartographListGetUsecaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<PartographCreateUseCase>(
    PartographCreateUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CervicalDilationCreateUseCase>(
    CervicalDilationCreateUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CervicalDilationDeleteUseCase>(
    CervicalDilationDeleteUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CervicalDilationGetUseCase>(
    CervicalDilationGetUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CervicalDilationUpdateUseCase>(
    CervicalDilationUpdateUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );
}
