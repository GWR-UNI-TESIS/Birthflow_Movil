import 'package:birthflow_movil/src/domain/partograph/entities/partograph_list.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_list_usecase.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/states_events/partographs_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/states_events/partographs_state.dart';
import 'package:birthflow_movil/src/ui/home/models/filters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartographsBloc extends Bloc<PartographsEvent, PartographsState> {
  final GetPartographListUseCase _partographsGetUseCase;
  List<PartographList> _allPartographs = [];


  PartographsBloc(this._partographsGetUseCase)
      : super(const PartographsState.initial()) {
    on<FetchPartographs>(_onPostFetched);
    on<ApplyFiltersAndSearch>(_onApplyFiltersAndSearch);
  }

  Future<void> _onPostFetched(
    FetchPartographs event,
    Emitter<PartographsState> emit,
  ) async {
    emit(const PartographsState.loading());
    try {
      final result = await _partographsGetUseCase.execute(userId: event.userId!);
      if (result != null) {
        _allPartographs = result;
        if (result.isEmpty) {
          emit(const PartographsState.empty());
        } else {
          emit(PartographsState.loaded(result));
        }
      }
    } catch (e) {
      emit(const PartographsState.error('Error al cargar los partograma'));
    }
  }

 void _onApplyFiltersAndSearch(
    ApplyFiltersAndSearch event,
    Emitter<PartographsState> emit,
  ) {
    List<PartographList> filteredPartographs = _allPartographs;

    if (event.filter.filter != Filters.all) {
      // Aplicar filtro basado en el tipo de filtro
      filteredPartographs = filteredPartographs.where((partograph) {
        // Condiciones de filtrado según el tipo de filtro
        return true; // Reemplazar con condiciones reales
      }).toList();
    }

    if (event.searchText.isNotEmpty) {
      filteredPartographs = filteredPartographs.where((partograph) {
        return partograph.name
            .toLowerCase()
            .contains(event.searchText.toLowerCase());
      }).toList();
    }

    if (filteredPartographs.isEmpty) {
      emit(const Empty());
    } else {
      emit(Loaded(filteredPartographs));
    }
  }
}
