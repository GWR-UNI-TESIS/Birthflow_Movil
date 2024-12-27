import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';
import 'package:birthflow_movil/src/ui/home/blocs/share/bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/share/events/share_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/share/states/share_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserGroupSearchDelegate extends SearchDelegate<SearchUserGroup?> {
  final ShareBloc bloc;

  UserGroupSearchDelegate({required this.bloc});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = ''; // Limpia la barra de búsqueda
          bloc.add(const ShareEvent.searchUsersGroup(query: '')); // Limpia los resultados
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null); // Cierra la búsqueda sin resultado
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    bloc.add(ShareEvent.searchUsersGroup(query: query)); // Solicita los datos al Bloc

    return BlocBuilder<ShareBloc, ShareState>(
      bloc: bloc,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (groups) => ListView.builder(
            itemCount: groups.length,
            itemBuilder: (context, index) {
              final group = groups[index];
              return ListTile(
                title: Text(group.name),
                onTap: () {
                  close(context, group); // Devuelve el nombre seleccionado
                },
              );
            },
          ),
          error: (message) => Center(child: Text('Error: $message')),
          orElse: () => const Center(child: Text('No se encontraron resultados')),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Aquí no se realiza lógica adicional porque no hay sugerencias en tiempo real
    return const SizedBox.shrink();
  }
}
