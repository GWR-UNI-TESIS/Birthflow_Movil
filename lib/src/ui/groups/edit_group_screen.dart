import 'package:birthflow_movil/src/domain/share/models/group.dart';
import 'package:birthflow_movil/src/ui/groups/bloc/bloc.dart';
import 'package:birthflow_movil/src/ui/groups/bloc/events/groups_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditGroupView extends StatelessWidget {
  final Group group;
  final TextEditingController _nameController;

  EditGroupView({required this.group})
      : _nameController = TextEditingController(text: group.groupName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Modificar Grupo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Nombre de grupo'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final name = _nameController.text;
                if (name.isNotEmpty) {
                  context
                      .read<GroupsBloc>()
                      .add(GroupsEvent.updateGroup(group.id, name));
                  Navigator.pop(context);
                }
              },
              child: const Text('Modificar'),
            ),
          ],
        ),
      ),
    );
  }
}
