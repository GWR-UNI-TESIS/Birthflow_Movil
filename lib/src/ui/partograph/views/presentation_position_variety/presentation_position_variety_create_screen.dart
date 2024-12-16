import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/hodge_plane.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/position.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/providers/catalog_cubit.dart';
import 'package:birthflow_movil/src/ui/widgets/dropdown.dart';
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
    extends State<PresentationPositionVarietyCreateScreen> with SnackbarsMixin {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _timeController;
  Position? _selectedPosition;
  HodgePlane? _selectedHodgePlane;
  DateTime _selectTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    _timeController = TextEditingController(
      text: DateFormat('HH:mm:ss').format(DateTime.now()),
    );

    final catalog = context.read<CatalogCubit>().state;
    _selectedPosition = catalog.positionCatalog.first; // Valor predeterminado
    _selectedHodgePlane =
        catalog.hodgePlanesCatalog.first; // Valor predeterminado
  }

  @override
  void dispose() {
    _timeController.dispose();
    super.dispose();
  }

  Future<void> _selectTimeFunction(BuildContext context) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        _selectTime = DateTime(
          DateTime.now().year,
          DateTime.now().month,
          DateTime.now().day,
          picked.hour,
          picked.minute,
        );
        _timeController.text = DateFormat('HH:mm:ss').format(_selectTime);
      });
    }
  }

  void _saveData() {
    if (_formKey.currentState?.validate() ?? false) {
      final bloc = context.read<PartographBloc>();

      final event = CreatePresentationPositionVariety(
        partographId: widget.partographId,
        hodgePlane: _selectedHodgePlane!.id,
        position: _selectedPosition!.id,
        time: _selectTime,
      );

      bloc.add(event);
    }
  }

  @override
  Widget build(BuildContext context) {
    final catalog = context.watch<CatalogCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Presentación'),
      ),
      body: BlocListener<PartographBloc, PartographState>(
        listener: (context, state) {
          if (state is Loaded) {
            showSnackbar(context, state.message);
            Navigator.of(context).pop();
          } else if (state is Error) {
            showErrorSnackbar(context, state.errorMessage);
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: _buildFormContent(catalog),
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
        GestureDetector(
          onTap: () => _selectTimeFunction(context),
          child: AbsorbPointer(
            child: TextFormField(
              controller: _timeController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.access_time),
                border: OutlineInputBorder(),
                labelText: 'Hora',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Seleccione una hora';
                }
                return null;
              },
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _saveData,
          child: const Text('Guardar'),
        ),
      ],
    );
  }
}
