import 'package:birthflow_movil/src/core/chart/models/chart_data.dart';
import 'package:birthflow_movil/src/core/chart/models/chart_point.dart';
import 'package:birthflow_movil/src/core/chart/renderers/symbols.dart';
import 'package:birthflow_movil/src/core/chart/widgets/tooltip.dart';
import 'package:charts_common/common.dart' as common
    show TriangleSymbolRenderer;
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

// Clase MainChart que extiende StatelessWidget para construir un gráfico
class MainChart extends StatelessWidget {
  final List<charts.Series<dynamic, num>> seriesList;
   // Indica si el gráfico se debe animar
  final bool animate;
   // Fecha de inicio del gráfico (usada como referencia en el eje X)
  final DateTime startDate;
  const MainChart(
    this.seriesList,
    this.startDate, {
    super.key,
    this.animate = false,
  });

  @override
  Widget build(BuildContext context) {
    // Formateador para las medidas secundarias
    final secondaryMeasureFormatter =
        charts.BasicNumericTickFormatterSpec((value) {
      if (value! >= 0 && value <= 11) {
        return (90 + value * 10).toString();
      } else {
        return '0';
      }
    });
   
   // Formateador para el dominio (eje X)
    final domainFormatter = charts.BasicNumericTickFormatterSpec((value) {
      final DateTime startTime = startDate;

      final int time = startTime.hour + value!.toInt();
      final int result = (time > 24) ? (time - 24) : time;

      return (startTime.minute >= 0 && startTime.minute < 10)
          ? '$result:0${startTime.minute}'
          : '$result:${startTime.minute}';
    });

  // Formateador para las medidas primarias (eje Y izquierdo)
    final primaryMeasureFormatter =
        charts.BasicNumericTickFormatterSpec((value) {
      if (value == 11) {
        return 'Parto';
      } else {
        return value!.round().toString();
      }
    });
    
     // Retorna un gráfico de dispersión (ScatterPlotChart)
    return charts.ScatterPlotChart(
      seriesList,
      animate: animate,
      // Configuración del eje Y izquierdo
      primaryMeasureAxis: charts.NumericAxisSpec(
        tickProviderSpec: const charts.BasicNumericTickProviderSpec(
          dataIsInWholeNumbers: true,
          desiredTickCount: 12,
        ),
        tickFormatterSpec: primaryMeasureFormatter,
      ),
      // Configuración del eje Y derecho
      secondaryMeasureAxis: charts.NumericAxisSpec(
        tickProviderSpec: const charts.BasicNumericTickProviderSpec(
          dataIsInWholeNumbers: true,
          desiredTickCount: 12,
        ),
        tickFormatterSpec: secondaryMeasureFormatter,
      ),
      // Configuración del eje X
      domainAxis: charts.NumericAxisSpec(
        tickProviderSpec: const charts.BasicNumericTickProviderSpec(
          dataIsInWholeNumbers: true,
          desiredTickCount: 16,
        ),
        tickFormatterSpec: domainFormatter,
      ),

      // Configuración del renderizador por defecto para puntos
      //( Se usa para los graficos de la altura de la presentacion)
      defaultRenderer: charts.PointRendererConfig<num>(
        customSymbolRenderers: {
          'rect': charts.RectSymbolRenderer(),
          'triangle': common.TriangleSymbolRenderer(),
          'OIIA': OiaSymbolRenderer(),
          'OIIT': OitSymbolRenderer(),
          'OIIP': OipSymbolRenderer(),
          'OIDA': OdaSymbolRenderer(),
          'OIDT': OdtSymbolRenderer(),
          'OIDP': OdpSymbolRenderer(),
          'OS': OsSymbolRenderer(),
          'OP': OpSymbolRenderer(),
          'IND': InSymbolRenderer(),
        },
      ),

     // Configuración personalizada del renderizador para series de tipo línea
      customSeriesRenderers: [
        charts.LineRendererConfig(
          customRendererId: 'realCurveLine',
          includePoints: true,
          layoutPaintOrder: charts.LayoutViewPaintOrder.point + 3,
        ),
        charts.LineRendererConfig(
          customRendererId: 'alertCurveLine',
          includePoints: true,
          layoutPaintOrder: charts.LayoutViewPaintOrder.point + 2,
        ),
        charts.LineRendererConfig(
          customRendererId: 'alertNewCurveLine',
          includePoints: true,
          layoutPaintOrder: charts.LayoutViewPaintOrder.point + 1,
        ),
      ],
      behaviors: [
        // Mostrar anotación solo si hay datos en realCurve
        charts.RangeAnnotation([
          charts.LineAnnotationSegment(
            4.5,
            charts.RangeAnnotationAxisType.measure,
            startLabel: 'Linea Base desde que inicia la curva de alerta',
            color: charts.MaterialPalette.gray.shadeDefault,
          ),
        ]),
        charts.ChartTitle(
          'Dilatacion Cervical (cm)',
          behaviorPosition: charts.BehaviorPosition.start,
          outerPadding: 2,
          titleOutsideJustification: charts.OutsideJustification.middleDrawArea,
        ),
        charts.SeriesLegend(
          position: charts.BehaviorPosition.bottom,
          horizontalFirst: true,
          cellPadding:
              const EdgeInsets.only(right: 1.0, bottom: 4.0, left: 2.0),
          showMeasures: false,
          entryTextStyle: const charts.TextStyleSpec(fontSize: 10),
          legendDefaultMeasure: charts.LegendDefaultMeasure.firstValue,
        ),
        charts.LinePointHighlighter(
          showHorizontalFollowLine:
              charts.LinePointHighlighterFollowLineType.none,
          showVerticalFollowLine:
              charts.LinePointHighlighterFollowLineType.nearest,
          selectionModelType: charts.SelectionModelType.info,
          symbolRenderer: TooltipSymbolRenderer(),
        ),
        charts.SelectNearest(),
      ],
      // Ayuda a seleccionar cualquier punto y que muestre la hora de registro
      selectionModels: [
        charts.SelectionModelConfig(
          changedListener: (charts.SelectionModel model) {
            if (model.hasDatumSelection) {
              final double value = model.selectedSeries[0]
                  .domainFn(model.selectedDatum[0].index) as double;
              final int hour = value.truncate();
              final double minuteDecimal = value % 1;
              final int minute = (minuteDecimal * 60).toInt();

              final DateTime firstTime = startDate;
              final int actualHour = (firstTime.hour + hour) % 24;
              final int actualMinute = (firstTime.minute + minute) % 60;

              final String result =
                  'Hora: ${actualHour.toString().padLeft(2, '0')}:${actualMinute.toString().padLeft(2, '0')}';
              TooltipSymbolRenderer.value = result; // paints the tapped value
            }
          },
        ),
      ],
    );
  }
}

