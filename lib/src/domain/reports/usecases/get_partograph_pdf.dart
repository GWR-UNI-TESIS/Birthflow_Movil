import 'dart:typed_data';

import 'package:birthflow_movil/src/domain/reports/repository/reports_repository.dart';

/// Caso de uso: obtener el PDF del partograma.
abstract class GetPartographPdf {
  /// Devuelve el PDF como bytes (Uint8List) para guardar/compartir.
  Future<Uint8List> execute({
    required String partographId,
  });
}

/// Implementación que delega en ReportsRepository.
class GetPartographPdfImplementation implements GetPartographPdf {
  final ReportsRepository _reportsRepository;

  GetPartographPdfImplementation({
    required ReportsRepository reportsRepository,
  }) : _reportsRepository = reportsRepository;

  @override
  Future<Uint8List> execute({
    required String partographId,
  }) async {
    // Delegación directa al repositorio de reportes.
    return await _reportsRepository.getPartographPdf(
      partographId: partographId,
    );
  }
}
