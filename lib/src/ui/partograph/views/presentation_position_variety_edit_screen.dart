import 'package:birthflow_movil/src/domain/catalog/entities/hodge_plane.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/position.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/providers/catalog_cubit.dart';
import 'package:birthflow_movil/src/ui/widgets/dropdown.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class PresentationPositionVarietyData {
  final PresentationPositionVariety? presentationPositionVariety;
  final String partographId;

  PresentationPositionVarietyData({
    required this.presentationPositionVariety,
    required this.partographId,
  });
}

class PresentationPositionVarietyEditScreen extends StatefulWidget {
  final PresentationPositionVarietyData data;

  const PresentationPositionVarietyEditScreen({required this.data, super.key});

  @override
  _PresentationPositionVarietyEditScreenState createState() =>
      _PresentationPositionVarietyEditScreenState();
}

class _PresentationPositionVarietyEditScreenState
    extends State<PresentationPositionVarietyEditScreen> with SnackbarsMixin {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _timeController;
  Position? _selectedPosition;
  HodgePlane? _selectedHodgePlane;
  DateTime _selectTime = DateTime.now();
  @override
  void initState() {
    super.initState();
    final model = widget.data.presentationPositionVariety;

    _selectTime = model?.time ?? DateTime.now();
    _timeController = TextEditingController(
      text: model != null
          ? DateFormat('HH:mm:ss').format(model.time)
          : DateFormat('HH:mm:ss').format(DateTime.now()),
    );

    final catalog = context.read<CatalogCubit>().state;

    if (model != null) {
      _selectedPosition = catalog.positionCatalog.firstWhere(
        (position) => position.id == model.position,
        orElse: () => catalog.positionCatalog
            .first, // Usa el primer elemento como predeterminado
      );
    } else {
      _selectedPosition = catalog.positionCatalog.first; // Valor predeterminado
    }

    // Buscar el modelo de HodgePlane basado en el ID o usar un valor predeterminado
    if (model != null) {
      _selectedHodgePlane = catalog.hodgePlanesCatalog.firstWhere(
        (hodgePlane) => hodgePlane.id == model.hodgePlane,
        orElse: () => catalog.hodgePlanesCatalog
            .first, // Usa el primer elemento como predeterminado
      );
    } else {
      _selectedHodgePlane =
          catalog.hodgePlanesCatalog.first; // Valor predeterminado
    }
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

      final event = widget.data.presentationPositionVariety == null
          ? CreatePresentationPositionVariety(
              partographId: widget.data.partographId,
              hodgePlane: _selectedHodgePlane!.id,
              position: _selectedPosition!.id,
              time: _selectTime,
            )
          : UpdatePresentationPositionVariety(
              id: widget.data.presentationPositionVariety!.id!,
              partographId: widget.data.partographId,
              hodgePlane: _selectedHodgePlane!.id,
              position: _selectedPosition!.id,
              time: _selectTime,);

      bloc.add(event);
    }
  }

  @override
  Widget build(BuildContext context) {
    final catalog = context.watch<CatalogCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.data.presentationPositionVariety == null
              ? 'Crear Presentación'
              : 'Editar Presentación',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
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
          ),
        ),
      ),
    );
  }
}
