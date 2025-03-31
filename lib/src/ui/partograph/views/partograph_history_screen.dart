import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/hodge_plane.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/position.dart';
import 'package:birthflow_movil/src/domain/partograph_history/models/global_partograph_log/global_partograph_log.dart';
import 'package:birthflow_movil/src/domain/partograph_history/models/partograph_version/partograph_version.dart';
import 'package:birthflow_movil/src/providers/catalog_cubit.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph_history/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph_history/events/partograph_history_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph_history/states/partograph_history_state.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/medical_surveillance_log_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class PartographHistoryScreen extends StatefulWidget {
  final String partographId;

  const PartographHistoryScreen({super.key, required this.partographId});

  @override
  State<PartographHistoryScreen> createState() => _PartographHistoryViewState();
}

class _PartographHistoryViewState extends State<PartographHistoryScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // Dispara el evento para cargar el historial
    context
        .read<PartographHistoryBloc>()
        .add(FetchHistory(widget.partographId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(135.0),
        child: _buildAppBar(context),
      ),
      drawer: _buildDrawer(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<PartographHistoryBloc, PartographHistoryState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(child: Text('Inicializando...')),
                loading: () => const LinearProgressIndicator(),
                loaded: (versions, selectedVersion, previousVersion) {
                  // Aquí se obtiene la versión seleccionada (en JSON)
                  return _buildContent(
                      context, selectedVersion, previousVersion);
                },
                error: (message) => Center(child: Text('Error: $message')),
              );
            },
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 1,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 16.0, right: 10.0),
        child: BlocBuilder<PartographHistoryBloc, PartographHistoryState>(
          builder: (context, state) {
            if (state is Loaded) {
              final jsonData = state.selectedVersion?.partographDataJson;
              final value = GlobalPartographLog.fromJson(jsonData!);
              final title = value.partographLog.name;
              final date =
                  DateFormat('dd/MM/yyyy').format(value.partographLog.date);

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(date),
                    ],
                  ),
                ],
              );
            }
            return Container();
          },
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
      ],
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return BlocBuilder<PartographHistoryBloc, PartographHistoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (versions, selectedVersion, previousVersion) {
            // Marca la versión actual (la más reciente)
            final currentVersion = versions.isNotEmpty ? versions.first : null;
            return Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    child: Text(
                      'Versiones del Partograma',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  ...versions.map((version) {
                    final isCurrent = currentVersion != null &&
                        version.id == currentVersion.id;
                    return ListTile(
                      title: Text(
                        'Cambiado por ${version.changedByName} ${isCurrent ? "- Version Actual" : ""}',
                      ),
                      subtitle: Text(
                          'Cambiado el ${DateFormat('dd/MM/yyyy hh:mm a').format(
                        DateTime.utc(
                          version.changedAt.year,
                          version.changedAt.month,
                          version.changedAt.day,
                          version.changedAt.hour,
                          version.changedAt.minute,
                        ).toLocal(),
                      )}'),
                      selected: version == selectedVersion,
                      tileColor: isCurrent ? Colors.purple[50] : null,
                      onTap: () {
                        context
                            .read<PartographHistoryBloc>()
                            .add(SelectVersion(version));
                        Navigator.pop(context);
                      },
                    );
                  }),
                ],
              ),
            );
          },
          orElse: () => const Drawer(),
        );
      },
    );
  }

  Widget _buildContent(
    BuildContext context,
    PartographVersion? selectedVersion,
    PartographVersion? previousVersion,
  ) {
    final catalog = context.watch<CatalogCubit>().state;
    if (selectedVersion == null) {
      return const Center(child: Text('No hay datos disponibles'));
    }

    final jsonData =
        GlobalPartographLog.fromJson(selectedVersion.partographDataJson);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            _buildGenericCard(
              context,
              title: 'Dilataciones cervicales',
              content: _buildCervicalDilationContent(jsonData),
            ),
            _buildGenericCard(
              context,
              title: 'Tabla de Vigilancia',
              content: _buildMedicalSurveillanceContent(jsonData),
            ),
            _buildGenericCard(
              context,
              title: 'Altura de la presentación',
              content: _buildPresentationPositionContent(jsonData, catalog),
            ),
            _buildGenericCard(
              context,
              title: 'Frecuencia de Contracciones',
              content: _buildContractionFrequencyContent(jsonData),
            ),
            _buildGenericCard(
              context,
              title: 'Frecuencia Cardiaca Fetal',
              content: _buildFetalHeartRateContent(jsonData),
            ),
            _buildGenericCard(
              context,
              title: 'Nota de Parto',
              content: _buildChildbirthNoteContent(jsonData),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGenericCard(
    BuildContext context, {
    required String title,
    required Widget content,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 10),
            content,
          ],
        ),
      ),
    );
  }

  Widget _buildNoDataMessage() {
    return const Center(child: Text('No existen datos'));
  }

  Widget _buildCervicalDilationContent(GlobalPartographLog model) {
    final list = model.cervicalDilationLog;

    if (list.isEmpty) {
      return _buildNoDataMessage();
    }
    return DataTable(
      columnSpacing: 10.0,
      columns: const [
        DataColumn(label: Text('Dilatación')),
        DataColumn(label: Text('Hora')),
        DataColumn(label: Text('RAM o REM')),
      ],
      rows: list.map((item) {
        return DataRow(
          cells: [
            DataCell(Text(item.value.toString())),
            DataCell(Text(DateFormat.Hms().format(item.hour))),
            DataCell(
              Checkbox(
                value: item.remOrRam,
                onChanged: (_) {},
              ),
            ),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildMedicalSurveillanceContent(GlobalPartographLog model) {
    final list = model.medicalSurveillanceTableLog;
    if (list.isEmpty) {
      return _buildNoDataMessage();
    }
    return MedicalSurveillanceLogWidget(list: list);
  }

  Widget _buildPresentationPositionContent(
    GlobalPartographLog model,
    Catalog catalog,
  ) {
    final list = model.presentationPositionVarietyLog;
    if (list.isEmpty) {
      return _buildNoDataMessage();
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
          rows: list.map((position) {
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

  Widget _buildContractionFrequencyContent(
    GlobalPartographLog model,
  ) {
    final list = model.contractionFrequencyLog;
    if (list.isEmpty) {
      return _buildNoDataMessage();
    }
    return DataTable(
      columns: const [
        DataColumn(label: Text('Valor')),
        DataColumn(label: Text('Hora')),
      ],
      rows: list.map((item) {
        return DataRow(
          cells: [
            DataCell(Text(item.value)),
            DataCell(Text(DateFormat.Hms().format(item.time))),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildFetalHeartRateContent(GlobalPartographLog model) {
    final list = model.fetalHeartRateLog;
    if (list.isEmpty) {
      return _buildNoDataMessage();
    }
    return DataTable(
      columns: const [
        DataColumn(label: Text('Valor')),
        DataColumn(label: Text('Hora')),
      ],
      rows: list.map((item) {
        return DataRow(
          cells: [
            DataCell(Text(item.value)),
            DataCell(Text(DateFormat.Hms().format(item.time))),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildChildbirthNoteContent(GlobalPartographLog model) {
    final note = model.childbirthNoteLog;
    if (note == null) {
      return _buildNoDataMessage();
    }
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (note.description != null)
            Text('Descripción: ${note.description}'),
          Text('Hora: ${note.hour}'),
          Text('Sexo: ${note.sex}'),
          Text('APGAR: ${note.apgar}'),
          Text('Temperatura: ${note.temperature}'),
          Text('Caputto: ${note.caputto}'),
          Text('Circular: ${note.circular}'),
          Text('Líquido amniótico: ${note.lamniotico}'),
          Text('Micción: ${note.miccion}'),
          Text('Meconio: ${note.meconio}'),
          Text('PA: ${note.pa}'),
          Text('Expulsivo: ${note.expulsivo}'),
          Text('Placenta: ${note.placenta}'),
          Text('Alumbramiento: ${note.alumbramiento}'),
          Text('Huella plantar: ${note.huellaPlantar}'),
        ],
      ),
    );
  }
}
