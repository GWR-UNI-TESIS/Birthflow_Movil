import 'package:birthflow_movil/src/domain/share/usecases/search_user_group_get_usecase.dart';
import 'package:birthflow_movil/src/ui/home/cubits/state/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserGroupSearchCubit extends Cubit<SearchState> {
  final GetSearchUserGroupUseCase _getGroupUseCase;

  UserGroupSearchCubit({required GetSearchUserGroupUseCase getGroupUseCase})
      : _getGroupUseCase = getGroupUseCase,
        super(const SearchState.initial());

  Future<void> search(String query) async {
    emit(const SearchState.loading());
    try {
      final results = await _getGroupUseCase.execute(query: query);
      emit(SearchState.success(results ?? []));
    } catch (e) {
      emit(const SearchState.error('Ocurrio un error buscando los usuarios y grupos'));
    }
  }

  void clearSearch() {
    emit(const SearchState.initial());
  }
}
