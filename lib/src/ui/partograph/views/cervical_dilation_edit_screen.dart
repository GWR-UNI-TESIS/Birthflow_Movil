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

  CervicalDilationEditData(
      {required this.cervicalDilation, required this.partographId});
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
  late TextEditingController _valueController;
  late TextEditingController _dateTimecontroller;
  TimeOfDay? _selectedTime;
  bool _remOrRam = false;

  @override
  void initState() {
    super.initState();
    _valueController = TextEditingController(
      text:
          widget.cervicalDilationEditData.cervicalDilation?.value.toString() ??
              '',
    );

    _dateTimecontroller = TextEditingController(
      text: widget.cervicalDilationEditData.cervicalDilation?.hour.toString() ??
          '',
    );

    if (widget.cervicalDilationEditData.cervicalDilation != null) {
      _selectedTime = TimeOfDay.fromDateTime(
          widget.cervicalDilationEditData.cervicalDilation!.hour);
    }
    _remOrRam =
        widget.cervicalDilationEditData.cervicalDilation?.remOrRam ?? false;
  }

  @override
  void dispose() {
    _valueController.dispose();
    super.dispose();
  }

  void _saveCervicalDilation(String user) {
    if (_formKey.currentState!.validate()) {
      final bloc = context.read<PartographBloc>();
      final now = DateTime.now();
      final selectedDateTime = DateTime(
        now.year,
        now.month,
        now.day,
        _selectedTime?.hour ?? now.hour,
        _selectedTime?.minute ?? now.minute,
      );

      if (widget.cervicalDilationEditData.cervicalDilation == null) {
        bloc.add(
          SaveCervicalDilation(
            partographId: widget.cervicalDilationEditData.partographId,
            value: double.parse(_valueController.text),
            hour: selectedDateTime,
            remOrRam: _remOrRam,
            userId: user,
          ),
        );
      } else {
        bloc.add(
          UpdateCervicalDilation(
            id: widget.cervicalDilationEditData.cervicalDilation!.id,
            partographId: widget.cervicalDilationEditData.partographId,
            value: double.parse(_valueController.text),
            hour: selectedDateTime,
            remOrRam: _remOrRam,
            userId: user,
          ),
        );
      }
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null && picked != _selectedTime) {
      final parsedTime = DateFormat.jm()
          // ignore: use_build_context_synchronously
          .parse(picked.format(context));
      //converting to DateTime so that we can further format on different pattern.

      final formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
      setState(() {
        _selectedTime = picked;
        _dateTimecontroller.text = formattedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthenticationBloc>().state;
    final String user = state.maybeWhen(
      authenticated: (response) => response.userId!,
      orElse: () => '',
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.cervicalDilationEditData.cervicalDilation == null
              ? 'Crear Dilatación Cervical'
              : 'Editar Dilatación Cervical',
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
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
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
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () => _selectTime(context),
                  child: AbsorbPointer(
                    child: TextFormField(
                      controller: _dateTimecontroller,
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
                ),
                SwitchListTile(
                  title: const Text('Ram O Rem'),
                  value: _remOrRam,
                  onChanged: (value) {
                    setState(() {
                      _remOrRam = value;
                    });
                  },
                ),
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
}
