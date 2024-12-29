import 'package:birthflow_movil/src/domain/share/usecases/search_user_get_usecase.dart';
import 'package:birthflow_movil/src/ui/libs/cubits/search_users_state.dart/search_users_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchUsersCubit extends Cubit<SearchUsersState> {
  final GetSearchUserUseCase _getSearchUserUseCase;

  SearchUsersCubit({required GetSearchUserUseCase getSearchUserUseCase})
      : _getSearchUserUseCase = getSearchUserUseCase,
        super(const SearchUsersState.initial());

  Future<void> search(String query) async {
    emit(const SearchUsersState.loading());
    try {
      final results = await _getSearchUserUseCase.execute(query: query);
      emit(SearchUsersState.success(results ?? []));
    } catch (e) {
      emit(SearchUsersState.error(e.toString()));
    }
  }

  void clearSearch() {
    emit(const SearchUsersState.initial());
  }
}
