import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';


class PartographReadOnlyScreen extends StatelessWidget {
  final String partographId;

  const PartographReadOnlyScreen({super.key, required this.partographId});

  @override
  Widget build(BuildContext context) {

    context.read<PartographBloc>().add(
      onFetchData(partographId: partographId),
    );
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Partograma - Solo Lectura'),
        centerTitle: true,
      ),
      body: BlocBuilder<PartographBloc, PartographState>(
        builder: (context, state) {
          if (state is Loaded) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(context, state),
                  const SizedBox(height: 20),
                  _buildSection(
                    context: context,
                    title: 'Dilataciones Cervicales',
                    content: _buildCervicalDilationsTable(state),
                  ),
                  const SizedBox(height: 20),
                  _buildSection(
                    context: context,
                    title: 'Frecuencia Cardiaca Fetal',
                    content: _buildFetalHeartRatesTable(state),
                  ),
                  const SizedBox(height: 20),
                  _buildSection(
                    context: context,
                    title: 'Frecuencia de Contracciones',
                    content: _buildContractionFrequenciesTable(state),
                  ),
                  const SizedBox(height: 20),
                  _buildSection(
                    context: context,
                    title: 'Notas del Parto',
                    content: _buildChildbirthNotes(state),
                  ),
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Widget _buildHeader(BuildContext context, Loaded state) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              state.partograph.name,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              '${state.partograph.recordName} - ${DateFormat('dd/MM/yyyy').format(state.partograph.date)}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required BuildContext context,
    required String title,
    required Widget content,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        content,
      ],
    );
  }

  Widget _buildCervicalDilationsTable(Loaded state) {
    if (state.partograph.cervicalDilations == null ||
        state.partograph.cervicalDilations!.isEmpty) {
      return const Text('No hay datos disponibles.');
    }
    return DataTable(
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
            DataCell(Text(dilatation.remOrRam ? 'Sí' : 'No')),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildFetalHeartRatesTable(Loaded state) {
    if (state.partograph.fetalHeartRates == null ||
        state.partograph.fetalHeartRates!.isEmpty) {
      return const Text('No hay datos disponibles.');
    }
    return DataTable(
      columns: const [
        DataColumn(label: Text('Valor')),
        DataColumn(label: Text('Hora')),
      ],
      rows: state.partograph.fetalHeartRates!.map((heartRate) {
        return DataRow(
          cells: [
            DataCell(Text(heartRate.value)),
            DataCell(Text(DateFormat.Hms().format(heartRate.time))),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildContractionFrequenciesTable(Loaded state) {
    if (state.partograph.contractionFrequencies == null ||
        state.partograph.contractionFrequencies!.isEmpty) {
      return const Text('No hay datos disponibles.');
    }
    return DataTable(
      columns: const [
        DataColumn(label: Text('Frecuencia')),
        DataColumn(label: Text('Hora')),
      ],
      rows: state.partograph.contractionFrequencies!.map((frequency) {
        return DataRow(
          cells: [
            DataCell(Text(frequency.value)),
            DataCell(Text(DateFormat.Hms().format(frequency.time))),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildChildbirthNotes(Loaded state) {
    if (state.partograph.childbirthNote == null) {
      return const Text('No hay notas disponibles.');
    }

    final note = state.partograph.childbirthNote!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        Text('PC: ${note.pc}'),
        Text('Talla: ${note.talla}'),
        Text('Brazalete: ${note.brazalete}'),
        Text('Huella digital: ${note.huellaDig}'),
      ],
    );
  }
}
