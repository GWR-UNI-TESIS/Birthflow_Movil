import 'dart:typed_data';

/// Repositorio de reportes: generación/descarga de archivos (PDF).
abstract class ReportsRepository {
  /// Obtiene el PDF del partograma como bytes (Uint8List) listo para guardar/compartir/imprimir.
  Future<Uint8List> getPartographPdf({
    required String partographId,
  });
}
