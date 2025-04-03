import 'package:birthflow_movil/src/data/notification/datasources/notification_service.dart';
import 'package:birthflow_movil/src/data/notification/mappers/notification_mapper.dart';
import 'package:birthflow_movil/src/data/notification/models/notification_response/notification_response.dart';
import 'package:birthflow_movil/src/data/notification/models/register_token_request/register_token_request.dart';
import 'package:birthflow_movil/src/domain/notification/models/notification.dart';
import 'package:birthflow_movil/src/domain/notification/repository/notification_repository.dart';
import 'package:birthflow_movil/src/local_storage/token_storage.dart';
import 'package:logger/logger.dart';

class NotificationRepositoryImplementation implements NotificationRepository {
  final NotificationService _notificationService;
  final TokenStorage _tokenStorage = TokenStorage();
  final Logger _logger = Logger(); // Inicializar logger
  final NotificationMapper _mapper = NotificationMapper();
  NotificationRepositoryImplementation({
    required NotificationService notificationService,
  }) : _notificationService = notificationService;

  @override
  Future<void> registerDeviceToken({
    required String userId,
    required String token,
    required String deviceInfo,
  }) async {
    try {
      final request = RegisterTokenRequest(
        userId: userId,
        token: token,
        deviceInfo: deviceInfo,
      );
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final tokenAuth = 'Bearer $tokenGuardado';

      await _notificationService.registerDeviceToken(tokenAuth, request);
      _logger.i('Funcionamiento correcto');
    } catch (e, stackTrace) {
      _logger.e('Login exception', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<List<Notification>> getNotifications() async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final tokenAuth = 'Bearer $tokenGuardado';

      final response = await _notificationService.getNotifications(tokenAuth);

      return _mapper
          .convertList<NotificationResponse, Notification>(response.response!);
    } catch (e, stackTrace) {
      _logger.e('Login exception', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<List<Notification>> getPartographNotifications(
    String partographId,
  ) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final tokenAuth = 'Bearer $tokenGuardado';

      final response = await _notificationService.getPartographNotifications(
        tokenAuth,
        partographId,
      );

      return _mapper
          .convertList<NotificationResponse, Notification>(response.response!);
    } catch (e, stackTrace) {
      _logger.e('Login exception', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }

  @override
  Future<void> updateDeviceSilenceStatus(
      {required String token, required bool isSilenced}) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final tokenAuth = 'Bearer $tokenGuardado';

      await _notificationService.updateDeviceSilenceStatus(
        tokenAuth,
        token,
        isSilenced,
      );
    } catch (e, stackTrace) {
      _logger.e('Login exception', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }
}
