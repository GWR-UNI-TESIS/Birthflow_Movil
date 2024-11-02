import 'package:birthflow_movil/src/core/chart/generators/hodge_plane_generator.dart';
import 'package:birthflow_movil/src/core/chart/generators/medical_surveillance_generator.dart';
import 'package:birthflow_movil/src/core/chart/generators/real_curve_generator.dart';
import 'package:birthflow_movil/src/core/chart/libs/helper.dart';
import 'package:birthflow_movil/src/core/chart/libs/mapper.dart';
import 'package:birthflow_movil/src/core/chart/models/chart_data.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/events/chart_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/states/chart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChartBloc extends Bloc<ChartEvent, ChartState> {
  ChartBloc(super.initialState) {
    on<OnRefresh>(_onRefresh);
  }

  Future<void> _onRefresh(
    OnRefresh event,
    Emitter<ChartState> emit,
  ) async {
    try {
      final partograph = event.partograph;
      final cervicalDilations = partograph.cervicalDilations;
      final medicalsurveillanceData = partograph.medicalSurveillanceTable;
      final presentationPositionVarietyData =
          partograph.presentationPositionVarieties;
      if (cervicalDilations == null || cervicalDilations.isEmpty) {
        emit(const Error('Es necesario agregar una dilatacion cervical'));
      } else {
        final alertcurve = partograph.alertCurves!.alertCurve;
        final newAlertCurve = partograph.alertCurves!.newAlertCurve;

        final firstPoint =
            Helper.transformToDecimal(cervicalDilations.first.hour);

        final realCurvePoints =
            RealCurveGenerator(cervicalList: cervicalDilations).chartPoint;

        final otherPointsPoints = MedicalSurveillanceGenerator(
          medicalSurveillanceList: medicalsurveillanceData!,
          firstPoint: firstPoint,
        ).chartPoint;

        if (presentationPositionVarietyData != null ||
            presentationPositionVarietyData!.isNotEmpty) {
          final hodgePlanePoints = HodgePlaneGenerator(
            hodgePlaneList: presentationPositionVarietyData,
            firstPoint: firstPoint,
          ).chartPoint;

          otherPointsPoints!.addAll(hodgePlanePoints!);
        }

        final alertCurvePoints =
            ChartMapper.transformToChartPoint(data: alertcurve!);
        final newAlertCurvePoints =
            ChartMapper.transformToChartPoint(data: newAlertCurve!);

        emit(
          Loaded(
            chartData: ChartData(
              realCurvePoints!,
              alertCurvePoints,
              newAlertCurvePoints,
              otherPointsPoints!,
            ),
            firstItem: cervicalDilations.first.hour,
          ),
        );
      }
    } catch (e) {
      emit(Error(e.toString()));
    }
  }
}
