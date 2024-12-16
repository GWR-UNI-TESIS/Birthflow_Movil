import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/form_element_widget.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class FetalHeartRateCreateScreen extends StatefulWidget {
  final String partographId;

  const FetalHeartRateCreateScreen({super.key, required this.partographId});

  @override
  _FetalHeartRateCreateScreenState createState() =>
      _FetalHeartRateCreateScreenState();
}

class _FetalHeartRateCreateScreenState extends State<FetalHeartRateCreateScreen>
    with SnackbarsMixin {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _dateTimeController;
  TimeOfDay? _selectedTime;
  String? _fetalHeartRateValue;

  @override
  void initState() {
    super.initState();
    _dateTimeController = TextEditingController();
  }

  @override
  void dispose() {
    _dateTimeController.dispose();
    super.dispose();
  }

  void _saveFetalHeartRate() {
    if (_formKey.currentState?.validate() ?? false) {
      final bloc = context.read<PartographBloc>();
      final selectedDateTime = DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        _selectedTime?.hour ?? DateTime.now().hour,
        _selectedTime?.minute ?? DateTime.now().minute,
      );

      final event = CreateFetalHeartRate(
        partographId: widget.partographId,
        value: _fetalHeartRateValue!,
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
    return Scaffold(
      appBar: AppBar(title: const Text('Crear Frecuencia Cardiaca Fetal')),
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
                FormElementWidget(
                  label: 'Frecuencia cardiaca fetal',
                  initialValue: _fetalHeartRateValue,
                  onChanged: (value) => _fetalHeartRateValue = value,
                ),
                const SizedBox(height: 20),
                _buildTimeField(context),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _saveFetalHeartRate,
                  child: const Text('Guardar'),
                ),
              ],
            ),
          ),
        ),
      ),
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
