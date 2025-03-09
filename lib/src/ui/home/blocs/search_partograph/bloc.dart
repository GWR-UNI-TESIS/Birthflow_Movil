import 'package:birthflow_movil/src/domain/partograph/usecases/search_partographs_usecase.dart';
import 'package:birthflow_movil/src/ui/home/blocs/search_partograph/events/search_partograph_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/search_partograph/states/search_partograph_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPartographBloc extends Bloc<SearchPartographEvent, SearchPartographState> {
  final SearchPartographsUseCase _searchPartographsUseCase;

  SearchPartographBloc({
    required SearchPartographsUseCase searchPartographsUseCase,
  })  : _searchPartographsUseCase = searchPartographsUseCase,
        super(const SearchPartographState.initial()) {
    on<SearchPartographEvent>((event, emit) async {
      await event.when(
        search: (name, filterId, activityId, hourFilterId) async {
          emit(const SearchPartographState.loading());
          try {
            final results = await _searchPartographsUseCase.execute(
              name: name,
              filterId: filterId,
              activityId: activityId,
              hourFilterId: hourFilterId,
            );
            if (results == null || results.isEmpty) {
              emit(const SearchPartographState.empty());
            } else {
              emit(SearchPartographState.success(results: results));
            }
          } catch (e) {
            emit(SearchPartographState.error(message: e.toString()));
          }
        },
      );
    });
  }
}
