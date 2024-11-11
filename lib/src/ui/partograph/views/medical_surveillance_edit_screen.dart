import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/worktime/enums.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/arterial_pressure_widget.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/dropdown_button_widget.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/form_element_widget.dart';
import 'package:birthflow_movil/src/ui/widgets/custom_dropdown_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class MedicalSurveillanceEditData {
  final MedicalSurveillanceTable? medicalSurveillanceTable;
  final String partographId;

  MedicalSurveillanceEditData({
    required this.medicalSurveillanceTable,
    required this.partographId,
  });
}

class MedicalSurveillanceEditScreen extends StatefulWidget {
  final MedicalSurveillanceEditData? model;

  const MedicalSurveillanceEditScreen({super.key, this.model});

  @override
  State<MedicalSurveillanceEditScreen> createState() => _MedicalSurveillanceEditScreenState();
}

class _MedicalSurveillanceEditScreenState extends State<MedicalSurveillanceEditScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _timeController = TextEditingController();

  // Controladores de valores
  late final ValueNotifier<String> _arterialPressureValue;
  late final ValueNotifier<String> _maternalPulseValue;
  late final ValueNotifier<String> _fetalHeartRateValue;
  late final ValueNotifier<String> _contractionsDurationValue;

  String _maternalPositionValue = '';
  String _frequencyContractions = '';
  String _painLocation = '';
  String _painIntensity = '';
  DateTime _dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    _initializeWidgets();
  }

  void _initializeWidgets() {
    final model = widget.model?.medicalSurveillanceTable;
    _timeController.text = model != null
        ? DateFormat('HH:mm:ss').format(model.time)
        : '';

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

      final event = widget.model?.medicalSurveillanceTable == null
          ? CreateMedicalSurveillance(
              partographId: widget.model!.partographId,
              letter: '',
              maternalPosition: _maternalPositionValue,
              arterialPressure: _arterialPressureValue.value,
              maternalPulse: _maternalPulseValue.value,
              fetalHeartRate: _fetalHeartRateValue.value,
              contractionsDuration: _contractionsDurationValue.value,
              frequencyContractions: _frequencyContractions,
              pain: _painLocation,
              time: _dateTime,
            )
          : UpdateMedicalSurveillance(
              id: widget.model!.medicalSurveillanceTable!.id,
              partographId: widget.model!.partographId,
              letter: '',
              maternalPosition: _maternalPositionValue,
              arterialPressure: _arterialPressureValue.value,
              maternalPulse: _maternalPulseValue.value,
              fetalHeartRate: _fetalHeartRateValue.value,
              contractionsDuration: _contractionsDurationValue.value,
              frequencyContractions: _frequencyContractions,
              pain: _painLocation,
              time: _dateTime,
            );

      bloc.add(event);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildTimePicker(),
                _buildDropdownButton(
                  labelText: 'Posición Materna',
                  items: const ['Lat. Derecho', 'Lat. Izquierdo', 'Dorsal', 'Semisentada', 'Sentada', 'Parada o Caminando'],
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
                  onChanged: (value) => _frequencyContractions = value,
                ),
                _buildPainDropdown('Dolor Localización', PainLocation.values, (value) => _painLocation = value.value),
                _buildPainDropdown('Dolor Intensidad', PainIntensity.values, (value) => _painIntensity = value.value),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _handleSave,
                  child: Text(widget.model!.medicalSurveillanceTable == null ? 'Guardar' : 'Actualizar'),
                ),
              ],
            ),
          ),
        ),
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
        final pickedTime = await showTimePicker(context: context, initialTime: TimeOfDay.now());
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
  }) {
    return CustomDropdownButton(
      list: items,
      labelText: labelText,
      onValueChanged: onChanged,
    );
  }

  Widget _buildTextField({
    required String label,
    required int maxLength,
    required ValueChanged<String> onChanged,
  }) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
      ),
      maxLength: maxLength,
      validator: (value) => value == null || value.isEmpty ? 'Por favor, ingrese un dato' : null,
      onChanged: onChanged,
    );
  }

  Widget _buildPainDropdown<T extends Enum>(
      String labelText, List<T> enumValues, ValueChanged<T> onChanged) {
    return DropdownButtonWidget(
      labelText: labelText,
      enumValues: enumValues,
      onValueChanged: onChanged,
    );
  }
}
