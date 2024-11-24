import 'package:birthflow_movil/src/ui/home/blocs/home/bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/states_events/partographs_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/states_events/partographs_state.dart';
import 'package:birthflow_movil/src/ui/home/models/filters.dart';
import 'package:birthflow_movil/src/ui/home/widget/item.dart';
import 'package:birthflow_movil/src/ui/widgets/custom_dropdown_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';



class SearchScreen extends StatefulWidget {
  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchScreen> {
  final TextEditingController textEditingController = TextEditingController();
  String searchText = '';

  FilterModel filterModel = FilterModel(
    filter: Filters.all,
    actividad: 'Creado por mi',
    hora: 'En cualquier momento',
  );

  @override
  Widget build(BuildContext context) {
    void applyFiltersAndSearch() {
      context.read<PartographsBloc>().add(
            ApplyFiltersAndSearch(filter: filterModel, searchText: searchText),
          );
    }

    Future<void> openFilterDialog() async {
      final result = await _dialogBuilder(context);
      if (result != null) {
        filterModel = result;
      }
      applyFiltersAndSearch();
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 90,
        elevation: 2,
        title: SearchBar(
          controller: textEditingController,
          onChanged: (text) {
            setState(() {
              searchText = text;
            });
            applyFiltersAndSearch();
          },
        ),
        actions: [
          IconButton(
            onPressed: () => openFilterDialog(),
            icon: const Icon(Icons.filter_list),
          ),
        ],
      ),
      body: BlocBuilder<PartographsBloc, PartographsState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (data) {
              return CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                  
                          final item = data[index ];
                          return ListItemWidget(
                            partographId: item.partographId!,
                            title: item.name,
                            subtitle:
                                '${item.recordName}-${DateFormat('yyyy-MM-dd').format(item.date)}', lastUpdate: '', set: false, silenced: false,
                          );
                      
                      },
                      childCount: data.length ,
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
    );
  }

  Future<FilterModel?> _dialogBuilder(BuildContext context) {
    Filters selectedFilter = Filters.all;
    String selectedActividad = 'Creado por mi';
    String selectedHora = 'En cualquier momento';

    return showDialog<FilterModel>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Filtros'),
          scrollable: true,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MultipleChoice(
                onSelected: (filters) {
                  selectedFilter = filters;
                },
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomDropdownMenu(
                  label: 'Actividad',
                  items: const [
                    'Creado por mi',
                    'Editado por mi',
                    'Comentarios hechos por mi',
                  ],
                  currentValue: filterModel.actividad,
                  onChanged: (String value) {
                    selectedActividad = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomDropdownMenu(
                  label: 'Hora',
                  items: const [
                    'En cualquier momento',
                    'Ayer',
                    'Semana anterior',
                    'Mes anterior',
                  ],
                  currentValue: filterModel.hora,
                  onChanged: (String value) {
                    selectedHora = value;
                  },
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Filtrar'),
              onPressed: () {
                Navigator.of(context).pop(
                  FilterModel(
                    filter: selectedFilter,
                    actividad: selectedActividad,
                    hora: selectedHora,
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class MultipleChoice extends StatefulWidget {
  final Function(Filters) onSelected;

  const MultipleChoice({required this.onSelected});

  @override
  _MultipleChoiceState createState() => _MultipleChoiceState();
}

class _MultipleChoiceState extends State<MultipleChoice> {
  Filters _filter = Filters.all;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 3.0,
      children: List<Widget>.generate(
        Filters.values.length,
        (int index) {
          final filter = Filters.values[index];
          return ChoiceChip(
            showCheckmark: false,
            label: Text(
              filter.name,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            selected: _filter == filter, // Selecciona inicialmente "all"
            onSelected: (selected) {
              setState(() {
                _filter = filter;
              });
              widget.onSelected(
                _filter,
              ); // Llama al callback con el filtro seleccionado
            },
          );
        },
      ).toList(),
    );
  }
}
