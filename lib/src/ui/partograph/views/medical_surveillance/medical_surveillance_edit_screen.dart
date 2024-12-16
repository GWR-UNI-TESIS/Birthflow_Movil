import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
import 'package:birthflow_movil/src/ui/partograph/views/medical_surveillance/widgets/custom_dropdown.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/arterial_pressure_widget.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/form_element_widget.dart';
import 'package:birthflow_movil/src/ui/widgets/custom_dropdown_button.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class MedicalSurveillanceEditScreen extends StatefulWidget {
  final MedicalSurveillanceEditData medicalSurveillanceEditData;

  const MedicalSurveillanceEditScreen({
    super.key,
    required this.medicalSurveillanceEditData,
  });

  @override
  _MedicalSurveillanceEditScreenState createState() =>
      _MedicalSurveillanceEditScreenState();
}

class _MedicalSurveillanceEditScreenState
    extends State<MedicalSurveillanceEditScreen> with SnackbarsMixin {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _timeController = TextEditingController();

  late final ValueNotifier<String> _arterialPressureValue;
  late final ValueNotifier<String> _maternalPulseValue;
  late final ValueNotifier<String> _fetalHeartRateValue;
  late final ValueNotifier<String> _contractionsDurationValue;

  String _maternalPositionValue = '';
  String _frequencyContractions = '';
  String _pain = '';
  DateTime _dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    _initializeValues();
  }

  void _initializeValues() {
    final model = widget.medicalSurveillanceEditData.medicalSurveillanceTable;

    _timeController.text = model?.time != null
        ? DateFormat('HH:mm:ss').format(model!.time)
        : '';
    _dateTime = model?.time ?? DateTime.now();
    _maternalPositionValue = model?.maternalPosition ?? '';
    _frequencyContractions = model?.frequencyContractions ?? '';
    _pain = model?.pain ?? '';

    _arterialPressureValue = ValueNotifier(model?.arterialPressure ?? '');
    _maternalPulseValue = ValueNotifier(model?.maternalPulse ?? '');
    _fetalHeartRateValue = ValueNotifier(model?.fetalHeartRate ?? '');
    _contractionsDurationValue = ValueNotifier(model?.contractionsDuration ?? '');
  }

  @override
  void dispose() {
    _timeController.dispose();
    _arterialPressureValue.dispose();
    _maternalPulseValue.dispose();
    _fetalHeartRateValue.dispose();
    _contractionsDurationValue.dispose();
    super.dispose();
  }

  void _handleSave() {
    if (_formKey.currentState?.validate() ?? false) {
      final bloc = context.read<PartographBloc>();
      final model = widget.medicalSurveillanceEditData.medicalSurveillanceTable;

      if (model != null) {
        final event = UpdateMedicalSurveillance(
          id: model.id,
          partographId: widget.medicalSurveillanceEditData.partographId,
          letter: model.letter,
          maternalPosition: _maternalPositionValue,
          arterialPressure: _arterialPressureValue.value,
          maternalPulse: _maternalPulseValue.value,
          fetalHeartRate: _fetalHeartRateValue.value,
          contractionsDuration: _contractionsDurationValue.value,
          frequencyContractions: _frequencyContractions,
          pain: _pain,
          time: _dateTime,
        );

        bloc.add(event);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Editar Vigilancia Médica')),
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
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Form(
            key: _formKey,
            child: _buildFormContent(),
          ),
        ),
      ),
    );
  }

  Widget _buildFormContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildTimePicker(),
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
            onChanged: (value) => setState(() => _maternalPositionValue = value),
          ),
          ArterialPressureWidget(
            label: 'Tensión Arterial',
            initialValue: _arterialPressureValue.value,
            onChanged: (value) => _arterialPressureValue.value = value,
          ),
          FormElementWidget(
            label: 'Pulso Materno',
            initialValue: _maternalPulseValue.value,
            onChanged: (value) => _maternalPulseValue.value = value,
          ),
          FormElementWidget(
            label: 'Frecuencia cardiaca fetal',
            initialValue: _fetalHeartRateValue.value,
            onChanged: (value) => _fetalHeartRateValue.value = value,
          ),
          FormElementWidget(
            label: 'Duración Contracciones',
            initialValue: _contractionsDurationValue.value,
            onChanged: (value) => _contractionsDurationValue.value = value,
          ),
          _buildTextField(
            label: 'Frec. Contracciones',
            maxLength: 3,
            initialValue: _frequencyContractions,
            onChanged: (value) => _frequencyContractions = value,
          ),
          UnifiedDropdownWidget(
            locationValues: const ['Sacro', 'Suprapúbico'],
            intensityValues: const ['Débil', 'Normal', 'Fuerte'],
            initialValue: _pain,
            onValueChanged: (value) => _pain = value,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _handleSave,
            child: const Text('Actualizar'),
          ),
        ],
      ),
    );
  }

  Widget _buildTimePicker() {
    return TextFormField(
      controller: _timeController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Tiempo',
      ),
      readOnly: true,
      onTap: () async {
        _timeController.text = DateFormat('HH:mm:ss').format(_dateTime);
        final pickedTime = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.fromDateTime(_dateTime),
        );
        if (pickedTime != null) {
          _dateTime = DateTime(
            DateTime.now().year,
            DateTime.now().month,
            DateTime.now().day,
            pickedTime.hour,
            pickedTime.minute,
          );
          setState(() {
            _timeController.text = DateFormat('HH:mm:ss').format(_dateTime);
          });
        }
      },
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
