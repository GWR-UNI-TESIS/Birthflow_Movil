import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/arterial_pressure_widget.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/form_element_widget.dart';
import 'package:birthflow_movil/src/ui/widgets/custom_dropdown_button.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
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
  State<MedicalSurveillanceEditScreen> createState() =>
      _MedicalSurveillanceEditScreenState();
}

class _MedicalSurveillanceEditScreenState
    extends State<MedicalSurveillanceEditScreen> with SnackbarsMixin {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _timeController = TextEditingController();

  // Controladores de valores
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
    _initializeWidgets();
  }

  void _initializeWidgets() {
    final model = widget.model?.medicalSurveillanceTable;
    _timeController.text =
        model?.time != null ? DateFormat('HH:mm:ss').format(model!.time) : '';
    _dateTime = model?.time ?? DateTime.now();
    _maternalPositionValue = model?.maternalPosition ?? '';
    _arterialPressureValue = ValueNotifier(model?.arterialPressure ?? '');
    _maternalPulseValue = ValueNotifier(model?.maternalPulse ?? '');
    _fetalHeartRateValue = ValueNotifier(model?.fetalHeartRate ?? '');
    _contractionsDurationValue =
        ValueNotifier(model?.contractionsDuration ?? '');

    _frequencyContractions = model?.frequencyContractions ?? '';
    _pain = model?.pain ?? '';
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
              pain: _pain,
              time: _dateTime,
            )
          : UpdateMedicalSurveillance(
              id: widget.model!.medicalSurveillanceTable!.id,
              partographId: widget.model!.partographId,
              letter: widget.model!.medicalSurveillanceTable!.letter,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.model?.medicalSurveillanceTable == null ? 'Crear' : 'Editar',
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
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
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
                    onChanged: (value) =>
                        setState(() => _maternalPositionValue = value),
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
                    onChanged: (value) =>
                        _contractionsDurationValue.value = value,
                  ),
                  _buildTextField(
                    label: 'Frec. Contracciones',
                    maxLength: 3,
                    initialValue: _frequencyContractions,
                    onChanged: (value) => _frequencyContractions = value,
                  ),
                  UnifiedDropdownWidget(
                    locationValues: const [
                      'Sacro',
                      'Suprapublico',
                    ],
                    intensityValues: const ['Debil', 'Normal', 'Fuerte'],
                    initialValue: _pain, // Valor inicial
                    onValueChanged: (value) => _pain = value,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _handleSave,
                    child: Text(
                      widget.model!.medicalSurveillanceTable == null
                          ? 'Guardar'
                          : 'Actualizar',
                    ),
                  ),
                ],
              ),
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

class UnifiedDropdownWidget extends StatefulWidget {
  final List<String> locationValues; // Valores para "Dolor Localización"
  final List<String> intensityValues; // Valores para "Dolor Intensidad"
  final void Function(String unifiedValue)
      onValueChanged; // Callback con valor unificado

  final String? initialValue;

  const UnifiedDropdownWidget({
    super.key,
    required this.locationValues,
    required this.intensityValues,
    required this.onValueChanged,
    this.initialValue,
  });

  @override
  State<UnifiedDropdownWidget> createState() => _UnifiedDropdownWidgetState();
}

class _UnifiedDropdownWidgetState extends State<UnifiedDropdownWidget> {
  String? selectedLocation; // Para "Dolor Localización"
  String? selectedIntensity; // Para "Dolor Intensidad"

  @override
  void initState() {
    super.initState();

    final values = widget.initialValue?.split('-');

    // Asignar valores iniciales al estado
    selectedLocation = values?[0].trim();
    selectedIntensity = values?[1].trim();

    // Llamar al callback con los valores iniciales, si ambos están definidos
    if (selectedLocation != null && selectedIntensity != null) {
      _onDropdownChange();
    }
  }

  void _onDropdownChange() {
    if (selectedLocation != null && selectedIntensity != null) {
      final unifiedValue = '$selectedLocation - $selectedIntensity';
      widget.onValueChanged(unifiedValue);
    }
  }

  Widget _buildDropdown({
    required String labelText,
    required List<String> items,
    required String? initialValue,
    required ValueChanged<String?> onChanged,
  }) {
    return CustomDropdownButton(
      list: items,
      labelText: labelText,
      initialValue: initialValue,
      onValueChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildDropdown(
            labelText: 'Dolor Localización',
            items: widget.locationValues,
            initialValue: selectedLocation,
            onChanged: (value) {
              setState(() {
                selectedLocation = value;
                _onDropdownChange();
              });
            },
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildDropdown(
            labelText: 'Dolor Intensidad',
            items: widget.intensityValues,
            initialValue: selectedIntensity,
            onChanged: (value) {
              setState(() {
                selectedIntensity = value;
                _onDropdownChange();
              });
            },
          ),
        ),
      ],
    );
  }
}
