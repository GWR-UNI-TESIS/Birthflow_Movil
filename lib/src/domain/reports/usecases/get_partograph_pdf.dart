import 'dart:typed_data';

import 'package:birthflow_movil/src/domain/reports/repository/reports_repository.dart';

abstract class GetPartographPdf {
  Future<Uint8List> execute({
    required String partographId,
  });
}

class GetPartographPdfImplementation implements GetPartographPdf {
  final ReportsRepository _reportsRepository;

  GetPartographPdfImplementation({
    required ReportsRepository reportsRepository,
  }) : _reportsRepository = reportsRepository;

  @override
  Future<Uint8List> execute({
    required String partographId,
  }) async {
    return await _reportsRepository.getPartographPdf(
      partographId: partographId,
    );
  }
}
