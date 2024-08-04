import 'package:birthflow_movil/src/data/partograph/datasources/partograph_service.dart';
import 'package:birthflow_movil/src/data/partograph/models/cervical_dilation_request/cervical_dilation_request.dart';
import 'package:birthflow_movil/src/data/partograph/models/partograph_request/partograph_request.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
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
  Future<Partograph?> createPartograph({
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
  Future<void> deletePartograph({required String partographId}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<Partograph>?> getPartograph({required String userId}) async {
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
  Future<void> updatePartograph({
    required String partogramaId,
    required String name,
    required String recordName,
    required DateTime date,
    required String observation,
  }) {
    // TODO: implement updateObservation
    throw UnimplementedError();
  }

  @override
  Future<CervicalDilation?> createCervicalDilation({
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
    required String userId,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getTokenSecurely();
      final token = 'Bearer $tokenGuardado';

      final request = CervicalDilationRequest(
        id: 0,
        partographId: partographId,
        value: value,
        hour: hour,
        remOrRam: remOrRam,
        userId: userId,
      );

      final result =
          await _partographService.createCervicalDilation(token, request);

      if (result.response == null) return null;

      return PartographMapper.toEntityCervicalDilation(result.response!);
    } catch (error) {
      return null;
    }
  }

  @override
  Future<CervicalDilation?> deleteCervicalDilation({
    required int id,
    required String userId,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getTokenSecurely();
      final token = 'Bearer $tokenGuardado';

      final request = CervicalDilationRequest(
        id: id,
        partographId: '3fa85f64-5717-4562-b3fc-2c963f66afa6',
        value: 6.0,
        hour: DateTime.now(),
        remOrRam: false,
        userId: userId,
      );

      final result =
          await _partographService.createCervicalDilation(token, request);

      if (result.response == null) return null;

      return PartographMapper.toEntityCervicalDilation(result.response!);
    } catch (error) {
      return null;
    }
  }

  @override
  Future<List<CervicalDilation>?> getCervicalDilation({
    required String partographId,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getTokenSecurely();
      final token = 'Bearer $tokenGuardado';

      final result =
          await _partographService.getCervicalDilation(token, partographId);

      if (result.response == null) return null;

      return PartographMapper.toEntityListCervicalDilation(result.response!);
    } catch (error) {
      return null;
    }
  }

  @override
  Future<CervicalDilation?> updateCervicalDilation({
    required int id,
    required String partographId,
    required double value,
    required DateTime hour,
    required bool remOrRam,
    required String userId,
  }) async {
    try {
      final tokenGuardado = await _tokenStorage.getTokenSecurely();
      final token = 'Bearer $tokenGuardado';

      final request = CervicalDilationRequest(
        id: id,
        partographId: partographId,
        value: value,
        hour: hour,
        remOrRam: remOrRam,
        userId: userId,
      );

      final result =
          await _partographService.deleteCervicalDilation(token, request);

      if (result.response == null) return null;

      return PartographMapper.toEntityCervicalDilation(result.response!);
    } catch (error) {
      return null;
    }
  }
}
