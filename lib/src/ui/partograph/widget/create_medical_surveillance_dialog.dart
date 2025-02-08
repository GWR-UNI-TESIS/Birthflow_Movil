import 'package:birthflow_movil/src/ui/partograph/bloc/chart/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/events/chart_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/views/medical_surveillance/widgets/custom_dropdown.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/arterial_pressure_widget.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/form_element_widget.dart';
import 'package:birthflow_movil/src/ui/widgets/custom_dropdown_button.dart';
import 'package:birthflow_movil/src/ui/widgets/loading_overlay.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

Future<void> showMedicalSurveillanceDialog({
  required BuildContext context,
}) async {
  return showDialog<void>(
    context: context,
    builder: (context) => const MedicalSurveillanceDialog(),
  );
}

class MedicalSurveillanceDialog extends StatefulWidget {
  const MedicalSurveillanceDialog({
    super.key,
  });

  @override
  _MedicalSurveillanceDialogState createState() =>
      _MedicalSurveillanceDialogState();
}

class _MedicalSurveillanceDialogState extends State<MedicalSurveillanceDialog>
    with SnackbarMixin {
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
    _arterialPressureValue = ValueNotifier('');
    _maternalPulseValue = ValueNotifier('');
    _fetalHeartRateValue = ValueNotifier('');
    _contractionsDurationValue = ValueNotifier('');
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

  void _handleSave(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      final partographBloc = context.read<PartographBloc>();
      final chartBloc = context.read<ChartBloc>();

      final partographId = (partographBloc.state is Loaded)
          ? (partographBloc.state as Loaded).partograph.partographId
          : '';

      final event = CreateMedicalSurveillance(
        partographId: partographId!,
        letter: '',
        maternalPosition: _maternalPositionValue,
        arterialPressure: _arterialPressureValue.value,
        maternalPulse: _maternalPulseValue.value,
        fetalHeartRate: _fetalHeartRateValue.value,
        contractionsDuration: _contractionsDurationValue.value,
        frequencyContractions: _frequencyContractions,
        pain: _pain,
        time: _dateTime,
      );

      partographBloc.add(event);

      // Esperar a que el estado de PartographBloc se actualice
      partographBloc.stream
          .firstWhere((state) => state is Loaded)
          .then((state) {
        if (state is Loaded) {
          final partograph = state.partograph;
          chartBloc.add(OnRefresh(partograph: partograph));
        }
      });

      // Cerrar el diálogo
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = context.watch<PartographBloc>().state is Loading;
    return SimpleDialog(
      title: const Text('Crear Vigilancia Médica'),
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      children: [
        BlocListener<PartographBloc, PartographState>(
          listener: (context, state) {
            if (state is Loaded) {
              showSnackbar(state.message);
            } else if (state is Error) {
              showErrorSnackbar(state.errorMessage);
            }
          },
          child: LoadingOverlay(
            isLoading: isLoading,
            child: Form(
              key: _formKey,
              child: _buildFormContent(context),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFormContent(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildTimePicker(),
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
            onPressed: () => _handleSave(context),
            icon: const Icon(Icons.save_alt),
            label: const Text('Guardar'),
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
