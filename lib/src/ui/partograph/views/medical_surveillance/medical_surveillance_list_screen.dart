import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MedicalSurveillanceListScreen extends StatelessWidget {
  final String partographId;

  const MedicalSurveillanceListScreen({super.key, required this.partographId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabla de Vigilancia Medica'),
      ),
      body: BlocBuilder<PartographBloc, PartographState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (partograph, _, d) =>
                partograph.medicalSurveillanceTable?.isEmpty ?? true
                    ? const Center(child: Text('No hay datos'))
                    : Padding(
                        padding: const EdgeInsets.all(20),
                        child: _buildTable(
                          partograph.medicalSurveillanceTable!,
                          context,
                        ),
                      ),
            error: (errorMessage) =>
                Center(child: Text('Error: $errorMessage')),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _navigateToCreate(context),
        label: const Text('Agregar dato a la tabla'),
        icon: const Icon(
          Icons.add,
        ),
      ),
    );
  }

  Widget _buildTable(
    List<MedicalSurveillanceTable> list,
    BuildContext context,
  ) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Table(
        border: TableBorder.all(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(5),
        ),
        defaultColumnWidth: const IntrinsicColumnWidth(),
        columnWidths: const {0: FixedColumnWidth(130)},
        children: [
          _buildHeaderRow(),
          _buildDataRow(
            'Tiempo',
            list,
            (item) => '${item.time.hour}:${item.time.minute}',
            context,
          ),
          _buildDataRow(
            'Posición Materna',
            list,
            (item) => item.maternalPosition,
            context,
          ),
          _buildDataRow(
            'Presión Arterial',
            list,
            (item) => item.arterialPressure,
            context,
          ),
          _buildDataRow(
            'Pulso Materno',
            list,
            (item) => item.maternalPulse,
            context,
          ),
          /*_buildDataRow(
            'Frec. Cardiaca Fetal',
            list,
            (item) => item.fetalHeartRate,
            context,
          ),*/
          _buildDataRow(
            'Duración Contracciones',
            list,
            (item) => item.contractionsDuration,
            context,
          ),
          /*_buildDataRow(
            'Frec. Contracciones',
            list,
            (item) => item.frequencyContractions,
            context,
          ),*/
          _buildDataRow(
            'Dolor',
            list,
            (item) => item.pain,
            context,
          ),
        ],
      ),
    );
  }

  TableRow _buildHeaderRow() {
    return TableRow(
      children: [
        const TableCell(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
            child: Text(''),
          ),
        ),
        for (int i = 0; i <= 15; i++)
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
              child: Text(
                String.fromCharCode(97 + i),
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
      ],
    );
  }

  TableRow _buildDataRow(
    String title,
    List<MedicalSurveillanceTable> list,
    String Function(MedicalSurveillanceTable) getValue,
    BuildContext context,
  ) {
    return TableRow(
      children: [
        HeaderItem(value: title),
        for (int i = 0; i <= 15; i++)
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: GestureDetector(
              onTap: () {
                if (i < list.length) _navigateToEdit(context, list[i]);
              },
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 2),
                child: Text(
                  i < list.length ? getValue(list[i]) : '       ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
          ),
      ],
    );
  }

  void _navigateToEdit(BuildContext context, MedicalSurveillanceTable? item) {
    context.go(
      AppPaths.home.partographPath
          .define(partographId)
          .medicalSurveillanceListPath
          .edit
          .path,
      extra: MedicalSurveillanceEditData(
        medicalSurveillanceTableId: item!.id,
        partographId: partographId,
      ),
    );
  }

  void _navigateToCreate(BuildContext context) {
    context.go(
      AppPaths.home.partographPath
          .define(partographId)
          .medicalSurveillanceListPath
          .create
          .path,
    );
  }
}

class Item extends StatelessWidget {
  final String? value;

  const Item({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 2),
        child: Text(
          value ?? '',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}

class HeaderItem extends StatelessWidget {
  final String value;

  const HeaderItem({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 4),
        child: Text(
          value,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
