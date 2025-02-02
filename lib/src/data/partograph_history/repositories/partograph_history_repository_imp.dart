import 'package:birthflow_movil/src/data/partograph_history/datasources/partograph_history_service.dart';
import 'package:birthflow_movil/src/data/partograph_history/mapper/partograph_history_mapper.dart';
import 'package:birthflow_movil/src/data/partograph_history/models/partograph_version/partograph_version_response.dart';
import 'package:birthflow_movil/src/domain/partograph_history/models/partograph_version/partograph_version.dart';
import 'package:birthflow_movil/src/domain/partograph_history/repositories/partograph_history_repository.dart';
import 'package:birthflow_movil/src/local_storage/token_storage.dart';
import 'package:logger/logger.dart';

class PartographHistoryRepositoryImplementation
    implements PartographHistoryRepository {
  final TokenStorage _tokenStorage = TokenStorage();
  final PartographHistoryService _partographHistoryService;
  final Logger _logger = Logger();
  final PartographHistoryMapper _mapper = PartographHistoryMapper();

  PartographHistoryRepositoryImplementation({
    required PartographHistoryService partographHistoryService,
  }) : _partographHistoryService = partographHistoryService;

  @override
  Future<List<PartographVersion>> get({required String partographId}) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final result = await _partographHistoryService.get(token, partographId);

      if (result.response == null) return [];

      return _mapper.convertList<PartographVersionResponse, PartographVersion>(
        result.response!,
      );
    } catch (e, stackTrace) {
      _logger.e('Partograma exception', error: e, stackTrace: stackTrace);
      return [];
    }
  }
}
