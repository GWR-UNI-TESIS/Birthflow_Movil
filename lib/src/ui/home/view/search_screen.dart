import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/activity.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/filter.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/hour_filter.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/search_partographs_usecase.dart';
import 'package:birthflow_movil/src/ui/home/blocs/search_partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/search_partograph/events/search_partograph_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/search_partograph/states/search_partograph_state.dart';
import 'package:birthflow_movil/src/ui/home/models/filters.dart';
import 'package:birthflow_movil/src/ui/home/widget/item.dart';
import 'package:birthflow_movil/src/ui/providers/catalog_cubit.dart';
import 'package:birthflow_movil/src/ui/widgets/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchPartographBloc(
        searchPartographsUseCase: locator<SearchPartographsUseCase>(),
      ),
      child: SearchView(),
    );
  }
}

class SearchView extends StatefulWidget {
  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final TextEditingController textEditingController = TextEditingController();
  String searchText = '';

  late FilterModel filterModel;
  @override
  void initState() {
    super.initState();
    final catalog = context.read<CatalogCubit>().state;

    // Inicializar filtros con valores predeterminados
    filterModel = FilterModel(
      filter: catalog.filterCatalog.first,
      actividad: catalog.activityCatalog.first,
      hora: catalog.hourFilterCatalog.first,
    );
  }

  @override
  Widget build(BuildContext context) {
    void applyFiltersAndSearch() {
      context.read<SearchPartographBloc>().add(
            SearchPartographEvent.search(
              name: textEditingController.text,
              filterId: filterModel.filter.id,
              activityId: filterModel.actividad.id,
              hourFilterId: filterModel.hora.id,
            ),
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
      body: BlocBuilder<SearchPartographBloc, SearchPartographState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (data) {
              return CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final item = data[index];
                        return ListItemWidget(
                          partographId: item.partographId!,
                          title: item.name,
                          subtitle:
                              '${item.recordName}-${DateFormat('yyyy-MM-dd').format(item.date)}',
                          lastUpdate: '',
                          set: false,
                          silenced: false,
                          createBy: item.createdBy!,
                          permissionTypeId: item.accessType,
                          isAchived: item.isAchived,
                          favorite: item.favorite,
                        );
                      },
                      childCount: data.length,
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

  Future<FilterModel?> _dialogBuilder(BuildContext context) async {
    final catalog = context.read<CatalogCubit>().state;

    return showDialog<FilterModel>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return FilterDialog(
          initialFilterModel: filterModel,
          catalog: catalog,
        );
      },
    );
  }
}

class FilterDialog extends StatefulWidget {
  final FilterModel initialFilterModel;
  final Catalog catalog;

  const FilterDialog({
    required this.initialFilterModel,
    required this.catalog,
  });

  @override
  _FilterDialogState createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  late Filter selectedFilter;
  late Activity selectedActividad;
  late HourFilter selectedHora;

  @override
  void initState() {
    super.initState();
    selectedFilter = widget.initialFilterModel.filter;
    selectedActividad = widget.initialFilterModel.actividad;
    selectedHora = widget.initialFilterModel.hora;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Filtros'),
      scrollable: true,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MultipleChoice(
            onSelected: (filter) => setState(() => selectedFilter = filter),
            filters: widget.catalog.filterCatalog,
            selectedFilter: selectedFilter,
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: DynamicDropdownButton(
              labelText: 'Actividad',
              initialValue: selectedActividad,
              onValueChanged: (value) =>
                  setState(() => selectedActividad = value),
              list: widget.catalog.activityCatalog,
              displayField: (Activity activity) => activity.description,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: DynamicDropdownButton(
              labelText: 'Hora',
              initialValue: selectedHora,
              list: widget.catalog.hourFilterCatalog,
              displayField: (HourFilter hourFilter) => hourFilter.description,
              onValueChanged: (value) => setState(() => selectedHora = value),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancelar'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(
            FilterModel(
              filter: selectedFilter,
              actividad: selectedActividad,
              hora: selectedHora,
            ),
          ),
          child: const Text('Filtrar'),
        ),
      ],
    );
  }
}

class MultipleChoice extends StatelessWidget {
  final Function(Filter) onSelected;
  final List<Filter> filters;
  final Filter selectedFilter;

  const MultipleChoice({
    required this.onSelected,
    required this.filters,
    required this.selectedFilter,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 3.0,
      children: filters.map((filter) {
        return ChoiceChip(
          label: Text(filter.description),
          selected: filter == selectedFilter,
          onSelected: (selected) {
            onSelected(filter);
          },
        );
      }).toList(),
    );
  }
}
