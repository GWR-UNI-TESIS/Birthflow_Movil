import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';

/// Contrato del repositorio de catálogo: obtiene los datos maestros (catálogos) de la app.
abstract class CatalogRepository {  
  /// Retorna el catálogo completo desde la fuente de datos definida.
  Future<Catalog> getCatalog(); 
} 
