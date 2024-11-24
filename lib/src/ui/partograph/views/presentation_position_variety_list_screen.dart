import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PresentationPositionVarietyListScreen extends StatelessWidget {
  final String partographId;
  const PresentationPositionVarietyListScreen({
    super.key,
    required this.partographId,
  });

  @override
  Widget build(BuildContext context) {
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
                              return ListTile(
                                title: Text(
                                  '${item.hodgePlane} - ${item.position}',
                                ),
                                subtitle: Text(
                                  '${item.time}',
                                ),
                                onTap: () => {},
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
        onPressed: () => {},
      ),
    );
  }
}
