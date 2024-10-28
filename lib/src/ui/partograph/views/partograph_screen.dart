import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/medical_surveillance_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class PartographScreen extends StatefulWidget {
  final String partographId;

  const PartographScreen({super.key, required this.partographId});
  @override
  State<StatefulWidget> createState() => _PartographState();
}

class _PartographState extends State<PartographScreen> {
  @override
  void initState() {
    BlocProvider.of<PartographBloc>(context).add(
      onFetchData(partographId: widget.partographId),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(135.0),
        child: BlocBuilder<PartographBloc, PartographState>(
          builder: (context, state) {
            final state = context.watch<PartographBloc>().state;
            if (state is Loaded) {
              return AppBar(
                elevation: 1,
                actions: [
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.calendar_month),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ],
                flexibleSpace: Padding(
                  padding: const EdgeInsets.only(
                    top: 40.0,
                    left: 16.0,
                    right: 10.0,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.partograph.name,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              '${state.partograph.recordName} - ${DateFormat('dd/mm/yyyy').format(state.partograph.date)}',
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Modificar'),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            return AppBar(
              elevation: 1,
              actions: [
                IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.calendar_month),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<PartographBloc, PartographState>(
          builder: (context, state) {
            final state = context.watch<PartographBloc>().state;
            if (state is Loaded) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dilataciones cervicales',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 10),
                            if (state.partograph.cervicalDilations == null ||
                                state.partograph.cervicalDilations!.isEmpty)
                              Container(
                                margin: const EdgeInsets.all(10),
                                child: Center(
                                  child: Text(
                                    'No existen datos',
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                ),
                              )
                            else
                              Container(
                                margin: const EdgeInsets.all(16),
                                child: DataTable(
                                  columnSpacing: 10.0,
                                  columns: const [
                                    DataColumn(
                                      label: Text('Dilatacion'),
                                    ),
                                    DataColumn(label: Text('Hora')),
                                    DataColumn(label: Text('RAM o REM')),
                                  ],
                                  rows: state.partograph.cervicalDilations!
                                      .map((dilatation) {
                                    return DataRow(
                                      cells: [
                                        DataCell(
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0,
                                            ),
                                            child: Text(
                                              dilatation.value.toString(),
                                            ),
                                          ),
                                        ),
                                        DataCell(
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0,
                                            ),
                                            child: Text(
                                              DateFormat.yMd()
                                                  .format(dilatation.hour),
                                            ),
                                          ),
                                        ),
                                        DataCell(
                                          Checkbox(
                                            value: dilatation.remOrRam,
                                            onChanged: (value) {},
                                          ),
                                        ),
                                      ],
                                    );
                                  }).toList(),
                                ),
                              ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Mostrar',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tabla de Vigilancia',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 10),
                            if (state.partograph.medicalSurveillanceTable ==
                                    null ||
                                state.partograph.medicalSurveillanceTable!
                                    .isEmpty)
                              Container(
                                margin: const EdgeInsets.all(10),
                                child: Center(
                                  child: Text(
                                    'No existen datos',
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                ),
                              )
                            else
                              Container(
                                margin: const EdgeInsets.all(16),
                                child: MedicalSurveillanceWidget(
                                  list:
                                      state.partograph.medicalSurveillanceTable,
                                ),
                              ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Mostrar',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Altura de la presentacion',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 10),
                            if (state.partograph
                                        .presentationPositionVarieties ==
                                    null ||
                                state.partograph.presentationPositionVarieties!
                                    .isEmpty)
                              Container(
                                margin: const EdgeInsets.all(10),
                                child: Center(
                                  child: Text(
                                    'No existen datos',
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                ),
                              )
                            else
                              Container(
                                margin: const EdgeInsets.all(16),
                                child: DataTable(
                                  columnSpacing: 5.0,
                                  columns: const [
                                    DataColumn(
                                      label: Text('Plano Hodge'),
                                    ),
                                    DataColumn(label: Text('Posicion')),
                                    DataColumn(label: Text('Hora')),
                                  ],
                                  rows: state
                                      .partograph.presentationPositionVarieties!
                                      .map((presentationPositionVariety) {
                                    return DataRow(
                                      cells: [
                                        DataCell(
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0,
                                            ),
                                            child: Text(
                                              presentationPositionVariety
                                                  .hodgePlane
                                                  .toString(),
                                            ),
                                          ),
                                        ),
                                        DataCell(
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0,
                                            ),
                                            child: Text(
                                              presentationPositionVariety
                                                  .position
                                                  .toString(),
                                            ),
                                          ),
                                        ),
                                        DataCell(
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0,
                                            ),
                                            child: Text(
                                              DateFormat.yMd().format(
                                                presentationPositionVariety
                                                    .time,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }).toList(),
                                ),
                              ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Mostrar',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
            return const LinearProgressIndicator();
          },
        ),
        /*Center(
        child: Column(
          children: [
            FilledButton(
              onPressed: () => context
                ..go(
                  AppPaths.home.partographPath
                      .define(widget.partographId)
                      .cervicalDilationList
                      .path,
                  extra: widget.partographId,
                ),
              child: const Text('Dilataciones Cervicales'),
            ),
          ],
        ),
      ),
      */
      ),
    );
  }
}

class MedicalSurveillanceCardWidget extends StatefulWidget {
  const MedicalSurveillanceCardWidget({super.key});

  @override
  State<MedicalSurveillanceCardWidget> createState() =>
      _MedicalSurveillanceCardState();
}

class _MedicalSurveillanceCardState
    extends State<MedicalSurveillanceCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tabla de Vigilancia',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Añadir'),
            ),
          ],
        ),
        const MedicalSurveillanceWidget(
          list: [],
        ),
      ],
    );
  }
}
