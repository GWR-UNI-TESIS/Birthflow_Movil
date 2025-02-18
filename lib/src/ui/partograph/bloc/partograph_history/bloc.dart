import 'package:birthflow_movil/src/domain/partograph_history/models/partograph_version/partograph_version.dart';
import 'package:birthflow_movil/src/domain/partograph_history/usecases/get_partograph_history_usecase.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph_history/events/partograph_history_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph_history/states/partograph_history_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartographHistoryBloc
    extends Bloc<PartographHistoryEvent, PartographHistoryState> {
  final GetPartographHistoryUsecase _getPartographHistoryUsecase;

  PartographHistoryBloc(this._getPartographHistoryUsecase)
      : super(const PartographHistoryState.initial()) {
    on<FetchHistory>(_onFetchHistory);
    on<SelectVersion>(_onSelectVersion);
  }

  Future<void> _onFetchHistory(
    FetchHistory event,
    Emitter<PartographHistoryState> emit,
  ) async {
    emit(const PartographHistoryState.loading());

    try {
      final versions = await _getPartographHistoryUsecase.execute(
        partographId: event.partographId,
      );

      // Encontrar la versión actual (la más reciente por fecha)
      PartographVersion? currentVersion;
      if (versions.isNotEmpty) {
        // Ordenar las versiones por fecha (de más reciente a más antigua)
        versions.sort((a, b) => b.changedAt.compareTo(a.changedAt));
        currentVersion = versions.first; // La primera es la más reciente
      }
      emit(PartographHistoryState.loaded(
        versions: versions,
        selectedVersion: currentVersion,
        previousVersion: versions.length > 1
            ? versions[1]
            : null, // La segunda es la anterior
      ));
    } catch (e) {
      emit(PartographHistoryState.error(e.toString()));
    }
  }

  Future<void> _onSelectVersion(
    SelectVersion event,
    Emitter<PartographHistoryState> emit,
  ) async {
    final currentState = state;
    if (currentState is Loaded) {
      final selectedIndex = currentState.versions.indexOf(event.version);
      final previousVersion =
          selectedIndex > 0 ? currentState.versions[selectedIndex - 1] : null;
      emit(
        currentState.copyWith(
          selectedVersion: event.version,
          previousVersion: previousVersion,
        ),
      );
    }
  }
}
