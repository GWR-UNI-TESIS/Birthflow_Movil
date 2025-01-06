import 'package:birthflow_movil/src/core/chart/generators/contraction_frequency_generator.dart';
import 'package:birthflow_movil/src/core/chart/generators/fetal_heart_rate_generator.dart';
import 'package:birthflow_movil/src/core/chart/generators/hodge_plane_generator.dart';
import 'package:birthflow_movil/src/core/chart/generators/medical_surveillance_generator.dart';
import 'package:birthflow_movil/src/core/chart/generators/real_curve_generator.dart';
import 'package:birthflow_movil/src/core/chart/libs/mapper.dart';
import 'package:birthflow_movil/src/core/chart/models/chart_data.dart';
import 'package:birthflow_movil/src/core/chart/models/chart_point.dart';
import 'package:birthflow_movil/src/providers/catalog_cubit.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/events/chart_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/states/chart_state.dart';
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

      final fetalHeartRateData = partograph.fetalHeartRates;
      final contractionFrequencyData = partograph.contractionFrequencies;
      final catalogState = catalogCubit.state;
      if (cervicalDilations == null || cervicalDilations.isEmpty) {
        emit(const Error('Es necesario agregar una dilatacion cervical'));
      } else {
        final alertcurve = partograph.curves!.alertCurve;
        final newAlertCurve = partograph.curves!.newAlertCurve;

        final startTime = cervicalDilations.first.hour;

        final realCurvePoints =
            RealCurveGenerator(cervicalList: cervicalDilations).chartPoint;

        List<ChartPoint>? otherPointsPoints = [];

        if (medicalsurveillanceData != null &&
            medicalsurveillanceData.isNotEmpty) {
          otherPointsPoints = MedicalSurveillanceGenerator(
            medicalSurveillanceList: medicalsurveillanceData,
            startTime: startTime,
          ).chartPoint;
        }

        if (presentationPositionVarietyData != null &&
            presentationPositionVarietyData.isNotEmpty) {
          final hodgePlanePoints = HodgePlaneGenerator(
            hodgePlaneList: presentationPositionVarietyData,
            startTime: startTime,
            catalog: catalogState,
          ).chartPoint;

          otherPointsPoints!.addAll(hodgePlanePoints!);
        }

        if (fetalHeartRateData != null && fetalHeartRateData.isNotEmpty) {
          final fetalHeartRate = FetalHeartRateGenerator(
            fetalHeartRateList: fetalHeartRateData,
            startTime: startTime,
          ).chartPoint;
          otherPointsPoints!.addAll(fetalHeartRate!);
        }

        if (contractionFrequencyData != null &&
            contractionFrequencyData.isNotEmpty) {
          final contractionFrequency = ContractionFrequencyGenerator(
            contractionFrequencyList: contractionFrequencyData,
            startTime: startTime,
          ).chartPoint;
          otherPointsPoints!.addAll(contractionFrequency!);
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
