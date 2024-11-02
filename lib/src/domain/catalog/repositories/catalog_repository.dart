import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';

abstract class CatalogRepository {  
  Future<Catalog> getCatalog(); 
} 
