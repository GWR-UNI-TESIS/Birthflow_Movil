import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/widgets/loading_overlay.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ContractionFrequencyCreateScreen extends StatefulWidget {
  final String partographId;

  const ContractionFrequencyCreateScreen(
      {super.key, required this.partographId});

  @override
  _ContractionFrequencyCreateScreenState createState() =>
      _ContractionFrequencyCreateScreenState();
}

class _ContractionFrequencyCreateScreenState
    extends State<ContractionFrequencyCreateScreen> with SnackbarMixin {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _valueController;
  late final TextEditingController _dateTimeController;
  TimeOfDay? _selectedTime;

  @override
  void initState() {
    super.initState();
    _valueController = TextEditingController();
    _dateTimeController = TextEditingController();
  }

  @override
  void dispose() {
    _valueController.dispose();
    _dateTimeController.dispose();
    super.dispose();
  }

  void _saveContractionFrequency() {
    if (_formKey.currentState?.validate() ?? false) {
      final bloc = context.read<PartographBloc>();
      final selectedDateTime = DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        _selectedTime?.hour ?? DateTime.now().hour,
        _selectedTime?.minute ?? DateTime.now().minute,
      );

      final event = CreateContractionFrequency(
        partographId: widget.partographId,
        value: _valueController.text,
        time: selectedDateTime,
      );

      bloc.add(event);
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        _selectedTime = picked;
        final now = DateTime.now();
        final dateTime =
            DateTime(now.year, now.month, now.day, picked.hour, picked.minute);
        _dateTimeController.text = DateFormat('HH:mm:ss').format(dateTime);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = context.watch<PartographBloc>().state is Loading;
    return Scaffold(
      appBar: AppBar(title: const Text('Crear Frecuencia de Contracciones')),
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
                  _buildTimeField(context),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _saveContractionFrequency,
                    child: const Text('Guardar'),
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

  Widget _buildTimeField(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectTime(context),
      child: AbsorbPointer(
        child: TextFormField(
          controller: _dateTimeController,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.calendar_today),
            border: const OutlineInputBorder(),
            labelText: 'Hora',
            hintText: _selectedTime?.format(context) ?? 'Seleccione una hora',
          ),
          validator: (value) {
            if (_selectedTime == null) {
              return 'Por favor seleccione una hora';
            }
            return null;
          },
        ),
      ),
    );
  }
}
