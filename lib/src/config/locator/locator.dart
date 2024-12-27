import 'package:birthflow_movil/src/config/device_fingerprint/index.dart';
import 'package:birthflow_movil/src/config/dio/dio.dart';
import 'package:birthflow_movil/src/data/auth/datasources/authentication_service.dart';
import 'package:birthflow_movil/src/data/auth/repositories/authentication_repository_imp.dart';
import 'package:birthflow_movil/src/data/catalog/datasources/catalog_service.dart';
import 'package:birthflow_movil/src/data/catalog/repositories/catalog_repository_imp.dart';
import 'package:birthflow_movil/src/data/partograph/datasources/partograph_service.dart';
import 'package:birthflow_movil/src/data/partograph/repositories/partograph_repository_imp.dart';
import 'package:birthflow_movil/src/data/share/datasources/share_service.dart';
import 'package:birthflow_movil/src/data/share/repository/share_repository_imp.dart';
import 'package:birthflow_movil/src/domain/auth/repositories/authentication_repository.dart';
import 'package:birthflow_movil/src/domain/auth/usecases/create_user_usecase.dart';
import 'package:birthflow_movil/src/domain/auth/usecases/login_usecase.dart';
import 'package:birthflow_movil/src/domain/auth/usecases/logout_usercase.dart';
import 'package:birthflow_movil/src/domain/auth/usecases/refresh_usecase.dart';
import 'package:birthflow_movil/src/domain/catalog/repositories/catalog_repository.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/alert_curves_get_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_get_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/childbirth_note_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/childbirth_note_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/contraction_frequency_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/contraction_frequency_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/fetal_heart_rate_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/fetal_heart_rate_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/medical_surveillance_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/medical_surveillance_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_list_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/presentation_position_variety_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/presentation_position_variety_update_usecase.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';
import 'package:birthflow_movil/src/domain/share/usecases/search_user_group_get_usecase.dart';
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

  locator.registerSingleton<CatalogService>(CatalogService(dio));

  locator.registerSingleton<CatalogRepository>(
    CatalogRepositoryImplementation(locator<CatalogService>()),
  );

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

  // Registra el GetPartographUseCase como singleton en GetIt, inyectando PartographRepository
  locator.registerSingleton<GetPartographUseCase>(
    GetPartographUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<GetPartographListUseCase>(
    GetPartographListUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CreatePartographUseCase>(
    CreatePartographUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<UpdatePartographUsecase>(
    UpdatePartographUsecaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CreateCervicalDilationUseCase>(
    CreateCervicalDilationUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<DeleteCervicalDilationUseCase>(
    DeleteCervicalDilationUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<GetCervicalDilationUseCase>(
    GetCervicalDilationUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<UpdateCervicalDilationUseCase>(
    UpdateCervicalDilationUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<GetAlertCurvesUseCase>(
    GetAlertCurvesUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CreateMedicalSurveillanceUseCase>(
    CreateMedicalSurveillanceUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<UpdateMedicalSurveillanceUseCase>(
    UpdateMedicalSurveillanceUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CreatePresentationPositionVarietyUseCase>(
    CreatePresentationPositionVarietyUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<UpdatePresentationPositionVarietyUseCase>(
    UpdatePresentationPositionVarietyUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CreateContractionFrequencyUseCase>(
    CreateContractionFrequencyUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<UpdateContractionFrequencyUseCase>(
    UpdateContractionFrequencyUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CreateFetalHeartRateUseCase>(
    CreateFetalHeartRateUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<UpdateFetalHeartRateUseCase>(
    UpdateFetalHeartRateUseCaseImplementation(
      partogramaRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CreateChildbirthNoteUseCase>(
    CreateChildbirthNoteUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<UpdateChildbirthNoteUseCase>(
    UpdateChildbirthNoteUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<ShareService>(ShareService(dio));

  locator.registerSingleton<ShareRepository>(
    ShareRepositoryImplementation(
      shareService: locator<ShareService>(),
    ),
  );

  locator.registerSingleton<GetSearchUserGroupUseCase>(
    GetSearchUserGroupUseCaseImplementation(
      shareRepository: locator<ShareRepository>(),
    ),
  );
}
