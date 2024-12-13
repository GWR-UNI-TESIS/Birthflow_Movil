import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:flutter/material.dart';
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
  });

  final String partographId;
  final String title;
  final String subtitle;
  final String lastUpdate;
  final bool set;
  final bool silenced;

  @override
  Widget build(BuildContext context) {
    final FocusNode buttonFocusNode = FocusNode();

    return MenuAnchor(
      childFocusNode: buttonFocusNode,
      alignmentOffset: const Offset(200, 0),
      menuChildren: <Widget>[
        MenuItemButton(
          onPressed: () {},
          child: const Text('Compartir'),
        ),
        const Divider(),
        MenuItemButton(
          onPressed: () {},
          child: const Text('Marcar como favorito'),
        ),
        MenuItemButton(
          onPressed: () {},
          child: Text(silenced ? 'Activar notificaciones' : 'Silenciar'),
        ),
        MenuItemButton(
          onPressed: () {},
          child: Text(set ? 'Desanclar' : 'Anclar'),
        ),
        MenuItemButton(
          onPressed: () {},
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
            context.go(
              AppPaths.home.partographPath.define(partographId).path,
              extra: partographId,
            );
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

   void _showShareDialog(BuildContext context, String partographId) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Compartir Partograma'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: const Text('Cancelar'),
            ),
          ],
        );
      },
    );
  }
}
