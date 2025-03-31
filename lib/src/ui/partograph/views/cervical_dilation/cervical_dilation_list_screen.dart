import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class CervicalDilationListScreen extends StatelessWidget {
  final String partographId;
  const CervicalDilationListScreen({
    super.key,
    required this.partographId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Dilataciones Cervicales'),
      ),
      body: SafeArea(
        child: BlocBuilder<PartographBloc, PartographState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (partograph, _, d) => partograph
                          .cervicalDilations?.isEmpty ??
                      true
                  ? const Center(child: Text('No hay datos'))
                  : _buildCervicalDilationList(partograph.cervicalDilations!),
              error: (errorMessage) =>
                  Center(child: Text('Error: $errorMessage')),
              orElse: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _navigateToCreate(context),
        label: const Text('Agregar'),
        icon: const Icon(
          Icons.add,
        ),
      ),
    );
  }

  Widget _buildCervicalDilationList(List<CervicalDilation> cervicalDilations) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final item = cervicalDilations[index];
              return _buildCervicalDilationTile(context, item);
            },
            childCount: cervicalDilations.length,
          ),
        ),
      ],
    );
  }

  Widget _buildCervicalDilationTile(
    BuildContext context,
    CervicalDilation item,
  ) {
    return ListTile(
      title: Text(
          'Valor: ${item.value} - Hora: ${DateFormat('dd/MM/yyyy hh:mm:ss').format(item.hour)}'),
      subtitle: item.remOrRam ? const Chip(label: Text('Ram O Rem')) : null,
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () => _confirmDelete(context, item.id),
      ),
      onTap: () => _navigateToEdit(context, item),
    );
  }

  void _confirmDelete(BuildContext context, int id) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Eliminar Dilatación Cervical'),
          content:
              const Text('¿Estás seguro de que deseas eliminar este registro?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                context
                    .read<PartographBloc>()
                    .add(DeleteCervicalDilation(id: id));
              },
              child:
                  const Text('Eliminar', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  void _navigateToEdit(BuildContext context, CervicalDilation? item) {
    context.go(
      AppPaths.home.partographPath
          .define(partographId)
          .cervicalDilationList
          .edit
          .path,
      extra: CervicalDilationEditData(
        cervicalDilationId: item!.id,
        partographId: partographId,
      ),
    );
  }

  void _navigateToCreate(BuildContext context) {
    context.go(
      AppPaths.home.partographPath
          .define(partographId)
          .cervicalDilationList
          .create
          .path,
    );
  }
}
