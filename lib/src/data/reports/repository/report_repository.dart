import 'dart:typed_data';

import 'package:birthflow_movil/src/data/reports/datasources/report_service.dart';
import 'package:birthflow_movil/src/domain/reports/repository/reports_repository.dart';
import 'package:birthflow_movil/src/local_storage/token_storage.dart';
import 'package:logger/logger.dart';

class ReportsRepositoryImplementation implements ReportsRepository {
  final ReportService _reportService;
  final Logger _logger = Logger();
  final TokenStorage _tokenStorage = TokenStorage();

  ReportsRepositoryImplementation({required ReportService reportService})
      : _reportService = reportService;

  @override
  Future<Uint8List> getPartographPdf({required String partographId}) async {
    try {
      final tokenGuardado = await _tokenStorage.getAccessToken();
      final token = 'Bearer $tokenGuardado';

      final reponse =
          await _reportService.obtenerPdfPartograma(token, partographId);

      final Uint8List pdfBytes = Uint8List.fromList(reponse.data);
      return pdfBytes;
    } catch (e, stackTrace) {
      _logger.e('Report exception', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }
}
