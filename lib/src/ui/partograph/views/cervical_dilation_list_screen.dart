import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/views/cervical_dilation_edit_screen.dart';
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
        title: const Text('Dilataciones Cervicales'),
      ),
      body: BlocBuilder<PartographBloc, PartographState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (cervicalDilation, message) {
              return CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final item = cervicalDilation[index];
                        return ListTile(
                          title: Text(
                            '${item.value} - ${item.hour} -',
                          ),
                          subtitle: (item.remOrRam)
                              ? const Chip(label: Text('Ram O Rem'))
                              : null,
                          onTap: () => context.goNamed(
                            RoutePaths.cervicalDilation.name,
                            extra: CervicalDilationEditData(
                              cervicalDilation: item,
                              partographId: partographId,
                            ),
                          ),
                        );
                      },
                      childCount: cervicalDilation!.length,
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
        onPressed: () => context.goNamed(
          RoutePaths.cervicalDilation.name,
          extra: CervicalDilationEditData(
            cervicalDilation: null,
            partographId: partographId,
          ),
        ),
      ),
    );
  }
}
