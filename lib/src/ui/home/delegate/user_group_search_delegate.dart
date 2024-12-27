import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';
import 'package:birthflow_movil/src/ui/home/cubits/search/search_user_groups_cubit.dart';
import 'package:birthflow_movil/src/ui/home/cubits/state/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserGroupSearchDelegate extends SearchDelegate<SearchUserGroup?> {
  final UserGroupSearchCubit cubit;

  UserGroupSearchDelegate({required this.cubit});

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = ''; // Limpia la barra de búsqueda
          cubit.clearSearch(); // Limpia los resultados
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
    cubit.search(query);
    return BlocBuilder<UserGroupSearchCubit, SearchState>(
      bloc: cubit,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (groups) => ListView.builder(
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
          orElse: () =>
              const Center(child: Text('No se encontraron resultados')),
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
