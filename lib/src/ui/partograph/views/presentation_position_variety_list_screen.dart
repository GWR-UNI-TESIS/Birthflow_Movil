import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/views/presentation_position_variety_edit_screen.dart';
import 'package:birthflow_movil/src/ui/providers/catalog_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class PresentationPositionVarietyListScreen extends StatelessWidget {
  final String partographId;
  const PresentationPositionVarietyListScreen({
    super.key,
    required this.partographId,
  });

  @override
  Widget build(BuildContext context) {
    final catalog = context.read<CatalogCubit>().state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Altura de la presentacion'),
      ),
      body: BlocBuilder<PartographBloc, PartographState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (data, message) {
              return (data.presentationPositionVarieties == null ||data.presentationPositionVarieties!.isEmpty)
                  ? const Center(child: Text('No hay datos'))
                  : CustomScrollView(
                      slivers: [
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              final item =
                                  data.presentationPositionVarieties![index];

                                  final hodgePlane = catalog.hodgePlanesCatalog.firstWhere((hodgePlane) => hodgePlane.id == item.hodgePlane);

                                  final position = catalog.positionCatalog.firstWhere((position) => position.id == item.position);
                              return ListTile(
                                title: Text(
                                  '${hodgePlane.description} - ${position.description}',
                                ),
                                subtitle: Text(
                                  DateFormat.Hms().format(item.time),
                                ),
                                onTap: () => _navigateToEdit(context, item),
                              );
                            },
                            childCount:
                                data.presentationPositionVarieties!.length,
                          ),
                        ),
                      ],
                    );
            },
            error: (errorMessage) =>
                Center(child: Text('Error: $errorMessage')),
            empty: () => const Center(
              child: Text('No hay datos'),
            ),
            orElse: () => Container(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _navigateToEdit(context, null),
      ),
    );
  }

  void _navigateToEdit(BuildContext context, PresentationPositionVariety? item) {
    context.go(
      AppPaths.home.partographPath.define(partographId).presentationPositionVarietyPath.edit.path,
      extra: PresentationPositionVarietyData(
        presentationPositionVariety: item,
        partographId: partographId,
      ),
    );
  }
}
