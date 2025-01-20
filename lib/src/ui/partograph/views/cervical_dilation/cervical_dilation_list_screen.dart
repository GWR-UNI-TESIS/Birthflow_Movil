import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
      body: BlocBuilder<PartographBloc, PartographState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (partograph, _) =>
                partograph.cervicalDilations?.isEmpty ?? true
                    ? const Center(child: Text('No hay datos'))
                    : _buildCervicalDilationList(partograph.cervicalDilations!),
            error: (errorMessage) =>
                Center(child: Text('Error: $errorMessage')),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
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
      title: Text('${item.value} - ${item.hour}'),
      subtitle: item.remOrRam ? const Chip(label: Text('Ram O Rem')) : null,
      onTap: () => _navigateToEdit(context, item),
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
        cervicalDilation: item,
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
