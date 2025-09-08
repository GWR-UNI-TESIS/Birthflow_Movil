import 'package:birthflow_movil/src/domain/partograph_history/models/partograph_version/partograph_version.dart';

/// Repositorio de historial del partograma (versiones).
abstract class PartographHistoryRepository {
  /// Obtiene las versiones asociadas a [partographId].
  Future<List<PartographVersion>> get({required String partographId});
}
