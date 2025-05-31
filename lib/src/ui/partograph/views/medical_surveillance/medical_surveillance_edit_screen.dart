import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
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
    extends State<MedicalSurveillanceEditScreen> with SnackbarMixin {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _dateTimeController = TextEditingController();

  // Inicialización temprana
  late ValueNotifier<String> _arterialPressureValue;
  late ValueNotifier<String> _maternalPulseValue;
  late ValueNotifier<String> _fetalHeartRateValue;
  late ValueNotifier<String> _contractionsDurationValue;

  String _maternalPositionValue = '';
  String _frequencyContractions = '';
  String _pain = '';
  DateTime _initialDateTime = DateTime.now();

  bool _isInitialized = false; // Bandera para evitar sobrescribir valores

  @override
  void initState() {
    super.initState();

    // Inicializa los ValueNotifier con valores vacíos (se actualizarán luego)
    _arterialPressureValue = ValueNotifier('');
    _maternalPulseValue = ValueNotifier('');
    _fetalHeartRateValue = ValueNotifier('');
    _contractionsDurationValue = ValueNotifier('');
  }

  void _initializeControllers() {
    final partographBloc = context.watch<PartographBloc>().state;
    if (partographBloc is Loaded) {
      final medicalSurveillanceTable =
          context.read<PartographBloc>().state.whenOrNull(
                loaded: (partograph, message, isDeleteEvent) =>
                    partograph.medicalSurveillanceTable,
              );

      final item = medicalSurveillanceTable!
          .where(
            (e) =>
                e.id ==
                widget.medicalSurveillanceEditData.medicalSurveillanceTableId,
          )
          .first;
      if (!_isInitialized) {
        _initialDateTime = item.time;
        _maternalPositionValue = item.maternalPosition;
        _frequencyContractions = item.frequencyContractions;
        _pain = item.pain;

        // En lugar de crear nuevos ValueNotifier, actualizamos su valor
        _arterialPressureValue.value = item.arterialPressure;
        _maternalPulseValue.value = item.maternalPulse;
        _fetalHeartRateValue.value = item.fetalHeartRate;
        _contractionsDurationValue.value = item.contractionsDuration;
        _isInitialized = true;
      }
    }
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

      final medicalSurveillanceTable = bloc.state.whenOrNull(
        loaded: (partograph, message, isDeleteEvent) =>
            partograph.medicalSurveillanceTable,
      );

      final item = medicalSurveillanceTable!
          .where(
            (e) =>
                e.id ==
                widget.medicalSurveillanceEditData.medicalSurveillanceTableId,
          )
          .first;

      final selectedDateTime =
          DateFormat('dd/MM/yyyy HH:mm').parse(_dateTimeController.text);

      final event = UpdateMedicalSurveillance(
        id: item.id,
        partographId: widget.medicalSurveillanceEditData.partographId,
        letter: item.letter,
        maternalPosition: _maternalPositionValue,
        arterialPressure: _arterialPressureValue.value,
        maternalPulse: _maternalPulseValue.value,
        fetalHeartRate: 'N/A',
        contractionsDuration: _contractionsDurationValue.value,
        frequencyContractions: 'N/A',
        pain: _pain,
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
      appBar: AppBar(title: const Text('Editar Vigilancia Médica')),
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
                child: _buildFormContent(context),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormContent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DateTimePickerField(
            dateTimeController: _dateTimeController,
            initialDateTime: _initialDateTime,
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
          const SizedBox(height: 16),/*
          FormElementWidget(
            label: 'Frecuencia cardiaca fetal',
            initialValue: _fetalHeartRateValue.value,
            onChanged: (value) => _fetalHeartRateValue.value = value,
          ),*/
          FormElementWidget(
            label: 'Duración Contracciones',
            initialValue: _contractionsDurationValue.value,
            onChanged: (value) => _contractionsDurationValue.value = value,
          ),
          const SizedBox(height: 16),/*
          _buildTextField(
            label: 'Frec. Contracciones',
            maxLength: 3,
            initialValue: _frequencyContractions,
            onChanged: (value) => _frequencyContractions = value,
          ),*/
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
            label: const Text('Actualizar'),
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
