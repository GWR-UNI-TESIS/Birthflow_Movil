import 'package:birthflow_movil/src/config/router/path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListItemWidget extends StatefulWidget {
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
  State<ListItemWidget> createState() => _ListItemState();
}

class _ListItemState extends State<ListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      titleAlignment: ListTileTitleAlignment.center,
      title: Text(widget.title),
      trailing: SizedBox(
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.lastUpdate),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (widget.set) const Icon(Icons.push_pin),
                if (widget.silenced) const Icon(Icons.notifications_off),
              ],
            ),
          ],
        ),
      ),
      onTap: () {
        context.go(
          AppPaths.home.partographPath.define(widget.partographId).path,
          extra: widget.partographId,
        );
      },
      subtitle: Text(widget.subtitle),
      onLongPress: () => showModalBottomSheet<void>(
        context: context,
        showDragHandle: true,
        builder: (BuildContext context) {
          return SizedBox(
            height: 120,
            child: Center(
              child: Column(
                children: <Widget>[
                  const Text('Estado'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.favorite),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: (widget.silenced)
                            ? const Icon(Icons.notifications_off)
                            : const Icon(Icons.notifications),
                      ),
                      IconButton(
                        isSelected: widget.set,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        selectedIcon: const Icon(Icons.push_pin),
                        icon: const Icon(Icons.push_pin),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
