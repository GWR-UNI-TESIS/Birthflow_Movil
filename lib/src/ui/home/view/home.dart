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
import 'package:birthflow_movil/src/ui/home/blocs/notifications/bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/notifications/events/notifications_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/notifications/states/notifications_state.dart';
import 'package:birthflow_movil/src/ui/home/blocs/share/bloc.dart';
import 'package:birthflow_movil/src/ui/home/widget/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

enum _Options { groups, configuration, favorite, information, logout }

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthenticationBloc>().state;
    final String userId = state.maybeWhen(
      authenticated: (response, message) => response.id!,
      orElse: () => '',
    );

    // Solo dispara FetchPartographs si el usuario está autenticado
    if (userId.isNotEmpty) {
      context.read<PartographsBloc>().add(FetchPartographs(userId: userId));
    }

    return BlocListener<PartographsBloc, PartographsState>(
      listener: (context, state) {},
      child: BlocProvider(
        create: (context) => ShareBloc(
          getAsignUserGroupUseCase: locator<GetAsignUserGroupUseCase>(),
          asignUserGroupUseCase: locator<AsignUserGroupUseCase>(),
        ),
        child: DefaultTabController(
          length: 1,
          child: Scaffold(
            key: _scaffoldKey,
            appBar: AppBar(
              title: const Text('BirthFlow'),
              automaticallyImplyLeading: false,
              elevation: 1,
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
                  onSelected: (item) =>
                      _handleMenuOption(context, item, userId),
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
                      value: _Options.favorite,
                      child: Text('Favoritos'),
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
                    loaded: (data, message) {
                      return RefreshIndicator(
                        onRefresh: () async {
                          // Dispara el evento FetchPartographs para recargar los datos
                          context
                              .read<PartographsBloc>()
                              .add(FetchPartographs(userId: userId));
                        },
                        child: _buildPartographsList(data),
                      );
                    },
                    error: (message) {
                      return RefreshIndicator(
                        onRefresh: () async {
                          // Dispara el evento FetchPartographs para recargar los datos
                          context
                              .read<PartographsBloc>()
                              .add(FetchPartographs(userId: userId));
                        },
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return SingleChildScrollView(
                              physics: const AlwaysScrollableScrollPhysics(),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minHeight: constraints.maxHeight,
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/503_error_service.png',
                                        height: 260.0,
                                        fit: BoxFit.fill,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        message,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                    empty: () {
                      return RefreshIndicator(
                        onRefresh: () async {
                          // Dispara el evento FetchPartographs para recargar los datos
                          context
                              .read<PartographsBloc>()
                              .add(FetchPartographs(userId: userId));
                        },
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return SingleChildScrollView(
                              physics: const AlwaysScrollableScrollPhysics(),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minHeight: constraints.maxHeight,
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/no_data.png',
                                        height: 260.0,
                                        fit: BoxFit.fill,
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        'No hay datos',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
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
        context.go(
          AppPaths.home.configurationPath.path,
        );
      case _Options.favorite:
        context.go(
          AppPaths.home.favorite.path,
        );
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
    // Crear una copia modificable de los datos
    final mutableData = List<PartographList>.from(data);

    // Filtrar los partogramas para excluir los archivados
    final filteredData = mutableData.where((item) => !item.isAchived).toList();

    // Ordenar los datos para que los elementos con set == true estén al inicio
    filteredData.sort((a, b) {
      if (a.set && !b.set) return -1;
      if (!a.set && b.set) return 1;
      return 0;
    });
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              if (index == 0) {
                return ListTile(
                  leading: const Icon(Icons.archive),
                  title: const Text('Archivados'),
                  onTap: () => context.go(AppPaths.home.archived.path),
                );
              } else {
                final item = filteredData[index - 1];
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
                  isAchived: item.isAchived,
                  favorite: item.favorite,
                );
              }
            },
            childCount: filteredData.length + 1,
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
          AppBar(
            title: const Text('Notificaciones'),
            elevation: 2,
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none),
              ),
            ],
          ),
          Expanded(
            child: BlocBuilder<NotificationsBloc, NotificationsState>(
              builder: (context, state) {
                if (state is NotificationsLoaded) {
                  final notifications = state.notifications;
                  return RefreshIndicator(
                    onRefresh: () async {
                      // Dispara el evento para recargar las notificaciones
                      context
                          .read<NotificationsBloc>()
                          .add(const LoadNotifications());
                    },
                    child: ListView.separated(
                      itemCount: notifications.length,
                      separatorBuilder: (context, index) => const Divider(),
                      itemBuilder: (context, index) {
                        final notification = notifications[index];
                        final dateTime = DateFormat('yyyy-MM-dd HH:mm:ss')
                            .parse(notification.scheduledFor.toString(), true);
                        final dateLocal = dateTime.toLocal();

                        // Formatear la fecha
                        final dayFormat = DateFormat('yyyy-MM-dd');
                        final timeFormat = DateFormat('HH:mm:ss');
                        final formattedDay = dayFormat.format(dateLocal);
                        final formattedTime = timeFormat.format(dateLocal);

                        return ListTile(
                          title: Text(
                            notification.title,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          subtitle: Text(notification.message),
                          trailing: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                formattedDay,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                formattedTime,
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          onTap: () {
                            if (notification.partographId != null) {
                              context.go(
                                AppPaths.home.partographPath
                                    .define(notification.partographId!)
                                    .path,
                                extra: notification.partographId,
                              );
                            }
                          },
                        );
                      },
                    ),
                  );
                } else if (state is NotificationsError) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(state.message),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            // Vuelve a intentar cargar las notificaciones
                            context
                                .read<NotificationsBloc>()
                                .add(const LoadNotifications());
                          },
                          child: const Text('Reintentar'),
                        ),
                      ],
                    ),
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ],
      ),
    );
  }
}
