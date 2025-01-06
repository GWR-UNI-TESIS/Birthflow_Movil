import 'package:birthflow_movil/src/config/device_fingerprint/index.dart';
import 'package:birthflow_movil/src/config/dio/dio.dart';
import 'package:birthflow_movil/src/core/firebase/firebase_service.dart';
import 'package:birthflow_movil/src/data/account/datasources/account_service.dart';
import 'package:birthflow_movil/src/data/account/repository/account_repository_imp.dart';
import 'package:birthflow_movil/src/data/auth/datasources/authentication_service.dart';
import 'package:birthflow_movil/src/data/auth/repositories/authentication_repository_imp.dart';
import 'package:birthflow_movil/src/data/catalog/datasources/catalog_service.dart';
import 'package:birthflow_movil/src/data/catalog/repositories/catalog_repository_imp.dart';
import 'package:birthflow_movil/src/data/notification/datasources/notification_service.dart';
import 'package:birthflow_movil/src/data/notification/repository/notification_repository_imp.dart';
import 'package:birthflow_movil/src/data/partograph/datasources/partograph_service.dart';
import 'package:birthflow_movil/src/data/partograph/repositories/partograph_repository_imp.dart';
import 'package:birthflow_movil/src/data/share/datasources/share_service.dart';
import 'package:birthflow_movil/src/data/share/repository/share_repository_imp.dart';
import 'package:birthflow_movil/src/domain/account/repository/account_repository.dart';
import 'package:birthflow_movil/src/domain/account/usecases/change_password_use_case.dart';
import 'package:birthflow_movil/src/domain/account/usecases/request_reset_use_case.dart';
import 'package:birthflow_movil/src/domain/account/usecases/reset_password_use_case.dart';
import 'package:birthflow_movil/src/domain/account/usecases/validate_otp_use_case.dart';
import 'package:birthflow_movil/src/domain/auth/repositories/authentication_repository.dart';
import 'package:birthflow_movil/src/domain/auth/usecases/create_user_usecase.dart';
import 'package:birthflow_movil/src/domain/auth/usecases/login_usecase.dart';
import 'package:birthflow_movil/src/domain/auth/usecases/logout_usercase.dart';
import 'package:birthflow_movil/src/domain/auth/usecases/refresh_usecase.dart';
import 'package:birthflow_movil/src/domain/catalog/repositories/catalog_repository.dart';
import 'package:birthflow_movil/src/domain/notification/repository/notification_repository.dart';
import 'package:birthflow_movil/src/domain/notification/usecases/get_notifications_usecase.dart';
import 'package:birthflow_movil/src/domain/notification/usecases/register_device_token_usecase.dart';
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
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_state_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/presentation_position_variety_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/presentation_position_variety_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/search_partographs_usecase.dart';
import 'package:birthflow_movil/src/domain/share/repository/share_repository.dart';
import 'package:birthflow_movil/src/domain/share/usecases/asign_user_group_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/get_asign_user_group_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/group_create_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/group_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/group_update_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/groups_get_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/search_user_get_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/search_user_group_get_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/user_group_create_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/user_group_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/users_in_group_get_usecase.dart';
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
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<GetPartographListUseCase>(
    GetPartographListUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CreatePartographUseCase>(
    CreatePartographUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<UpdatePartographUsecase>(
    UpdatePartographUsecaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CreateCervicalDilationUseCase>(
    CreateCervicalDilationUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<DeleteCervicalDilationUseCase>(
    DeleteCervicalDilationUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<GetCervicalDilationUseCase>(
    GetCervicalDilationUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<UpdateCervicalDilationUseCase>(
    UpdateCervicalDilationUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<GetAlertCurvesUseCase>(
    GetAlertCurvesUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CreateMedicalSurveillanceUseCase>(
    CreateMedicalSurveillanceUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<UpdateMedicalSurveillanceUseCase>(
    UpdateMedicalSurveillanceUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CreatePresentationPositionVarietyUseCase>(
    CreatePresentationPositionVarietyUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<UpdatePresentationPositionVarietyUseCase>(
    UpdatePresentationPositionVarietyUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CreateContractionFrequencyUseCase>(
    CreateContractionFrequencyUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<UpdateContractionFrequencyUseCase>(
    UpdateContractionFrequencyUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<CreateFetalHeartRateUseCase>(
    CreateFetalHeartRateUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<UpdateFetalHeartRateUseCase>(
    UpdateFetalHeartRateUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
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

  locator.registerSingleton<SearchPartographsUseCase>(
    SearchPartographsUseCaseImplementation(
      partographRepository: locator<PartographRepository>(),
    ),
  );

  locator.registerSingleton<UpdatePartographStateUseCase>(
    UpdatePartographStateUseCaseImplementation(
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

  locator.registerSingleton<GetAsignUserGroupUseCase>(
    GetAsignUserGroupUseCaseImplementation(
      shareRepository: locator<ShareRepository>(),
    ),
  );

  locator.registerSingleton<AsignUserGroupUseCase>(
    AsignUserGroupUseCaseImplementation(
      shareRepository: locator<ShareRepository>(),
    ),
  );

  locator.registerSingleton<GetGroupsUseCase>(
    GetGroupsUseCaseImplementation(
      shareRepository: locator<ShareRepository>(),
    ),
  );

  locator.registerSingleton<CreateGroupUseCase>(
    CreateGroupUseCaseImplementation(
      shareRepository: locator<ShareRepository>(),
    ),
  );

  locator.registerSingleton<UpdateGroupUseCase>(
    UpdateGroupUseCaseImplementation(
      shareRepository: locator<ShareRepository>(),
    ),
  );

  locator.registerSingleton<DeleteGroupUseCase>(
    DeleteGroupUseCaseImplementation(
      shareRepository: locator<ShareRepository>(),
    ),
  );

  locator.registerSingleton<GetUsersInGroupUseCase>(
    GetUsersInGroupUseCaseImplementation(
      shareRepository: locator<ShareRepository>(),
    ),
  );
  locator.registerSingleton<CreateUserGroupUseCase>(
    CreateUserGroupUseCaseImplementation(
      shareRepository: locator<ShareRepository>(),
    ),
  );
  locator.registerSingleton<DeleteUserGroupUseCase>(
    DeleteUserGroupUseCaseImplementation(
      shareRepository: locator<ShareRepository>(),
    ),
  );

  locator.registerSingleton<GetSearchUserUseCase>(
    GetSearchUserUseCaseImplementation(
      shareRepository: locator<ShareRepository>(),
    ),
  );

  locator.registerSingleton<NotificationService>(NotificationService(dio));

  locator.registerSingleton<NotificationRepository>(
    NotificationRepositoryImplementation(
      notificationService: locator<NotificationService>(),
    ),
  );

  locator.registerSingleton<RegisterDeviceTokenUseCase>(
    RegisterDeviceTokenUseCaseImplementation(
      notificationRepository: locator<NotificationRepository>(),
    ),
  );

  locator.registerSingleton<GetNotificationsUseCase>(
    GetNotificationsUseCaseImplementation(
      notificationRepository: locator<NotificationRepository>(),
    ),
  );

  locator.registerSingleton<AccountService>(AccountService(dio));

  locator.registerSingleton<AccountRepository>(
    AccountRepositoryImplementation(
      accountService: locator<AccountService>(),
    ),
  );

  locator.registerSingleton<ChangePasswordUseCase>(
    ChangePasswordUseCaseImplementation(
      accountRepository: locator<AccountRepository>(),
    ),
  );

  locator.registerSingleton<RequestResetCodeUseCase>(
    RequestResetCodeUseCaseImplementation(
      accountRepository: locator<AccountRepository>(),
    ),
  );

  locator.registerSingleton<ValidateOtpUseCase>(
    ValidateOtpUseCaseImplementation(
      accountRepository: locator<AccountRepository>(),
    ),
  );
  locator.registerSingleton<ResetPasswordUseCase>(
    ResetPasswordUseCaseImplementation(
      accountRepository: locator<AccountRepository>(),
    ),
  );
  locator.registerLazySingleton(() => FirebaseService());
}
