import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/views/medical_surveillance/widgets/custom_dropdown.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/arterial_pressure_widget.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/date_time_picker_widget.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/form_element_widget.dart';
import 'package:birthflow_movil/src/ui/widgets/custom_dropdown_button.dart';
import 'package:birthflow_movil/src/ui/widgets/loading_overlay.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class MedicalSurveillanceCreateScreen extends StatefulWidget {
  final String partographId;

  const MedicalSurveillanceCreateScreen({
    super.key,
    required this.partographId,
  });

  @override
  _MedicalSurveillanceCreateScreenState createState() =>
      _MedicalSurveillanceCreateScreenState();
}

class _MedicalSurveillanceCreateScreenState
    extends State<MedicalSurveillanceCreateScreen> with SnackbarMixin {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _dateTimeController = TextEditingController();

  late final ValueNotifier<String> _arterialPressureValue;
  late final ValueNotifier<String> _maternalPulseValue;
  late final ValueNotifier<String> _fetalHeartRateValue;
  late final ValueNotifier<String> _contractionsDurationValue;

  String _maternalPositionValue = 'Lat. Derecho';
  String _frequencyContractions = '';
  String _pain = '';

  @override
  void initState() {
    super.initState();
    _arterialPressureValue = ValueNotifier('');
    _maternalPulseValue = ValueNotifier('');
    _fetalHeartRateValue = ValueNotifier('');
    _contractionsDurationValue = ValueNotifier('');
  }

  @override
  void dispose() {
    _dateTimeController.dispose();
    _arterialPressureValue.dispose();
    _maternalPulseValue.dispose();
    _fetalHeartRateValue.dispose();
    _contractionsDurationValue.dispose();
    super.dispose();
  }

  void _handleSave() {
    if (_formKey.currentState?.validate() ?? false) {
      final bloc = context.read<PartographBloc>();
      final selectedDateTime =
          DateFormat('dd/MM/yyyy HH:mm').parse(_dateTimeController.text);

      final event = CreateMedicalSurveillance(
        partographId: widget.partographId,
        letter: '',
        maternalPosition: _maternalPositionValue,
        arterialPressure: _arterialPressureValue.value,
        maternalPulse: _maternalPulseValue.value,
        fetalHeartRate: _fetalHeartRateValue.value,
        contractionsDuration: _contractionsDurationValue.value,
        frequencyContractions: _frequencyContractions,
        pain: _pain,
        time: selectedDateTime,
      );

      bloc.add(event);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = context.watch<PartographBloc>().state is Loading;
    return Scaffold(
      appBar: AppBar(title: const Text('Crear Vigilancia Médica')),
      body: SafeArea(
        child: BlocListener<PartographBloc, PartographState>(
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Form(
                key: _formKey,
                child: _buildFormContent(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          DateTimePickerField(
            dateTimeController: _dateTimeController,
          ),
          const SizedBox(height: 20),
          _buildDropdownButton(
            labelText: 'Posición Materna',
            items: const [
              'Lat. Derecho',
              'Lat. Izquierdo',
              'Dorsal',
              'Semisentada',
              'Sentada',
              'Parada o Caminando',
            ],
            initialValue: _maternalPositionValue,
            onChanged: (value) =>
                setState(() => _maternalPositionValue = value),
          ),
          const SizedBox(height: 16),
          ArterialPressureWidget(
            label: 'Tensión Arterial',
            initialValue: _arterialPressureValue.value,
            onChanged: (value) => _arterialPressureValue.value = value,
          ),
          const SizedBox(height: 16),
          FormElementWidget(
            label: 'Pulso Materno',
            initialValue: _maternalPulseValue.value,
            onChanged: (value) => _maternalPulseValue.value = value,
          ),
          const SizedBox(height: 16),
          FormElementWidget(
            label: 'Frecuencia cardiaca fetal',
            initialValue: _fetalHeartRateValue.value,
            onChanged: (value) => _fetalHeartRateValue.value = value,
          ),
          const SizedBox(height: 16),
          FormElementWidget(
            label: 'Duración Contracciones',
            initialValue: _contractionsDurationValue.value,
            onChanged: (value) => _contractionsDurationValue.value = value,
          ),
          const SizedBox(height: 16),
          _buildTextField(
            label: 'Frec. Contracciones',
            maxLength: 3,
            initialValue: _frequencyContractions,
            onChanged: (value) => _frequencyContractions = value,
          ),
          const SizedBox(height: 16),
          UnifiedDropdownWidget(
            locationValues: const ['Sacro', 'Suprapúbico'],
            intensityValues: const ['Débil', 'Normal', 'Fuerte'],
            initialValue: _pain,
            onValueChanged: (value) => _pain = value,
          ),
          const SizedBox(height: 20),
          FilledButton.icon(
            onPressed: _handleSave,
            icon: const Icon(Icons.save_alt),
            label: const Text('Guardar'),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownButton({
    required String labelText,
    required List<String> items,
    required ValueChanged<String> onChanged,
    String? initialValue,
  }) {
    return CustomDropdownButton(
      list: items,
      labelText: labelText,
      onValueChanged: onChanged,
      initialValue: initialValue,
    );
  }

  Widget _buildTextField({
    required String label,
    required int maxLength,
    required ValueChanged<String> onChanged,
    String? initialValue,
  }) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
      ),
      initialValue: initialValue,
      maxLength: maxLength,
      validator: (value) =>
          value == null || value.isEmpty ? 'Por favor, ingrese un dato' : null,
      onChanged: onChanged,
    );
  }
}