// ignore: avoid_classes_with_only_static_members
class Data {
  static List<charts.Series<ChartPoint, double>> createSampleData(
    ChartData partograph,
  ) {
    //Configuracion de nueva curva de alerta
    final nuevaCurvaAlerta = charts.Series<ChartPoint, double>(
      id: 'Nueva Curva Alerta',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      domainFn: (ChartPoint point, _) => point.x,
      measureFn: (ChartPoint point, _) => point.y,
      data: partograph.newAlertCurve,
    )
      ..setAttribute(charts.rendererIdKey, 'alertNewCurveLine');
    //Configuracion de curva de alerta
    final curvaAlerta = charts.Series<ChartPoint, double>(
      id: 'Curva de Alerta',
      colorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault,
      domainFn: (ChartPoint point, _) => point.x,
      measureFn: (ChartPoint point, _) => point.y,
      data: partograph.alertCurve,
    )
      ..setAttribute(charts.measureAxisIdKey, 'secondaryMeasureAxisId')
      ..setAttribute(charts.rendererIdKey, 'alertCurveLine');
  //Configuracion de nueva curva de real
    final curvaReal = charts.Series<ChartPoint, double>(
      id: 'Curva Real',
      colorFn: (_, __) => charts.MaterialPalette.black,
      domainFn: (ChartPoint point, _) => point.x,
      measureFn: (ChartPoint point, _) => point.y,
      data: partograph.realCurve,
    )..setAttribute(charts.rendererIdKey, 'realCurveLine');
    //Configuracion de puntos de tabla de vigilancia medica y altura de la presentacion
    final medicalSurveillancePoints = charts.Series<ChartPoint, double>(
      id: 'MedicalSurveillance',
      displayName: '',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      domainFn: (ChartPoint point, _) => point.x,
      measureFn: (ChartPoint point, _) => point.y,
      radiusPxFn: (ChartPoint point, _) => point.radius,
      fillColorFn: (ChartPoint point, _) => point.fillColor,
      strokeWidthPxFn: (ChartPoint point, _) => point.strokeWidth,
      data: partograph.others,
    )..setAttribute(
        charts.pointSymbolRendererFnKey,
        (int? index) => partograph.others[index!].shape!,
      );
    return [
      if (partograph.others.isNotEmpty) medicalSurveillancePoints,
      if (partograph.realCurve.isNotEmpty) curvaReal,
      if (partograph.alertCurve.isNotEmpty) curvaAlerta,
      if (partograph.newAlertCurve.isNotEmpty) nuevaCurvaAlerta,
    ];
  }
}
