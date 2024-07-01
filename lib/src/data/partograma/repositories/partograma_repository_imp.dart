import 'package:birthflow_movil/src/data/partograma/datasources/partograma_service.dart';
import 'package:birthflow_movil/src/domain/partograma/entities/partograma.dart';
import 'package:birthflow_movil/src/domain/partograma/mappers/partograma_mapper.dart';
import 'package:birthflow_movil/src/domain/partograma/repositories/partograma_repository.dart';
import 'package:birthflow_movil/src/local_storage/token_storage.dart';

class PartogramaRepositoryImplementation implements PartogramaRepository {
  final PartogramaService _partogramaService;
  final TokenStorage _tokenStorage = TokenStorage();
  PartogramaRepositoryImplementation({
    required PartogramaService partogramaService,
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
  Future<List<Partograma>?> get({required String userId}) async {
    try {
      final tokenGuardado = await _tokenStorage.getTokenSecurely();
      final token = 'Bearer $tokenGuardado';
      final result = await _partogramaService.get(token, userId);
      if (result.response!.isEmpty) return [];
      return PartogramaMapper.toEntityList(result.response!);
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
