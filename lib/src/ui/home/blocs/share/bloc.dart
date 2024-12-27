import 'package:birthflow_movil/src/domain/share/usecases/search_user_group_get_usecase.dart';
import 'package:birthflow_movil/src/ui/home/blocs/share/events/share_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/share/states/share_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShareBloc extends Bloc<ShareEvent, ShareState> {
  final GetSearchUserGroupUseCase _getGroupUseCase;

  ShareBloc({required GetSearchUserGroupUseCase getGroupUseCase})
      : _getGroupUseCase = getGroupUseCase,
        super(const ShareState.loading()) {

    on<SearchUsersGroups>((event, emit) async {
      emit(const ShareState.loading());
      try {
        final groups = await _getGroupUseCase.execute(query: event.query);
        emit(ShareState.loaded(groups: groups ?? []));
      } catch (e) {
        emit(ShareState.error(message: e.toString()));
      }
    });
  }
}
