import 'package:birthflow_movil/src/auth/bloc/auth_bloc.dart';
import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/domain/partograma/usecases/partograma_get_usecase.dart';
import 'package:birthflow_movil/src/ui/home/bloc/bloc.dart';
import 'package:birthflow_movil/src/ui/home/bloc/states_events/partogramas_event.dart';
import 'package:birthflow_movil/src/ui/home/bloc/states_events/partogramas_state.dart';
import 'package:birthflow_movil/src/ui/home/widget/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum _Options { newPartograph, configuration, information }

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthenticationBloc>().state;
    final user = state.maybeWhen(
      authenticated: (response) => response.user.id,
      orElse: () => '',
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider<PartogramasBloc>(
          create: (context) => PartogramasBloc(
            locator<PartogramaGetUseCase>(),
          )..add(PartogramasEvent.fetchPartogramas(userId: user)),
        ),
      ],
      child: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BirthFlow'),
          elevation: 2,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            PopupMenuButton<_Options>(
              padding: const EdgeInsets.all(12),
              position: PopupMenuPosition.under,
              onSelected: (_Options item) {
                if (item == _Options.newPartograph) {}

                if (item == _Options.configuration) {}
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<_Options>>[
                const PopupMenuItem<_Options>(
                  value: _Options.newPartograph,
                  child: Text('Nuevo Partograma'),
                ),
                const PopupMenuItem<_Options>(
                  value: _Options.configuration,
                  child: Text('Configuracion'),
                ),
                const PopupMenuItem<_Options>(
                  value: _Options.information,
                  child: Text('Informacion'),
                ),
              ],
            ),
          ],
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(
              kToolbarHeight,
            ), // Ajusta la altura según tu diseño
            child: SizedBox(
              width: double.infinity,
              child: TabBar(
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    text: 'Partogramas',
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            BlocBuilder<PartogramasBloc, PartogramasState>(
              builder: (context, state) {
                return state.when(
                  initial: () =>
                      const Center(child: CircularProgressIndicator()),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  loaded: (data) {
                    return CustomScrollView(
                      slivers: [
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              if (index == 0) {
                                return const ListTile(
                                  leading: Icon(Icons.archive),
                                  title: Text('Archivados'),
                                );
                              } else {
                                // Aquí deberías utilizar los datos generales que obtuviste del Bloc
                                final item = data[index - 1];
                                return ListItemWidget(
                                  partographId: item.partogramaId,
                                  title: item.nombre,
                                  subtitle:
                                      '${item.expediente}-${item.fecha.toIso8601String()}',
                                );
                              }
                            },
                            childCount: data.length + 1,
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
                );
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Nuevo',
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
