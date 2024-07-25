import 'package:birthflow_movil/src/data/partograph/datasources/partograph_service.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_request/partograph_request.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/mappers/partograph_mapper.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';
import 'package:birthflow_movil/src/local_storage/token_storage.dart';

class PartographRepositoryImplementation implements PartographRepository {
  final PartographService _partographService;
  final TokenStorage _tokenStorage = TokenStorage();
  PartographRepositoryImplementation({
    required PartographService partogramaService,
  }) : _partographService = partogramaService;

  @override
  Future<Partograph?> create({
    required String partogramaId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
    required String worktime,
    required String createBy,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getTokenSecurely();
      final token = 'Bearer $tokenGuardado';

      final request = PartographRequest(
        // ignore: avoid_redundant_argument_values
        partographId: null,
        name: name,
        recordName: recordName,
        date: date.toIso8601String(),
        observation: observation,
        workTime: worktime,
        createdBy: createBy,
      );
      
      final result = await _partographService.create(token, request);

      if (result.response == null) return null;

      return PartographMapper.toEntity(result.response!);
    } catch (error) {
      return null;
    }
  }

  @override
  Future<void> delete({required String partogramaId}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<Partograph>?> get({required String userId}) async {
    try {
      final tokenGuardado = await _tokenStorage.getTokenSecurely();
      final token = 'Bearer $tokenGuardado';
      final result = await _partographService.get(token, userId);

      if (result.response == null) return [];

      return PartographMapper.toEntityList(result.response!);
    } catch (error) {
      return [];
    }
  }

  @override
  Future<void> updateObservation({
    required String partogramaId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
  }) {
    // TODO: implement updateObservation
    throw UnimplementedError();
  }
}
