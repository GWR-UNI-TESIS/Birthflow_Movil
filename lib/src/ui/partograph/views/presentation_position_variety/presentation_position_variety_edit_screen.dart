import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/hodge_plane.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/position.dart';
import 'package:birthflow_movil/src/providers/catalog_cubit.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
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
  late final TextEditingController _timeController;
  Position? _selectedPosition;
  HodgePlane? _selectedHodgePlane;
  DateTime _selectTime = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  void _initializeControllers() {
    final presentationPositionVarieties =
        context.watch<PartographBloc>().state.whenOrNull(
              loaded: (partograph, message, isDeleteEvent) =>
                  partograph.presentationPositionVarieties,
            );

    final item = presentationPositionVarieties!
        .where(
          (e) => e.id == widget.data.presentationPositionVarietyId,
        )
        .first;

    _selectTime = item.time;
    _timeController = TextEditingController(
      // ignore: unnecessary_null_comparison
      text: item != null
          ? DateFormat('HH:mm:ss').format(item.time)
          : DateFormat('HH:mm:ss').format(DateTime.now()),
    );

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

      final event = UpdatePresentationPositionVariety(
        id: widget.data.presentationPositionVarietyId!,
        partographId: widget.data.partographId,
        hodgePlane: _selectedHodgePlane!.id,
        position: _selectedPosition!.id,
        time: _selectTime,
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
          child: const Text('Actualizar'),
        ),
      ],
    );
  }
}
