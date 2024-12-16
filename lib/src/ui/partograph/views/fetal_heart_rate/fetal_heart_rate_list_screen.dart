import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/fetal_heart_rate.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FetalHeartRateListScreen extends StatelessWidget {
  final String partographId;

  const FetalHeartRateListScreen({
    super.key,
    required this.partographId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Frecuencias Cardiacas Fetales'),
      ),
      body: BlocBuilder<PartographBloc, PartographState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (partograph, _) =>
                partograph.fetalHeartRates?.isEmpty ?? true
                    ? const Center(child: Text('No hay datos'))
                    : _buildFetalHeartRateList(partograph.fetalHeartRates!),
            error: (errorMessage) =>
                Center(child: Text('Error: $errorMessage')),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _navigateToCreate(context),
      ),
    );
  }

  Widget _buildFetalHeartRateList(List<FetalHeartRate> fetalHeartRates) {
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

  Widget _buildCervicalDilationTile(BuildContext context, FetalHeartRate item) {
    return ListTile(
      title: Text('${item.value} - ${item.time}'),
      onTap: () => _navigateToEdit(context, item),
    );
  }

  void _navigateToEdit(BuildContext context, FetalHeartRate? item) {
    context.go(
      AppPaths.home.partographPath
          .define(partographId)
          .fetalHeartRatePath
          .edit
          .path,
      extra: FetalHeartRateEditData(
        fetalHeartRate: item,
        partographId: partographId,
      ),
    );
  }

  void _navigateToCreate(BuildContext context) {
    context.go(
      AppPaths.home.partographPath
          .define(partographId)
          .fetalHeartRatePath
          .create
          .path,
    );
  }
}
