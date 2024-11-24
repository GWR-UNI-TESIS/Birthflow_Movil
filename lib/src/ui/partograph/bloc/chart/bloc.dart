import 'package:birthflow_movil/src/core/chart/generators/hodge_plane_generator.dart';
import 'package:birthflow_movil/src/core/chart/generators/medical_surveillance_generator.dart';
import 'package:birthflow_movil/src/core/chart/generators/real_curve_generator.dart';
import 'package:birthflow_movil/src/core/chart/libs/helper.dart';
import 'package:birthflow_movil/src/core/chart/libs/mapper.dart';
import 'package:birthflow_movil/src/core/chart/models/chart_data.dart';
import 'package:birthflow_movil/src/core/chart/models/chart_point.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/events/chart_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/states/chart_state.dart';
import 'package:birthflow_movil/src/ui/providers/catalog_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChartBloc extends Bloc<ChartEvent, ChartState> {
  final CatalogCubit catalogCubit;

  ChartBloc(this.catalogCubit, super.initialState) {
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

      final catalogState = catalogCubit.state;
      if (cervicalDilations == null || cervicalDilations.isEmpty) {
        emit(const Error('Es necesario agregar una dilatacion cervical'));
      } else {
        final alertcurve = partograph.curves!.alertCurve;
        final newAlertCurve = partograph.curves!.newAlertCurve;

        final firstPoint =
            Helper.transformToDecimal(cervicalDilations.first.hour);

        final realCurvePoints =
            RealCurveGenerator(cervicalList: cervicalDilations).chartPoint;

        List<ChartPoint>? otherPointsPoints = [];

        if (medicalsurveillanceData != null &&
            medicalsurveillanceData.isNotEmpty) {
          otherPointsPoints = MedicalSurveillanceGenerator(
            medicalSurveillanceList: medicalsurveillanceData,
            firstPoint: firstPoint,
          ).chartPoint;
        }

        if (presentationPositionVarietyData != null &&
            presentationPositionVarietyData.isNotEmpty) {
          final hodgePlanePoints = HodgePlaneGenerator(
            hodgePlaneList: presentationPositionVarietyData,
            firstPoint: firstPoint,
            catalog: catalogState,
          ).chartPoint;

          otherPointsPoints!.addAll(hodgePlanePoints!);
        }

        final alertCurvePoints =
            ChartMapper.transformToChartPoint(data: alertcurve!);
        final newAlertCurvePoints = (newAlertCurve != null)
            ? ChartMapper.transformToChartPoint(data: newAlertCurve)
            : List<ChartPoint>.empty();

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
