import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/states_events/partographs_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/states_events/partographs_state.dart';
import 'package:birthflow_movil/src/ui/home/widget/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

enum _Options { newPartograph, configuration, information }

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthenticationBloc>().state;
    final String user = state.maybeWhen(
      authenticated: (response) => response.userId!,
      orElse: () => '',
    );
    context.read<PartographsBloc>().add(FetchPartographs(userId: user));

    return DefaultTabController(
      length: 1,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text('BirthFlow'),
          elevation: 2,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
              icon: const Icon(Icons.notifications),
            ),
            IconButton(
              onPressed: () {
                context.pushNamed(RoutePaths.search.name);
              },
              icon: const Icon(Icons.search),
            ),
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
                const PopupMenuItem<_Options>(
                  value: _Options.information,
                  child: Text('Cerrar sesion'),
                ),
              ],
            ),
          ],
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(
              kToolbarHeight,
            ),
            child: SizedBox(
              width: double.infinity,
              child: TabBar(
                tabAlignment: TabAlignment.start,
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
            BlocBuilder<PartographsBloc, PartographsState>(
              builder: (context, state) {
                return state.maybeWhen(
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
                                final item = data[index - 1];
                                return ListItemWidget(
                                  partographId: item.partographId!,
                                  title: item.name,
                                  subtitle:
                                      '${item.recordName}-${DateFormat('yyyy-MM-dd').format(item.date)}',
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
                  orElse: () => Container(),
                );
              },
            ),
          ],
        ),
        endDrawer: NotificationsDrawer(),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Nuevo',
          onPressed: () async {
            final String? value =
                await context.pushNamed(RoutePaths.createPartograph.name);

            if (value != null) {
              context
                  .read<PartographsBloc>()
                  .add(FetchPartographs(userId: user));

              context.go(
                context.namedLocation(
                  RoutePaths.partograma.name,
                  pathParameters: {
                    'partographId': value,
                  },
                ),
              );
            }
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class NotificationsDrawer extends Drawer {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificaciones'),
      ),
      body: Container(),
    );
  }
}
