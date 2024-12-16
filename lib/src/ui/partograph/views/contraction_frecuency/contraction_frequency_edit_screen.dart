import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
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
    extends State<ContractionFrequencyEditScreen> with SnackbarsMixin {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _valueController;
  late final TextEditingController _dateTimeController;
  TimeOfDay? _selectedTime;

  @override
  void initState() {
    super.initState();
    final contractionFrequency =
        widget.contractionFrequencyEditData.contractionFrequency;

    _valueController = TextEditingController(
      text: contractionFrequency?.value ?? '',
    );
    _dateTimeController = TextEditingController(
      text: contractionFrequency != null
          ? DateFormat('HH:mm:ss').format(contractionFrequency.time)
          : '',
    );
    _selectedTime = contractionFrequency != null
        ? TimeOfDay.fromDateTime(contractionFrequency.time)
        : null;
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
      final selectedDateTime = DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        _selectedTime?.hour ?? DateTime.now().hour,
        _selectedTime?.minute ?? DateTime.now().minute,
      );

      final contractionFrequency =
          widget.contractionFrequencyEditData.contractionFrequency;

      if (contractionFrequency != null) {
        final event = UpdateContractionFrequency(
          id: contractionFrequency.id!,
          partographId: widget.contractionFrequencyEditData.partographId,
          value: _valueController.text,
          time: selectedDateTime,
        );

        bloc.add(event);
      }
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
    return Scaffold(
      appBar: AppBar(title: const Text('Editar Frecuencia de Contracciones')),
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
                  onPressed: _updateContractionFrequency,
                  child: const Text('Actualizar'),
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
