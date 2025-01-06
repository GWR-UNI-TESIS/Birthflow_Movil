import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogCubit extends Cubit<Catalog> {
  // Constructor que inicializa el estado con el catálogo cargado
  CatalogCubit(super.catalog);
}
