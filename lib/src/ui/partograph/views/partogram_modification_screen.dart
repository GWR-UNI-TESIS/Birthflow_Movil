import 'package:birthflow_movil/src/domain/worktime/worktime.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:birthflow_movil/src/ui/widgets/worktime/worktime_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class PartographHelper {
  final String? partographId;
  final String name;
  final String recordName;
  final DateTime date;
  final String observation;
  final String workTime;

  PartographHelper({
    required this.partographId,
    required this.name,
    required this.recordName,
    required this.date,
    required this.observation,
    required this.workTime,
  });

  Map<String, dynamic> toJson() {
    return {
      'partographId': partographId,
      'name': name,
      'recordName': recordName,
      'date': date.toIso8601String(),
      'observation': observation,
      'workTime': workTime,
    };
  }

  factory PartographHelper.fromJson(Map<String, dynamic> json) {
    return PartographHelper(
      partographId: json['partographId'].toString(),
      name: json['name'].toString(),
      recordName: json['recordName'].toString(),
      date: DateTime.parse(json['date'].toString()),
      observation: json['observation'].toString(),
      workTime: json['workTime'].toString(),
    );
  }
}

class PartogramModificationScreen extends StatefulWidget {
  final PartographHelper partograph;

  const PartogramModificationScreen({super.key, required this.partograph});

  @override
  PartogramModificationState createState() => PartogramModificationState();
}

class PartogramModificationState extends State<PartogramModificationScreen>
    with SnackbarMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late TextEditingController _nameController;
  late TextEditingController _recordNameController;
  late TextEditingController _dateController;
  late TextEditingController _observationController;
  DateTime? selectedDateTime;
  late final WorkTime? _workTime;
  @override
  void initState() {
    super.initState();

    final PartographHelper partograph = widget.partograph;

    // Inicializar los controladores con los valores actuales del Partograph
    _nameController = TextEditingController(text: partograph.name);
    _recordNameController = TextEditingController(text: partograph.recordName);
    _dateController = TextEditingController(
      text: DateFormat('yyyy-MM-dd').format(partograph.date),
    );
    selectedDateTime = partograph.date;
    _observationController =
        TextEditingController(text: partograph.observation);
    _workTime =
        WorkTime.fromEstado(partograph.workTime, partograph.partographId!);
  }

  @override
  void dispose() {
    // Limpiar los controladores al destruir la pantalla
    _nameController.dispose();
    _recordNameController.dispose();
    _dateController.dispose();
    _observationController.dispose();
    super.dispose();
  }

  void _updatePartograph() {
    final formState = _formKey.currentState;
    if (formState != null && formState.validate()) {
      final bloc = context.read<PartographBloc>();

      final event = ModifyingPartograph(
        partographId: widget.partograph.partographId!,
        name: _nameController.text,
        recordName: _recordNameController.text,
        date: selectedDateTime!,
        observation: _observationController.text,
        workTime: _workTime!.estado,
      );

      bloc.add(event);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Actualizar Partograma'),
      ),
      body: BlocListener<PartographBloc, PartographState>(
        listener: (context, state) {
          if (state is Loaded) {
            showSnackbar(state.message);
            Navigator.of(context).pop();
          } else if (state is Error) {
            showErrorSnackbar(state.errorMessage);
          }
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(22.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTextField(
                  controller: _nameController,
                  label: 'Nombre',
                  hint: 'Ingrese el nombre',
                  maxLength: 50,
                ),
                const SizedBox(height: 16),
                _buildTextField(
                  controller: _recordNameController,
                  label: 'Número de Expediente',
                  hint: 'Ingrese el número de expediente',
                  maxLength: 50,
                ),
                const SizedBox(height: 16),
                _buildDateField(
                  controller: _dateController,
                  label: 'Fecha',
                  context: context,
                ),
                const SizedBox(height: 20),
                _buildTextFieldObservation(
                  controller: _observationController,
                  label: 'Observaciones',
                  hint: 'Ingrese las observaciones',
                  maxLength: 300,
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    'Valores por defecto para la creacion de curva de alerta ',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                WorkTimeTableWidget(
                  currentWorkTime: _workTime!,
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: _updatePartograph,
                    label: const Text('Guardar Cambios'),
                    icon: const Icon(
                      Icons.save_alt,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFieldObservation({
    required TextEditingController controller,
    required String label,
    required String hint,
    required int maxLength,
  }) {
    return Container(
      constraints: const BoxConstraints(minHeight: 100, maxHeight: 150),
      child: TextFormField(
        controller: controller,
        expands: true,
        textAlignVertical: TextAlignVertical.top,
        maxLines: null,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
          hintText: hint,
        ),
        maxLength: maxLength,
        validator: (value) => value == null || value.isEmpty
            ? 'Por favor, ingrese un valor'
            : null,
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
    required int maxLength,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
        hintText: hint,
      ),
      maxLength: maxLength,
      validator: (value) =>
          value == null || value.isEmpty ? 'Por favor, ingrese un valor' : null,
    );
  }

  Widget _buildDateField({
    required TextEditingController controller,
    required String label,
    required BuildContext context,
  }) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
      ),
      onTap: () async {
        final pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2101),
        );
        if (pickedDate != null) {
          controller.text = pickedDate.toIso8601String();
          selectedDateTime = pickedDate;
        }
      },
      validator: (value) => value == null || value.isEmpty
          ? 'Por favor, seleccione una fecha'
          : null,
    );
  }
}
