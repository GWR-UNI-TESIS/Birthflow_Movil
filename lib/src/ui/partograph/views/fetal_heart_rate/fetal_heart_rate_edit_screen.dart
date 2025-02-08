import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/form_element_widget.dart';
import 'package:birthflow_movil/src/ui/widgets/loading_overlay.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class FetalHeartRateEditScreen extends StatefulWidget {
  final FetalHeartRateEditData fetalHeartRateEditData;

  const FetalHeartRateEditScreen({
    super.key,
    required this.fetalHeartRateEditData,
  });

  @override
  _FetalHeartRateEditScreenState createState() =>
      _FetalHeartRateEditScreenState();
}

class _FetalHeartRateEditScreenState extends State<FetalHeartRateEditScreen>
    with SnackbarMixin {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _dateTimeController;
  TimeOfDay? _selectedTime;
  String? _fetalHeartRateValue;

  @override
  void initState() {
    super.initState();
  }

  void _initializeControllers() {
    final fetalheartrates = context.watch<PartographBloc>().state.whenOrNull(
          loaded: (partograph, message) => partograph.contractionFrequencies,
        );

    final fetalHeartRate = fetalheartrates!
        .where(
          (e) => e.id == widget.fetalHeartRateEditData.fetalHeartRateId,
        )
        .first;

    _fetalHeartRateValue = fetalHeartRate.value;

    _dateTimeController = TextEditingController(
      // ignore: unnecessary_null_comparison
      text: fetalHeartRate != null
          ? DateFormat('HH:mm:ss').format(fetalHeartRate.time)
          : '',
    );
    // ignore: unnecessary_null_comparison
    _selectedTime = fetalHeartRate != null
        ? TimeOfDay.fromDateTime(fetalHeartRate.time)
        : null;
  }

  @override
  void dispose() {
    _dateTimeController.dispose();
    super.dispose();
  }

  void _updateFetalHeartRate() {
    if (_formKey.currentState?.validate() ?? false) {
      final bloc = context.read<PartographBloc>();
      final selectedDateTime = DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        _selectedTime?.hour ?? DateTime.now().hour,
        _selectedTime?.minute ?? DateTime.now().minute,
      );

      final event = UpdateFetalHeartRate(
        id: widget.fetalHeartRateEditData.fetalHeartRateId!,
        partographId: widget.fetalHeartRateEditData.partographId,
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
    _initializeControllers();
    final isLoading = context.watch<PartographBloc>().state is Loading;
    return Scaffold(
      appBar: AppBar(title: const Text('Editar Frecuencia Cardiaca Fetal')),
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
                  FormElementWidget(
                    label: 'Frecuencia cardiaca fetal',
                    initialValue: _fetalHeartRateValue,
                    onChanged: (value) => _fetalHeartRateValue = value,
                  ),
                  const SizedBox(height: 20),
                  _buildTimeField(context),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _updateFetalHeartRate,
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
