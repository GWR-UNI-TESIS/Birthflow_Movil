import 'dart:typed_data';

abstract class ReportsRepository {
  Future<Uint8List> getPartographPdf({
    required String partographId,
  });
}
