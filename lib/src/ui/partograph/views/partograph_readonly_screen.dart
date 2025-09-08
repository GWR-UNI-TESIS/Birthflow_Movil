import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/hodge_plane.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/position.dart';
import 'package:birthflow_movil/src/providers/catalog_cubit.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/medical_surveillance_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class PartographReadOnlyScreen extends StatefulWidget {
  final String partographId;

  const PartographReadOnlyScreen({super.key, required this.partographId});
  @override
  State<StatefulWidget> createState() => _PartographReadOnlyState();
}

class _PartographReadOnlyState extends State<PartographReadOnlyScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>(); // Clave para controlar el Scaffold

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
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(135.0),
        child: _buildAppBar(context),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<PartographBloc, PartographState>(
            builder: (context, state) {
              if (state is Loaded) {
                return _buildContent(context, state, catalog);
              }
              if (state is Error) {
                return const Center(
                  child: Text('Ha ocurrido un error'),
                );
              }
              return const LinearProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 1,
      actions: _buildAppBarActions(),
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back), // Tu icono personalizado
        onPressed: () {
          // Acción deseada (por ejemplo, volver a la pantalla anterior)
          Navigator.pop(context);
        },
      ),
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
      IconButton(
        icon: const Icon(Icons.history),
        onPressed: () => context
          ..go(
            AppPaths.home.partographPath
                .define(widget.partographId)
                .history
                .path,
          ),
      ),
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
        const Text('Solo lectura'),
      ],
    );
  }

  Widget _buildContent(BuildContext context, Loaded state, Catalog catalog) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          FilledButton.icon(
            onPressed: () => context
              ..go(
                AppPaths.home.partographReadOnlyPath
                    .define(widget.partographId)
                    .chart
                    .path,
              ),
            icon: const Icon(Icons.ssid_chart),
            label: const Text('Mostrar grafica'),
          ),
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
            title: 'Frecuencia de Contracciones',
            content: _contractionFrequenciesContent(state),
          ),
          _buildGenericCard(
            title: 'Nota de Parto',
            content: _childbirthNoteContent(state),
          ),
        ],
      ),
    );
  }

  Widget _buildGenericCard({
    required String title,
    required Widget content,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 10),
            Align(
              child: content,
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
      margin: const EdgeInsets.all(5),
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
              DataCell(Text(DateFormat.Hms().format(dilatation.hour))),
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

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Habilita desplazamiento horizontal
      child: SingleChildScrollView(
        child: DataTable(
          columnSpacing: 10.0,
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
                    chartPosition: 0,
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
                DataCell(Text(DateFormat.Hms().format(position.time))),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _contractionFrequenciesContent(Loaded state) {
    if (state.partograph.contractionFrequencies == null ||
        state.partograph.contractionFrequencies!.isEmpty) {
      return _noDataMessage();
    }
    return DataTable(
      columns: const [
        DataColumn(label: Text('Valor')),
        DataColumn(label: Text('Hora')),
      ],
      rows:
          state.partograph.contractionFrequencies!.map((contractionFrequency) {
        return DataRow(
          cells: [
            DataCell(Text(contractionFrequency.value)),
            DataCell(
              Text(DateFormat.Hms().format(contractionFrequency.time)),
            ),
          ],
        );
      }).toList(),
    );
  }

  Widget _fetalHeartRatesContent(Loaded state) {
    if (state.partograph.fetalHeartRates == null ||
        state.partograph.fetalHeartRates!.isEmpty) {
      return _noDataMessage();
    }
    return DataTable(
      columns: const [
        DataColumn(label: Text('Valor')),
        DataColumn(label: Text('Hora')),
      ],
      rows: state.partograph.fetalHeartRates!.map((fetalHeartRate) {
        return DataRow(
          cells: [
            DataCell(Text(fetalHeartRate.value)),
            DataCell(Text(DateFormat.Hms().format(fetalHeartRate.time))),
          ],
        );
      }).toList(),
    );
  }

  Widget _childbirthNoteContent(Loaded state) {
    if (state.partograph.childbirthNote == null) {
      return _noDataMessage();
    }

    final note = state.partograph.childbirthNote!;
    return Align(
      alignment: Alignment.topLeft,
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyMedium,
          children: [
            const TextSpan(
              text: 'Fecha: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '${note.date}\n'),
            const TextSpan(
              text: 'Hora: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '${note.hour}\n'),
            const TextSpan(
              text: 'Sexo: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '${note.sex}\n'),
            const TextSpan(
              text: 'APGAR: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '${note.peso}\n'),
            const TextSpan(
              text: 'Sexo: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '${note.peso}\n'),
            const TextSpan(
              text: 'Temperatura: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '${note.temperature}\n'),
            const TextSpan(
              text: 'Caputto: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '${note.caputto}\n'),
            const TextSpan(
              text: 'Circular: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '${note.circular}\n'),
            const TextSpan(
              text: 'Líquido amniótico: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '${note.lamniotico}\n'),
            const TextSpan(
              text: 'Micción: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '${note.miccion}\n'),
            const TextSpan(
              text: 'Meconio: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '${note.meconio}\n'),
            const TextSpan(
              text: 'PA: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '${note.pa}\n'),
            const TextSpan(
              text: 'Expulsivo: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '${note.expulsivo}\n'),
            const TextSpan(
              text: 'Placenta: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '${note.placenta}\n'),
            const TextSpan(
              text: 'Alumbramiento: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '${note.alumbramiento}\n'),
            const TextSpan(
              text: 'Huella plantar: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: '${note.huellaPlantar}\n'),
          ],
        ),
      ),
    );
  }
}
