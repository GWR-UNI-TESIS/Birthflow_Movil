import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/domain/share/models/search_user_group.dart';
import 'package:birthflow_movil/src/domain/share/usecases/search_user_get_usecase.dart';
import 'package:birthflow_movil/src/ui/libs/cubits/search_users_cubit.dart';
import 'package:birthflow_movil/src/ui/libs/cubits/search_users_state.dart/search_users_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchUsersDelegate extends SearchDelegate<SearchUserGroup?> {
  final SearchUsersCubit cubit;

  SearchUsersDelegate()
      : cubit = SearchUsersCubit(
          getSearchUserUseCase: locator<GetSearchUserUseCase>(),
        );

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
    return BlocBuilder<SearchUsersCubit, SearchUsersState>(
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
          error: (message) => Center(
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
