import 'package:birthflow_movil/src/data/partograph/datasources/partograph_service.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/domain/partograph/mappers/partograph_mapper.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';
import 'package:birthflow_movil/src/local_storage/token_storage.dart';

class PartographRepositoryImplementation implements PartographRepository {
  final PartographService _partogramaService;
  final TokenStorage _tokenStorage = TokenStorage();
  PartographRepositoryImplementation({
    required PartographService partogramaService,
  }) : _partogramaService = partogramaService;

  @override
  Future<void> create({
    required String partogramaId,
    required String nombrePaciente,
    required String nExpediente,
    required DateTime fecha,
    required String comentario,
  }) {
    // TODO: implement create
    throw UnimplementedError();
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
      final result = await _partogramaService.get(token, userId);
      if (result.response!.isEmpty) return [];
      return PartographMapper.toEntityList(result.response!);
    } catch (error) {
      // ignore: avoid_print
      print(error);
      return null;
    }
  }

  @override
  Future<void> updateObservation({
    required String partogramaId,
    required String nombrePaciente,
    required String nExpediente,
    required DateTime fecha,
    required String comentario,
  }) {
    // TODO: implement updateObservation
    throw UnimplementedError();
  }
}
