// ignore_for_file: sized_box_shrink_expand, library_prefixes

import 'package:birthflow_movil/src/core/chart/main.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/events/chart_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/states/chart_state.dart'
    as chartBloc;
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/medical_surveillance_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ChartScreen extends StatefulWidget {
  final Partograph partograph;

  const ChartScreen({super.key, required this.partograph});
  @override
  State<StatefulWidget> createState() => _ChartState();
}

class _ChartState extends State<ChartScreen> {
  int _scrollFab = 0;

  final PageController controller = PageController();

  @override
  void initState() {
    final partographBloc = BlocProvider.of<PartographBloc>(context);

    // Escucha el estado actual de PartographBloc
    final partographState = partographBloc.state;

    // Verifica si el estado actual contiene el partograma y luego ejecuta el evento
    if (partographState is Loaded) {
      BlocProvider.of<ChartBloc>(context).add(
        OnRefresh(partograph: partographState.partograph),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void changedScrollFab(int page) {
      setState(() {
        _scrollFab = page;
      });
    }

    final List<Widget> fabs = [];

    return Scaffold(
      body: SafeArea(
        child: Builder(
          builder: (context) {
            final medicalSurveillance =
                context.watch<PartographBloc>().state.whenOrNull(
                      loaded: (partograph, message) =>
                          partograph.medicalSurveillanceTable,
                    );
            return LayoutBuilder(
              builder: (context, constraints) {
                final bool isTablet =
                    constraints.maxWidth >= 600; // Umbral para tablet

                return Center(
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: isTablet
                        ? PageView(
                            scrollDirection: Axis.vertical,
                            children: [
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                color: Colors.white70,
                                child: _buildChart(context),
                              ),
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                color: Colors.blueAccent,
                                child: MedicalSurveillanceWidget(
                                    list: medicalSurveillance),
                              ),
                            ],
                          )
                        : SizedBox(
                            width: MediaQuery.of(context)
                                .size
                                .height, // Usar la altura como ancho
                            height: MediaQuery.of(context)
                                .size
                                .width, // Usar el ancho como altura
                            child: Transform(
                              transform: Matrix4.rotationZ(
                                -1.5708,
                              ), // Rotar 90 grados en radianes
                              alignment: Alignment.center,
                              child: PageView(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.height +
                                        1000, // Ajusta el ancho
                                    height: MediaQuery.of(context)
                                        .size
                                        .width, // Ajusta la altura
                                    color: Colors.white70,
                                    child: _buildChart(context),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context)
                                        .size
                                        .height, // Ajusta el ancho
                                    height: MediaQuery.of(context)
                                        .size
                                        .width, // Ajusta la altura
                                    color: Colors.blueAccent,
                                    child: MedicalSurveillanceWidget(
                                      list: medicalSurveillance,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: fabs[_scrollFab],
    );
  }

  Widget _buildChart(BuildContext context) {
    return BlocBuilder<ChartBloc, chartBloc.ChartState>(
      builder: (BuildContext context, chartBloc.ChartState state) {
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
                // ignore: require_trailing_commas
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      },
    );
  }

  Future<DateTime?> _showCreateCervicalDilation(BuildContext context) async {
    final TextEditingController timeController = TextEditingController();
    final TextEditingController valueController = TextEditingController();
    bool remOrRam = false;
    final today = DateTime.now();
    timeController.text = DateFormat('HH:mm:ss').format(today);

    DateTime? selectedDateTime;

    return await showDialog(
      context: context,
      builder: (BuildContext context) => StatefulBuilder(
        builder: (BuildContext context, setState) => SimpleDialog(
          title: const Text('Nuevo'),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: <Widget>[
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
                  selectedDateTime = time;
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
              onChanged: (value) {
                setState(() {
                  remOrRam = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, null),
                    child: const Text('Cancelar'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
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
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      final now = DateTime.now();
      // Combina la fecha actual con la hora seleccionada.
      return DateTime(now.year, now.month, now.day, picked.hour, picked.minute);
    }
    return null;
  }
}
