import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/hodge_plane.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/position.dart';
import 'package:birthflow_movil/src/providers/catalog_cubit.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/date_time_picker_widget.dart';
import 'package:birthflow_movil/src/ui/widgets/dropdown.dart';
import 'package:birthflow_movil/src/ui/widgets/loading_overlay.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class PresentationPositionVarietyEditScreen extends StatefulWidget {
  final PresentationPositionVarietyData data;

  const PresentationPositionVarietyEditScreen({
    super.key,
    required this.data,
  });

  @override
  _PresentationPositionVarietyEditScreenState createState() =>
      _PresentationPositionVarietyEditScreenState();
}

class _PresentationPositionVarietyEditScreenState
    extends State<PresentationPositionVarietyEditScreen> with SnackbarMixin {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _dateTimeController = TextEditingController();
  Position? _selectedPosition;
  HodgePlane? _selectedHodgePlane;
  DateTime initialValue = DateTime.now();
  bool _isInitialized = false; // Bandera para evitar sobrescribir valores
  @override
  void initState() {
    super.initState();
  }

  void _initializeControllers() {
    final partographBloc = context.watch<PartographBloc>().state;
    if (partographBloc is Loaded) {
      final presentationPositionVarieties =
           context.read<PartographBloc>().state.whenOrNull(
                loaded: (partograph, message, isDeleteEvent) =>
                    partograph.presentationPositionVarieties,
              );

      final item = presentationPositionVarieties!
          .where(
            (e) => e.id == widget.data.presentationPositionVarietyId,
          )
          .first;
      if (!_isInitialized) {
        initialValue = item.time;

        final catalog = context.read<CatalogCubit>().state;
        // ignore: unnecessary_null_comparison
        _selectedPosition = item != null
            ? catalog.positionCatalog.firstWhere(
                (position) => position.id == item.position,
                orElse: () => catalog.positionCatalog.first,
              )
            : catalog.positionCatalog.first;

        // ignore: unnecessary_null_comparison
        _selectedHodgePlane = item != null
            ? catalog.hodgePlanesCatalog.firstWhere(
                (hodgePlane) => hodgePlane.id == item.hodgePlane,
                orElse: () => catalog.hodgePlanesCatalog.first,
              )
            : catalog.hodgePlanesCatalog.first;
        _isInitialized = true;
      }
    }
  }

  @override
  void dispose() {
    _dateTimeController.dispose();
    super.dispose();
  }

  void _saveData() {
    if (_formKey.currentState?.validate() ?? false) {
      final bloc = context.read<PartographBloc>();
      final selectedDateTime =
          DateFormat('dd/MM/yyyy HH:mm').parse(_dateTimeController.text);

        final event = UpdatePresentationPositionVariety(
          id: widget.data.presentationPositionVarietyId!,
          partographId: widget.data.partographId,
          hodgePlane: _selectedHodgePlane!.id,
        position: _selectedPosition!.id,
        time: selectedDateTime,
      );

      bloc.add(event);
    }
  }

  @override
  Widget build(BuildContext context) {
    _initializeControllers();
    final catalog = context.watch<CatalogCubit>().state;
    final isLoading = context.watch<PartographBloc>().state is Loading;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Presentación'),
      ),
      body: BlocListener<PartographBloc, PartographState>(
        listener: (context, state) {
          if (state is Loaded) {
            showSnackbar(state.message);
            Navigator.of(context).pop();
          } else if (state is Error) {
            showErrorSnackbar(state.errorMessage);
          }
        },
        child: LoadingOverlay(
          isLoading: isLoading,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: _buildFormContent(catalog),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormContent(Catalog catalog) {
    return ListView(
      children: [
        DynamicDropdownButton<Position>(
          labelText: 'Posición',
          list: catalog.positionCatalog,
          onValueChanged: (Position position) {
            setState(() {
              _selectedPosition = position;
            });
          },
          displayField: (Position position) => position.description,
          initialValue: _selectedPosition,
        ),
        const SizedBox(height: 16),
        DynamicDropdownButton<HodgePlane>(
          labelText: 'Plano de Hodge',
          list: catalog.hodgePlanesCatalog,
          onValueChanged: (HodgePlane hodgePlane) {
            setState(() {
              _selectedHodgePlane = hodgePlane;
            });
          },
          displayField: (HodgePlane hodgePlane) => hodgePlane.description,
          initialValue: _selectedHodgePlane,
        ),
        const SizedBox(height: 16),
        DateTimePickerField(
          dateTimeController: _dateTimeController,
          initialDateTime: initialValue,
        ),
        const SizedBox(height: 20),
        FilledButton(
          onPressed: _saveData,
          child: const Text('Actualizar'),
        ),
      ],
    );
  }
}
