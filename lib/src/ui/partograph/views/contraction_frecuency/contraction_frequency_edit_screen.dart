import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/date_time_picker_widget.dart';
import 'package:birthflow_movil/src/ui/widgets/loading_overlay.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ContractionFrequencyEditScreen extends StatefulWidget {
  final ContractionFrequencyEditData contractionFrequencyEditData;

  const ContractionFrequencyEditScreen({
    super.key,
    required this.contractionFrequencyEditData,
  });

  @override
  _ContractionFrequencyEditScreenState createState() =>
      _ContractionFrequencyEditScreenState();
}

class _ContractionFrequencyEditScreenState
    extends State<ContractionFrequencyEditScreen> with SnackbarMixin {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _valueController;
  late final TextEditingController _dateTimeController = TextEditingController();
  DateTime? initialDateTime;
  bool _isInitialized = false; // Bandera para evitar sobrescribir valores

  @override
  void initState() {
    super.initState();
  }

  void _initializeControllers() {
    final partographBloc = context.watch<PartographBloc>().state;
    if (partographBloc is Loaded) {
      final contractionFrequencies =
          context.watch<PartographBloc>().state.whenOrNull(
                loaded: (partograph, message, isDeleteEvent) =>
                    partograph.contractionFrequencies,
              );

      final contractionFrequency = contractionFrequencies!
          .where(
            (e) =>
                e.id ==
                widget.contractionFrequencyEditData.contractionFrequencyId,
          )
          .first;
      if (!_isInitialized) {
        _valueController = TextEditingController(
          text: contractionFrequency.value,
        );

        // ignore: unnecessary_null_comparison
        initialDateTime = contractionFrequency.time;
        _isInitialized = true;
      }
    }
  }

  @override
  void dispose() {
    _valueController.dispose();
    _dateTimeController.dispose();
    super.dispose();
  }

  void _updateContractionFrequency() {
    if (_formKey.currentState?.validate() ?? false) {
      final bloc = context.read<PartographBloc>();
      final selectedDateTime =
          DateFormat('dd/MM/yyyy HH:mm').parse(_dateTimeController.text);

      final event = UpdateContractionFrequency(
        id: widget.contractionFrequencyEditData.contractionFrequencyId!,
        partographId: widget.contractionFrequencyEditData.partographId,
        value: _valueController.text,
        time: selectedDateTime,
      );

      bloc.add(event);
    }
  }

  @override
  Widget build(BuildContext context) {
    _initializeControllers();
    final isLoading = context.watch<PartographBloc>().state is Loading;
    return Scaffold(
      appBar: AppBar(title: const Text('Editar Frecuencia de Contracciones')),
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
              child: Column(
                children: [
                  _buildValueField(),
                  const SizedBox(height: 20),
                  DateTimePickerField(
                    dateTimeController: _dateTimeController,
                    initialDateTime: initialDateTime,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _updateContractionFrequency,
                    child: const Text('Actualizar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildValueField() {
    return TextFormField(
      controller: _valueController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Frecuencia de Contracciones',
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor ingrese un valor';
        }
        if (double.tryParse(value) == null) {
          return 'Por favor ingrese un valor válido';
        }
        return null;
      },
    );
  }
}
