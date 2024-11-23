// ignore_for_file: sized_box_shrink_expand, library_prefixes

import 'package:birthflow_movil/src/core/chart/main.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/events/chart_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/states/chart_state.dart'
    as chartStates;
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/expandable_fab.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/medical_surveillance_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChartBloc(const chartStates.Initial()),
      child: const _ChartScreen(),
    );
  }
}

class _ChartScreen extends StatefulWidget {
  const _ChartScreen();
  @override
  State<StatefulWidget> createState() => _ChartState();
}

class _ChartState extends State<_ChartScreen> {
  int _scrollFab = 0;

  final PageController controller = PageController();

  bool _isOnRefreshAdded = false; // Para evitar duplicar el evento

  void _changedScrollFab(int page) {
    setState(() {
      _scrollFab = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final medicalSurveillance = context
        .watch<PartographBloc>()
        .state
        .whenOrNull(
          loaded: (partograph, message) => partograph.medicalSurveillanceTable,
        );

    final List<Widget> fabs = [
      ExpandableFab(
        distance: 70.0,
        children: [
          Tooltip(
            message: 'Agregar Dilatacion Cervical',
            child: ActionButton(
              onPressed: () => _showCreateCervicalDilation(context),
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    ];

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
            title: Text((partographBloc.state as Loaded).partograph.name),
          ),
          body: SafeArea(
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
                            child: _buildPageView(context, medicalSurveillance),
                          ),
                  ),
                );
              },
            ),
          ),
          floatingActionButton: fabs[_scrollFab],
        );
      },
    );
  }

  Widget _buildPageView(BuildContext context,
      List<MedicalSurveillanceTable>? medicalSurveillance,) {
    return PageView(
      scrollDirection: Axis.vertical,
      onPageChanged: _changedScrollFab,
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
          margin: const EdgeInsets.all(5),
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

  Future<DateTime?> _showCreateCervicalDilation(
      BuildContext mainContext,) async {
    final timeController = TextEditingController();
    final valueController = TextEditingController();
    DateTime? selectedDateTime;
    bool remOrRam = false;
    final today = DateTime.now();
    timeController.text = DateFormat('HH:mm:ss').format(today);

    return showDialog<DateTime?>(
      context: mainContext,
      builder: (BuildContext context) => StatefulBuilder(
        builder: (context, setState) => SimpleDialog(
          title: const Text('Nuevo'),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: [
            TextFormField(
              controller: valueController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Valor de Dilatación',
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingrese un valor';
                }
                if (double.tryParse(value) == null) {
                  return 'Por favor ingrese un valor válido';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                final time = await _selectTime(context);
                if (time != null) {
                  selectedDateTime = today;
                  timeController.text = DateFormat('HH:mm:ss').format(time);
                }
              },
              child: AbsorbPointer(
                child: TextFormField(
                  controller: timeController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.calendar_today),
                    border: OutlineInputBorder(),
                    labelText: 'Hora',
                    hintText: 'Seleccione una hora',
                  ),
                  validator: (value) {
                    if (timeController.text.isEmpty) {
                      return 'Por favor seleccione una hora';
                    }
                    return null;
                  },
                ),
              ),
            ),
            SwitchListTile(
              title: const Text('Ram O Rem'),
              value: remOrRam,
              onChanged: (value) => setState(() => remOrRam = value),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancelar'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Obtener el PartographBloc y ChartBloc
                      final partographBloc = mainContext.read<PartographBloc>();
                      final chartBloc = mainContext.read<ChartBloc>();

                      // Obtener el partographId desde el estado de PartographBloc si está cargado
                      final partographId = (partographBloc.state is Loaded)
                          ? (partographBloc.state as Loaded)
                              .partograph
                              .partographId
                          : '';

                      // Extraer los valores de los controladores
                      final double? dilationValue =
                          double.tryParse(valueController.text);
                      final DateTime dilationHour = selectedDateTime!;
                      final bool dilationRemOrRam = remOrRam;

                      // Agregar el evento SaveCervicalDilation
                      partographBloc.add(
                        SaveCervicalDilation(
                          partographId: partographId!,
                          value: dilationValue!,
                          hour: dilationHour,
                          remOrRam: dilationRemOrRam,
                        ),
                      );

                      // Espera a que se complete la actualización de PartographBloc y luego refresca ChartBloc
                      if (partographBloc.state is Loaded) {
                        final partograph =
                            (partographBloc.state as Loaded).partograph;
                        chartBloc.add(OnRefresh(partograph: partograph));
                      }

                      // Cerrar el diálogo
                      Navigator.pop(context);
                    },
                    child: const Text('Aceptar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<DateTime?> _selectTime(BuildContext context) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      final now = DateTime.now();
      return DateTime(now.year, now.month, now.day, picked.hour, picked.minute);
    }
    return null;
  }
}
