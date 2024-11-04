import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CervicalDilationEditData {
  final CervicalDilation? cervicalDilation;
  final String partographId;

  CervicalDilationEditData({
    required this.cervicalDilation,
    required this.partographId,
  });
}

class CervicalDilationEditScreen extends StatefulWidget {
  final CervicalDilationEditData cervicalDilationEditData;

  const CervicalDilationEditScreen({
    super.key,
    required this.cervicalDilationEditData,
  });

  @override
  _CervicalDilationEditScreenState createState() =>
      _CervicalDilationEditScreenState();
}

class _CervicalDilationEditScreenState extends State<CervicalDilationEditScreen>
    with SnackbarsMixin {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _valueController;
  late final TextEditingController _dateTimeController;
  TimeOfDay? _selectedTime;
  bool _remOrRam = false;

  @override
  void initState() {
    super.initState();
    final cervicalDilation = widget.cervicalDilationEditData.cervicalDilation;

    _valueController = TextEditingController(
      text: cervicalDilation?.value.toString() ?? '',
    );
    _dateTimeController = TextEditingController(
      text: cervicalDilation != null
          ? DateFormat('HH:mm:ss').format(cervicalDilation.hour)
          : '',
    );
    _selectedTime = cervicalDilation != null
        ? TimeOfDay.fromDateTime(cervicalDilation.hour)
        : null;
    _remOrRam = cervicalDilation?.remOrRam ?? false;
  }

  @override
  void dispose() {
    _valueController.dispose();
    _dateTimeController.dispose();
    super.dispose();
  }

  void _saveCervicalDilation(String user) {
    if (_formKey.currentState?.validate() ?? false) {
      final bloc = context.read<PartographBloc>();
      final selectedDateTime = DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        _selectedTime?.hour ?? DateTime.now().hour,
        _selectedTime?.minute ?? DateTime.now().minute,
      );

      final cervicalDilation = widget.cervicalDilationEditData.cervicalDilation;
      final event = cervicalDilation == null
          ? SaveCervicalDilation(
              partographId: widget.cervicalDilationEditData.partographId,
              value: double.parse(_valueController.text),
              hour: selectedDateTime,
              remOrRam: _remOrRam,
            )
          : UpdateCervicalDilation(
              id: cervicalDilation.id,
              partographId: widget.cervicalDilationEditData.partographId,
              value: double.parse(_valueController.text),
              hour: selectedDateTime,
              remOrRam: _remOrRam,
            );

      bloc.add(event);
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
        _dateTimeController.text = DateFormat('HH:mm:ss').format(
          DateFormat.jm().parse(picked.format(context)),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = context.select<AuthenticationBloc, String>(
      (bloc) => bloc.state.maybeWhen(
        authenticated: (response) => response.userId!,
        orElse: () => '',
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cervicalDilationEditData.cervicalDilation == null
            ? 'Crear Dilatación Cervical'
            : 'Editar Dilatación Cervical'),
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
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _buildValueField(),
                const SizedBox(height: 20),
                _buildTimeField(context),
                _buildSwitch(),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _saveCervicalDilation(user),
                  child: const Text('Guardar'),
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
        labelText: 'Valor de Dilatación',
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
            hintText: _selectedTime != null
                ? _selectedTime!.format(context)
                : 'Seleccione una hora',
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

  Widget _buildSwitch() {
    return SwitchListTile(
      title: const Text('Ram O Rem'),
      value: _remOrRam,
      onChanged: (value) {
        setState(() {
          _remOrRam = value;
        });
      },
    );
  }
}
