import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph_list.dart';
import 'package:birthflow_movil/src/domain/share/usecases/asign_user_group_usecase.dart';
import 'package:birthflow_movil/src/domain/share/usecases/get_asign_user_group_usecase.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/events/authentication_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/states_events/partographs_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/states_events/partographs_state.dart';
import 'package:birthflow_movil/src/ui/home/blocs/share/bloc.dart';
import 'package:birthflow_movil/src/ui/home/widget/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

enum _Options { groups, configuration, information, logout }

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthenticationBloc>().state;
    final String userId = state.maybeWhen(
      authenticated: (response) => response.id!,
      orElse: () => '',
    );

    // Solo dispara FetchPartographs si el usuario está autenticado
    if (userId.isNotEmpty) {
      context.read<PartographsBloc>().add(FetchPartographs(userId: userId));
    }

    return BlocProvider(
      create: (context) => ShareBloc(
        getAsignUserGroupUseCase: locator<GetAsignUserGroupUseCase>(),
        asignUserGroupUseCase: locator<AsignUserGroupUseCase>(),
      ),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            title: const Text('BirthFlow'),
            elevation: 2,
            actions: <Widget>[
              IconButton(
                onPressed: () => _scaffoldKey.currentState?.openEndDrawer(),
                icon: const Icon(Icons.notifications),
              ),
              IconButton(
                onPressed: () => context.push(AppPaths.home.search.path),
                icon: const Icon(Icons.search),
              ),
              PopupMenuButton<_Options>(
                onSelected: (item) => _handleMenuOption(context, item, userId),
                itemBuilder: (_) => const [
                  PopupMenuItem(
                    value: _Options.groups,
                    child: Text('Grupos'),
                  ),
                  PopupMenuItem(
                    value: _Options.configuration,
                    child: Text('Configuración'),
                  ),
                  PopupMenuItem(
                    value: _Options.information,
                    child: Text('Información'),
                  ),
                  PopupMenuItem(
                    value: _Options.logout,
                    child: Text('Cerrar sesión'),
                  ),
                ],
              ),
            ],
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(text: 'Partogramas'),
                  Tab(text: 'Grupos de Partogramas'),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              BlocBuilder<PartographsBloc, PartographsState>(
                builder: (context, state) => state.when(
                  initial: () =>
                      const Center(child: CircularProgressIndicator()),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  loaded: (data) => _buildPartographsList(data),
                  error: (message) => Center(child: Text('Error: $message')),
                  empty: () => const Center(child: Text('No hay datos')),
                ),
              ),
              Container()
            ],
          ),
          endDrawer: const NotificationsDrawer(),
          floatingActionButton: FloatingActionButton(
            tooltip: 'Nuevo',
            onPressed: () => _handleNewPartograph(context, userId),
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }

  void _handleMenuOption(BuildContext context, _Options item, String userId) {
    switch (item) {
      case _Options.groups:
        context.go(
          AppPaths.home.groupsPath.path,
        );
      case _Options.configuration:
        // Acción para Configuración
        break;
      case _Options.logout:
        context.read<AuthenticationBloc>().add(const Logout());
      default:
        break;
    }
  }

  Future<void> _handleNewPartograph(BuildContext context, String userId) async {
    final String? value = await context.push(AppPaths.home.create.path);
    if (value != null) {
      context.read<PartographsBloc>().add(FetchPartographs(userId: userId));
      context.go(AppPaths.home.partographPath.define(value).path, extra: value);
    }
  }

  Widget _buildPartographsList(List<PartographList> data) {
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
                final lastModification = item.updateAt ?? item.createdAt;
                return ListItemWidget(
                  partographId: item.partographId!,
                  title: item.name,
                  subtitle:
                      '${item.recordName}-${DateFormat('yyyy-MM-dd').format(item.date)}',
                  lastUpdate:
                      DateFormat('yyyy-MM-dd').format(lastModification!),
                  set: item.set,
                  silenced: item.silenced,
                  createBy: item.createdBy!,
                  permissionTypeId: item.accessType,
                );
              }
            },
            childCount: data.length + 1,
          ),
        ),
      ],
    );
  }
}

class NotificationsDrawer extends StatelessWidget {
  const NotificationsDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(title: const Text('Notificaciones')),
          const Expanded(child: Center(child: Text('No hay notificaciones'))),
        ],
      ),
    );
  }
}
