// ignore_for_file: sized_box_shrink_expand, library_prefixes
import 'package:birthflow_movil/src/core/chart/main.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/providers/catalog_cubit.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/events/chart_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/states/chart_state.dart'
    as chartStates;
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/medical_surveillance_widget.dart';
import 'package:birthflow_movil/src/ui/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChartReadOnlyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final catalog = context.watch<CatalogCubit>();

    return BlocProvider(
      create: (context) => ChartBloc(catalog, const chartStates.Initial()),
      child: BlocConsumer<PartographBloc, PartographState>(
        listener: (context, state) {
          if (state is Loaded) {
            final partograph = state.partograph;
            context.read<ChartBloc>().add(OnRefresh(partograph: partograph));
          }
        },
        builder: (context, state) {
          final isLoading = state is Loading;
          return _ChartScreen(isLoading);
        },
      ),
    );
  }
}

class _ChartScreen extends StatefulWidget {
  final bool isLoading;
  const _ChartScreen(this.isLoading);
  @override
  State<StatefulWidget> createState() => _ChartState();
}

class _ChartState extends State<_ChartScreen> {
  final PageController controller = PageController();

  bool _isOnRefreshAdded = false; // Para evitar duplicar el evento

  @override
  Widget build(BuildContext context) {
    final medicalSurveillance =
        context.watch<PartographBloc>().state.whenOrNull(
              loaded: (partograph, message, isDeleteEvent) =>
                  partograph.medicalSurveillanceTable,
            );

    return Builder(
      builder: (context) {
        final partographBloc = BlocProvider.of<PartographBloc>(context);
        final chartBloc = BlocProvider.of<ChartBloc>(context);

        if (partographBloc.state is Loaded && !_isOnRefreshAdded) {
          final partograph = (partographBloc.state as Loaded).partograph;
          chartBloc.add(OnRefresh(partograph: partograph));
          _isOnRefreshAdded = true; // Asegurarse de que se añade solo una vez
        }

        return Scaffold(
          appBar: AppBar(
            elevation: 2,
            title: Text(
              (partographBloc.state is Loaded)
                  ? (partographBloc.state as Loaded).partograph.name
                  : '',
            ),
          ),
          body: LoadingOverlay(
            isLoading: widget.isLoading,
            child: SafeArea(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final bool isTablet = constraints.maxWidth >= 600;
                  return Center(
                    child: SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: isTablet
                          ? _buildPageView(context, medicalSurveillance)
                          : RotatedBox(
                              quarterTurns: 1,
                              child:
                                  _buildPageView(context, medicalSurveillance),
                            ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildPageView(
    BuildContext context,
    List<MedicalSurveillanceTable>? medicalSurveillance,
  ) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(5),
          child: _buildChart(context),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: MedicalSurveillanceWidget(list: medicalSurveillance),
        ),
      ],
    );
  }

  Widget _buildChart(BuildContext context) {
    return BlocBuilder<ChartBloc, chartStates.ChartState>(
      builder: (BuildContext context, chartStates.ChartState state) {
        return state.when(
          initial: () => const CircularProgressIndicator(),
          loading: () => const CircularProgressIndicator(),
          loaded: (data, item) => MainChart(
            Data.createSampleData(data),
            item,
          ),
          error: (error) => Center(
            child: Text(
              error,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      },
    );
  }
}
