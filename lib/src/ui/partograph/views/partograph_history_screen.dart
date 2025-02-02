import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/domain/partograph_history/models/partograph_version/partograph_version.dart';
import 'package:birthflow_movil/src/domain/partograph_history/usecases/get_partograph_history_usecase.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph_history/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph_history/events/partograph_history_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph_history/states/partograph_history_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartographHistoryScreen extends StatelessWidget {
  final String partographId;

  const PartographHistoryScreen({super.key, required this.partographId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PartographHistoryBloc(locator<GetPartographHistoryUsecase>())
            ..add(FetchHistory(partographId)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Historial del Partograma'),
        ),
        endDrawer: _buildDrawer(context),
        body: BlocBuilder<PartographHistoryBloc, PartographHistoryState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: Text('Inicializando...')),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (versions, selectedVersion, previousVersion) {
                return _buildVersionDetails(selectedVersion, previousVersion);
              },
              error: (message) => Center(child: Text('Error: $message')),
            );
          },
        ),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return BlocBuilder<PartographHistoryBloc, PartographHistoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (versions, selectedVersion, previousVersion) {
            // Obtener la versión actual (la más reciente)
            final currentVersion = versions.isNotEmpty ? versions.first : null;

            return Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text(
                      'Versiones del Partograma',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  ...versions.map((version) {
                    final isCurrent = currentVersion != null &&
                        version.id == currentVersion.id;

                    return ListTile(
                      title: Text('Versión ${version.id}'),
                      subtitle: Text('Cambiado el ${version.changedAt}'),
                      selected: version == selectedVersion,
                      tileColor: isCurrent
                          ? Colors.green[100]
                          : null, // Resaltar la versión actual
                      onTap: () {
                        context
                            .read<PartographHistoryBloc>()
                            .add(SelectVersion(version));
                        Navigator.pop(context); // Cerrar el drawer
                      },
                    );
                  }),
                ],
              ),
            );
          },
          orElse: () => const Drawer(), // Drawer vacío si no hay datos
        );
      },
    );
  }

  Widget _buildVersionDetails(
      PartographVersion? selectedVersion, PartographVersion? previousVersion,) {
    if (selectedVersion == null) {
      return const Center(child: Text('No hay datos disponibles'));
    }

    final selectedData = selectedVersion.partographDataJson;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Datos de la Versión Actual (${selectedVersion.id})',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ..._buildFullPartographData(
              selectedData,), // Mostrar toda la información
          const SizedBox(height: 24),
          if (previousVersion != null) ...[
            const Text(
              'Cambios respecto a la versión anterior:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ..._buildComparison(
                selectedData, previousVersion.partographDataJson,),
          ],
        ],
      ),
    );
  }

  List<Widget> _buildFullPartographData(Map<String, dynamic> data) {
    final List<Widget> widgets = [];

    data.forEach((key, value) {
      if (value is Map<String, dynamic>) {
        widgets.add(
          ExpansionTile(
            title: Text(key),
            children: _buildFullPartographData(value).toList(),
          ),
        );
      } else if (value is List) {
        widgets.add(
          ExpansionTile(
            title: Text(key),
            children: value.map((item) {
              if (item is Map<String, dynamic>) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _buildFullPartographData(item),
                );
              } else {
                return ListTile(
                  title: Text(item.toString()),
                );
              }
            }).toList(),
          ),
        );
      } else {
        widgets.add(
          ListTile(
            title: Text('$key: $value'),
          ),
        );
      }
    });

    return widgets;
  }

  List<Widget> _buildComparison(
      Map<String, dynamic> selectedData, Map<String, dynamic> previousData,) {
    final selectedLog =
        selectedData['partographLog'] as Map<String, dynamic>? ?? {};
    final previousLog =
        previousData['partographLog'] as Map<String, dynamic>? ?? {};

    return selectedLog.entries.map((entry) {
      final key = entry.key;
      final selectedValue = entry.value;
      final previousValue = previousLog[key];

      if (selectedValue != previousValue) {
        return ListTile(
          title: Text(key),
          subtitle: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [
                const TextSpan(
                    text: 'Anterior: ',
                    style: TextStyle(fontWeight: FontWeight.bold),),
                TextSpan(
                    text: '$previousValue\n',
                    style: TextStyle(color: Colors.red),),
                const TextSpan(
                    text: 'Nuevo: ',
                    style: TextStyle(fontWeight: FontWeight.bold),),
                TextSpan(
                    text: '$selectedValue',
                    style: const TextStyle(color: Colors.green),),
              ],
            ),
          ),
        );
      } else {
        return SizedBox.shrink(); // No mostrar si no hay cambios
      }
    }).toList();
  }
}
