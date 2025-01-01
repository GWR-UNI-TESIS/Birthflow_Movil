import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/permission_type.dart';
import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';
import 'package:birthflow_movil/src/domain/share/usecases/search_user_group_get_usecase.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/states_events/partographs_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/share/bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/share/events/share_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/share/states/share_state.dart';
import 'package:birthflow_movil/src/ui/home/cubits/search/search_user_groups_cubit.dart';
import 'package:birthflow_movil/src/ui/home/delegate/user_group_search_delegate.dart';
import 'package:birthflow_movil/src/ui/providers/catalog_cubit.dart';
import 'package:birthflow_movil/src/ui/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({
    super.key,
    required this.partographId,
    required this.title,
    required this.subtitle,
    required this.lastUpdate,
    required this.set,
    required this.silenced,
    required this.createBy,
    this.permissionTypeId,
    required this.isAchived,
    required this.favorite,
  });

  final String partographId;
  final String title;
  final String subtitle;
  final String lastUpdate;
  final bool isAchived;
  final bool set;
  final bool silenced;
  final bool favorite;
  final String createBy;
  final int? permissionTypeId;

  @override
  Widget build(BuildContext context) {
    final FocusNode buttonFocusNode = FocusNode();
    final catalog = context.watch<CatalogCubit>().state;
    final auth = context.watch<AuthenticationBloc>().state;

    return MenuAnchor(
      childFocusNode: buttonFocusNode,
      alignmentOffset: const Offset(200, 0),
      menuChildren: <Widget>[
        MenuItemButton(
          onPressed: () {
            final userId = auth.maybeWhen(
              authenticated: (result) => result.id,
              orElse: () => null,
            );
            if (createBy == userId) {
              _showShareDialog(context, partographId, catalog);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Solo el creador del partograma tiene permiso a compartir',
                  ),
                ),
              );
            }
          },
          child: const Text('Compartir'),
        ),
        const Divider(),
        MenuItemButton(
          onPressed: () {},
          child: const Text('Marcar como favorito'),
        ),MenuItemButton(
          onPressed: () {
            context.read<PartographsBloc>().add(
                  UpdatePartographState(
          
                    partographId: partographId,
                    isAchived: !isAchived,
                    set: set,
                    silenced: silenced,
                    favorite: favorite,
                  ),
                );
          },
          child: const Text('Archivar'),
        ),
        MenuItemButton(
          onPressed: () {},
          child: Text(silenced ? 'Activar notificaciones' : 'Silenciar'),
        ),
        MenuItemButton(
          onPressed: () {
            context.read<PartographsBloc>().add(
                  UpdatePartographState(
          
                    partographId: partographId,
                    isAchived: isAchived,
                    set: !set,
                    silenced: silenced,
                    favorite: favorite,
                  ),
                );
          },
          child: Text(set ? 'Desanclar' : 'Anclar'),
        ),
        MenuItemButton(
          onPressed: () {
            final userId = auth.maybeWhen(
              authenticated: (result) => result.id,
              orElse: () => null,
            );
            if (createBy == userId) {
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Solo el creador del partograma tiene permiso a eliminar',
                  ),
                ),
              );
            }
          },
          child: const Text('Eliminar'),
        ),
      ],
      builder: (_, MenuController controller, Widget? child) {
        return ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: SizedBox(
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(lastUpdate),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (set) const Icon(Icons.push_pin),
                    if (silenced) const Icon(Icons.notifications_off),
                  ],
                ),
              ],
            ),
          ),
          onTap: () {
            final userId = auth.maybeWhen(
              authenticated: (result) => result.id,
              orElse: () => null,
            );
            final int lecturaId = catalog.permissionTypeCatalog
                .firstWhere((item) => item.name == 'Lectura')
                .id;
            final int escrituraId = catalog.permissionTypeCatalog
                .firstWhere((item) => item.name == 'Escritura')
                .id;
            if (createBy == userId) {
              context.go(
                AppPaths.home.partographPath.define(partographId).path,
                extra: partographId,
              );
            } else {
              if (permissionTypeId == lecturaId) {
                context.go(
                  AppPaths.home.partographReadOnlyPath
                      .define(partographId)
                      .path,
                  extra: partographId,
                );
              } else if (permissionTypeId == escrituraId) {
                context.go(
                  AppPaths.home.partographPath.define(partographId).path,
                  extra: partographId,
                );
              } else {
                // Maneja casos no definidos
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Permiso no reconocido')),
                );
              }
            }
          },
          focusNode: buttonFocusNode,
          onLongPress: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
        );
      },
    );
  }

  void _showShareDialog(
    BuildContext context,
    String partographId,
    Catalog catalog,
  ) {
    final TextEditingController searchController = TextEditingController();
    PermissionType permissionType = catalog.permissionTypeCatalog.first;
    final List<SearchUserGroup> sharedList =
        []; // Lista de usuarios/grupos compartidos

    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: context.read<ShareBloc>()
                ..add(ShareEvent.getAsignUserGroup(partographId: partographId)),
            ),
            BlocProvider(
              create: (context) => UserGroupSearchCubit(
                getGroupUseCase: locator<GetSearchUserGroupUseCase>(),
              ),
            ),
          ],
          child: AlertDialog(
            title: const Text('Compartir Partograma'),
            content: StatefulBuilder(
              builder: (context, setState) {
                return BlocListener<ShareBloc, ShareState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      loaded: (groups) {
                        setState(() {
                          sharedList.clear();
                          sharedList.addAll(groups);
                        });
                      },
                      orElse: () {},
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Barra de búsqueda
                      TextField(
                        controller: searchController,
                        readOnly: true, // Evita la escritura directa
                        onTap: () async {
                          final SearchUserGroup? result =
                              await showSearch<SearchUserGroup?>(
                            context: context,
                            delegate: UserGroupSearchDelegate(
                              cubit: context.read<UserGroupSearchCubit>(),
                            ),
                          );
                          if (result != null &&
                              !sharedList
                                  .any((item) => isEqual(result, item))) {
                            // Agrega el resultado a la lista con permisos por defecto
                            setState(() {
                              sharedList.add(result);
                            });
                          }
                        },
                        decoration: const InputDecoration(
                          labelText: 'Buscar usuarios o grupos',
                          suffixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      DynamicDropdownButton<PermissionType>(
                        list: catalog.permissionTypeCatalog,
                        labelText: 'Permisos',
                        onValueChanged: (value) {
                          permissionType = value;
                        },
                        displayField: (PermissionType permissionType) =>
                            permissionType.name,
                        initialValue: permissionType,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Usuarios o grupos seleccionados',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 5),
                      // Lista de usuarios o grupos seleccionados
                      if (sharedList.isNotEmpty)
                        SizedBox(
                          height: 100,
                          width: 300,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: sharedList.length,
                            itemBuilder: (context, index) {
                              final item = sharedList[index];
                              return ListTile(
                                title: Text(item.name),
                                trailing: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      sharedList.removeWhere(
                                        (current) =>
                                            current.name == item.name &&
                                            (current.userId == item.userId ||
                                                current.groupId ==
                                                    item.groupId),
                                      );
                                    });
                                  },
                                  icon: const Icon(Icons.delete),
                                ),
                              );
                            },
                          ),
                        )
                      else
                        const Text(
                          'No hay usuarios o grupos seleccionados',
                          style: TextStyle(color: Colors.grey),
                        ),
                    ],
                  ),
                );
              },
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(dialogContext),
                child: const Text('Cancelar'),
              ),
              TextButton(
                onPressed: () {
                  context.read<ShareBloc>().add(
                        ShareEvent.asignUserGroup(
                          partographId: partographId,
                          permissionTypeId: permissionType.id,
                          searchUserGroupDtos: sharedList,
                        ),
                      );
                  Navigator.pop(dialogContext);
                },
                child: const Text('Aceptar'),
              ),
            ],
          ),
        );
      },
    );
  }

  bool isEqual(SearchUserGroup obj1, SearchUserGroup obj2) {
    return obj1.name == obj2.name &&
        obj1.userId == obj2.userId &&
        obj1.groupId == obj2.groupId &&
        obj1.type == obj2.type;
  }
}
