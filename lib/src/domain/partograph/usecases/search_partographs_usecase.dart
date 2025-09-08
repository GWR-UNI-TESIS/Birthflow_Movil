import 'package:birthflow_movil/src/domain/partograph/entities/partograph_list.dart';
import 'package:birthflow_movil/src/domain/partograph/repositories/partograph_repository.dart';

/// Caso de uso: búsqueda de partogramas con filtros.
abstract class SearchPartographsUseCase {
  /// Ejecuta la búsqueda por [name] y filtros de estado/actividad/tiempo.
  Future<List<PartographList>?> execute({
    required String name,       // texto a buscar
    required int filterId,      // filtro general (según dominio)
    required int activityId,    // actividad/estado
    required int hourFilterId,  // ventana horaria
  });
}

/// Implementación que delega la búsqueda al repositorio.
class SearchPartographsUseCaseImplementation
    implements SearchPartographsUseCase {
  final PartographRepository _partographRepository;

  SearchPartographsUseCaseImplementation({
    required PartographRepository partographRepository,
  }) : _partographRepository = partographRepository;

  @override
  Future<List<PartographList>?> execute({
    required String name,
    required int filterId,
    required int activityId,
    required int hourFilterId,
  }) async => await _partographRepository.searchPartographs(
      name: name,
      filterId: filterId,
      activityId: activityId,
      hourFilterId: hourFilterId,
    );
}
