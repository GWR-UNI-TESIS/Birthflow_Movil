import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ContractionFrequencyEditData {
  final ContractionFrequency? contractionFrequency;
  final String partographId;

  ContractionFrequencyEditData({
    required this.contractionFrequency,
    required this.partographId,
  });
}

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
    extends State<ContractionFrequencyEditScreen> with SnackbarsMixin {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _valueController;
  late final TextEditingController _dateTimeController;
  TimeOfDay? _selectedTime;

  @override
  void initState() {
    super.initState();
    final fetalHeartRate =
        widget.contractionFrequencyEditData.contractionFrequency;

    _valueController = TextEditingController(
      text: fetalHeartRate?.value ?? '',
    );
    _dateTimeController = TextEditingController(
      text: fetalHeartRate != null
          ? DateFormat('HH:mm:ss').format(fetalHeartRate.time)
          : '',
    );
    _selectedTime = fetalHeartRate != null
        ? TimeOfDay.fromDateTime(fetalHeartRate.time)
        : null;
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

      final fetalHeartRate =
          widget.contractionFrequencyEditData.contractionFrequency;
      final event = fetalHeartRate == null
          ? CreateContractionFrequency(
              partographId: widget.contractionFrequencyEditData.partographId,
              value: _valueController.text,
              time: selectedDateTime,
            )
          : UpdateContractionFrequency(
              id: fetalHeartRate.id!,
              partographId: widget.contractionFrequencyEditData.partographId,
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
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
        final now = DateTime.now();
        final dateTime =
            DateTime(now.year, now.month, now.day, picked.hour, picked.minute);
        _dateTimeController.text = DateFormat('HH:mm:ss').format(
          dateTime,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.contractionFrequencyEditData.contractionFrequency == null
              ? 'Crear Frecuencia Contracciones'
              : 'Crear Frecuencia Contracciones',
        ),
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
            child: Column(
              children: [
                _buildValueField(),
                const SizedBox(height: 20),
                _buildTimeField(context),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _saveContractionFrequency(),
                  child: const Text('Guardar'),
                ),
              ],
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
        labelText: 'Contraccion Frecue',
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
            hintText: _selectedTime != null
                ? _selectedTime!.format(context)
                : 'Seleccione una hora',
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
