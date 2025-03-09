import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/hodge_plane.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/position.dart';
import 'package:birthflow_movil/src/providers/catalog_cubit.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/date_time_picker_widget.dart';
import 'package:birthflow_movil/src/ui/widgets/dropdown.dart';
import 'package:birthflow_movil/src/ui/widgets/loading_overlay.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class PresentationPositionVarietyCreateScreen extends StatefulWidget {
  final String partographId;

  const PresentationPositionVarietyCreateScreen({
    super.key,
    required this.partographId,
  });

  @override
  _PresentationPositionVarietyCreateScreenState createState() =>
      _PresentationPositionVarietyCreateScreenState();
}

class _PresentationPositionVarietyCreateScreenState
    extends State<PresentationPositionVarietyCreateScreen> with SnackbarMixin {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _dateTimeController;
  Position? _selectedPosition;
  HodgePlane? _selectedHodgePlane;

  @override
  void initState() {
    super.initState();
    _dateTimeController = TextEditingController();

    final catalog = context.read<CatalogCubit>().state;
    _selectedPosition = catalog.positionCatalog.first; // Valor predeterminado
    _selectedHodgePlane =
        catalog.hodgePlanesCatalog.first; // Valor predeterminado
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

      final event = CreatePresentationPositionVariety(
        partographId: widget.partographId,
        hodgePlane: _selectedHodgePlane!.id,
        position: _selectedPosition!.id,
        time: selectedDateTime,
      );

      bloc.add(event);
    }
  }

  @override
  Widget build(BuildContext context) {
    final catalog = context.watch<CatalogCubit>().state;
    final isLoading = context.watch<PartographBloc>().state is Loading;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Presentación'),
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
        ),
        const SizedBox(height: 20),
        FilledButton(
          onPressed: _saveData,
          child: const Text('Guardar'),
        ),
      ],
    );
  }
}
