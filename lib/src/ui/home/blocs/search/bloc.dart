import 'package:birthflow_movil/src/ui/home/models/filters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SearchEvent {
  const SearchEvent();
}

class UpdateSearchQuery extends SearchEvent {
  final String query;

  const UpdateSearchQuery(this.query);
}

class UpdateFilter extends SearchEvent {
  final FilterModel filter;

  const UpdateFilter(this.filter);
}

class SearchState {
  final String query;
  final FilterModel filter;

  SearchState({
    this.query = '',
    required this.filter,
  });

  SearchState copyWith({String? query, FilterModel? filter}) {
    return SearchState(
      query: query ?? this.query,
      filter: filter ?? this.filter,
    );
  }
}

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc()
      : super(
          SearchState(
            filter: FilterModel(
              filter: Filters.all,
              actividad: 'Creado por mi',
              hora: 'En cualquier momento',
            ),
          ),
        ) {
    on<UpdateSearchQuery>((event, emit) {
      emit(state.copyWith(query: event.query));
    });

    on<UpdateFilter>((event, emit) {
      emit(state.copyWith(filter: event.filter));
    });
  }
}
