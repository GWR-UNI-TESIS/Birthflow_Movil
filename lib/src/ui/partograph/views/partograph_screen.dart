import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/hodge_plane.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/position.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/medical_surveillance_widget.dart';
import 'package:birthflow_movil/src/ui/providers/catalog_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    final catalog = context.watch<CatalogCubit>().state;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(135.0),
        child: _buildAppBar(context),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<PartographBloc, PartographState>(
          builder: (context, state) {
            final state = context.watch<PartographBloc>().state;
            if (state is Loaded) {
              return _buildContent(context, state, catalog);
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

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 1,
      actions: _buildAppBarActions(),
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 16.0, right: 10.0),
        child: BlocBuilder<PartographBloc, PartographState>(
          builder: (context, state) {
            if (state is Loaded) {
              return _buildAppBarContent(context, state);
            }
            return Container(); // Placeholder if not loaded
          },
        ),
      ),
    );
  }

  List<Widget> _buildAppBarActions() {
    return [
      IconButton(icon: const Icon(Icons.description), onPressed: () {}),
      IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
      IconButton(icon: const Icon(Icons.calendar_month), onPressed: () {}),
      IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
    ];
  }

  Widget _buildAppBarContent(BuildContext context, Loaded state) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                state.partograph.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                '${state.partograph.recordName} - ${DateFormat('dd/MM/yyyy').format(state.partograph.date)}',
              ),
            ],
          ),
          TextButton(onPressed: () {}, child: const Text('Modificar')),
        ],
    );
  }

  Widget _buildContent(BuildContext context, Loaded state, Catalog catalog) {

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          FilledButton(onPressed: () {}, child: const Text('Mostrar grafica')),
          _buildGenericCard(
            title: 'Dilataciones cervicales',
            content: _cervicalDilationsContent(state),
          ),
          _buildGenericCard(
            title: 'Tabla de Vigilancia',
            content: _medicalSurveillanceContent(state),
          ),
          _buildGenericCard(
            title: 'Altura de la presentación',
            content: _presentationHeightContent(state, catalog),
          ),
          _buildGenericCard(
            title: 'Frecuencia Cardiaca Fetal',
            content: _fetalHeartRatesContent(state),
          ),
          _buildGenericCard(
            title: 'Frecuencia de contraciones',
            content: _contractionFrequenciesContent(state),
          ),
        ],
      ),
    );
  }

  Widget _buildGenericCard({required String title, required Widget content}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 10),
            content,
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(onPressed: () {}, child: const Text('Mostrar')),
            ),
          ],
        ),
      ),
    );
  }

  Widget _noDataMessage() {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Center(
        child: Text(
          'No existen datos',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }

  Widget _cervicalDilationsContent(Loaded state) {
    if (state.partograph.cervicalDilations == null ||
        state.partograph.cervicalDilations!.isEmpty) {
      return _noDataMessage();
    }
    return Container(
      margin: const EdgeInsets.all(16),
      child: DataTable(
        columnSpacing: 10.0,
        columns: const [
          DataColumn(label: Text('Dilatación')),
          DataColumn(label: Text('Hora')),
          DataColumn(label: Text('RAM o REM')),
        ],
        rows: state.partograph.cervicalDilations!.map((dilatation) {
          return DataRow(
            cells: [
              DataCell(Text(dilatation.value.toString())),
              DataCell(Text(DateFormat.yMd().format(dilatation.hour))),
              DataCell(
                Checkbox(value: dilatation.remOrRam, onChanged: (value) {}),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _medicalSurveillanceContent(Loaded state) {
    if (state.partograph.medicalSurveillanceTable == null ||
        state.partograph.medicalSurveillanceTable!.isEmpty) {
      return _noDataMessage();
    }
    return MedicalSurveillanceWidget(
      list: state.partograph.medicalSurveillanceTable,
    );
  }

  Widget _presentationHeightContent(Loaded state, Catalog catalog) {
    if (state.partograph.presentationPositionVarieties == null ||
        state.partograph.presentationPositionVarieties!.isEmpty) {
      return _noDataMessage();
    }
    return Container(
      margin: const EdgeInsets.all(16),
      child: DataTable(
        columnSpacing: 5.0,
        columns: const [
          DataColumn(label: Text('Plano Hodge')),
          DataColumn(label: Text('Posición')),
          DataColumn(label: Text('Hora')),
        ],
        rows: state.partograph.presentationPositionVarieties!.map((position) {
          final hodgePlaneDescription = catalog.hodgePlanesCatalog
              .firstWhere(
                (h) => h.id == position.hodgePlane,
                orElse: () => HodgePlane(
                  id: position.hodgePlane,
                  code: '',
                  description: 'No disponible',
                ),
              )
              .description;

          final positionDescription = catalog.positionCatalog
              .firstWhere(
                (p) => p.id == position.position,
                orElse: () => Position(
                  id: position.position,
                  code: '',
                  description: 'No disponible',
                ),
              )
              .description;

          return DataRow(
            cells: [
              DataCell(Text(hodgePlaneDescription)),
              DataCell(Text(positionDescription)),
              DataCell(Text(DateFormat.yMd().format(position.time))),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _contractionFrequenciesContent(Loaded state) {
    if (state.partograph.contractionFrequencies == null ||
        state.partograph.contractionFrequencies!.isEmpty) {
      return _noDataMessage();
    }
    return Container(
      margin: const EdgeInsets.all(16),
      child: DataTable(
        columnSpacing: 5.0,
        columns: const [
          DataColumn(label: Text('Valor')),
          DataColumn(label: Text('Hora')),
        ],
        rows: state.partograph.contractionFrequencies!
            .map((contractionFrequency) {
          return DataRow(
            cells: [
              DataCell(Text(contractionFrequency.value.toString())),
              DataCell(
                Text(DateFormat.yMd().format(contractionFrequency.time)),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _fetalHeartRatesContent(Loaded state) {
    if (state.partograph.fetalHeartRates == null ||
        state.partograph.fetalHeartRates!.isEmpty) {
      return _noDataMessage();
    }
    return Container(
      margin: const EdgeInsets.all(16),
      child: DataTable(
        columnSpacing: 5.0,
        columns: const [
          DataColumn(label: Text('Valor')),
          DataColumn(label: Text('Hora')),
        ],
        rows: state.partograph.fetalHeartRates!.map((fetalHeartRate) {
          return DataRow(
            cells: [
              DataCell(Text(fetalHeartRate.value)),
              DataCell(Text(DateFormat.yMd().format(fetalHeartRate.time))),
            ],
          );
        }).toList(),
      ),
    );
  }
}
