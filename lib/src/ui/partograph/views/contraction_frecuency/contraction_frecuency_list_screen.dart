import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ContractionFrequencyListScreen extends StatelessWidget {
  final String partographId;

  const ContractionFrequencyListScreen({
    super.key,
    required this.partographId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: const Text('Frecuencias Contracciones'),
        ),
        body: BlocBuilder<PartographBloc, PartographState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (partograph, _, d ) =>
                  partograph.contractionFrequencies?.isEmpty ?? true
                      ? const Center(child: Text('No hay datos'))
                      : _buildContractionFrequencyList(partograph.contractionFrequencies!),
              error: (errorMessage) =>
                  Center(child: Text('Error: $errorMessage')),
              orElse: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => _navigateToCreate(context),
        ),);
  }

  Widget _buildContractionFrequencyList(List<ContractionFrequency> fetalHeartRates) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final item = fetalHeartRates[index];
              return _buildCervicalDilationTile(context, item);
            },
            childCount: fetalHeartRates.length,
          ),
        ),
      ],
    );
  }

  Widget _buildCervicalDilationTile(BuildContext context, ContractionFrequency item) {
    return ListTile(
      title: Text('${item.value} - ${item.time}'),
      onTap: () => _navigateToEdit(context, item),
    );
  }

  void _navigateToEdit(BuildContext context, ContractionFrequency? item) {
    context.go(
      AppPaths.home.partographPath
          .define(partographId)
          .contractionFrequencyPath
          .edit
          .path,
      extra: ContractionFrequencyEditData(
        contractionFrequencyId: item!.id,
        partographId: partographId,
      ),
    );
  }

   void _navigateToCreate(BuildContext context) {
    context.go(
      AppPaths.home.partographPath
          .define(partographId)
          .contractionFrequencyPath
          .create
          .path,
    
    );
  }
}
