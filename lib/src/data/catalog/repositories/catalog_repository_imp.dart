import 'package:birthflow_movil/src/data/catalog/datasources/catalog_service.dart';
import 'package:birthflow_movil/src/data/catalog/mapper/catalog_mapper.dart';
import 'package:birthflow_movil/src/data/catalog/models/catalog_response/catalog_response.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/catalog/repositories/catalog_repository.dart';
import 'package:logger/logger.dart';

class CatalogRepositoryImplementation implements CatalogRepository {
  final Logger _logger = Logger(); // Inicializar logger
  final CatalogMapper _mapper = CatalogMapper();
  final CatalogService _catalogService;

  CatalogRepositoryImplementation(CatalogService catalogService)
      : _catalogService = catalogService;
  @override
  Future<Catalog> getCatalog() async {
    try {
      final result = await _catalogService.getCatalog();

      final response = _mapper.convert<CatalogResponse, Catalog>(
        result.response,
      );
      return response;
    } catch (e, stackTrace) {
      _logger.e('Login exception', error: e, stackTrace: stackTrace);
      rethrow;
    }
  }
}
