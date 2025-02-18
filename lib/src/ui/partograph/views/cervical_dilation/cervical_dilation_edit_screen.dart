import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
import 'package:birthflow_movil/src/ui/widgets/loading_overlay.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

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
    with SnackbarMixin {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _valueController = TextEditingController();
  final TextEditingController _dateTimeController = TextEditingController();
  TimeOfDay? _selectedTime;
  bool _remOrRam = false;

  @override
  void initState() {
    super.initState();
  }

  void _initializeControllers() {
    final partographBloc = context.watch<PartographBloc>().state;
    if (partographBloc is Loaded) {
      final cervicalDilations = partographBloc.whenOrNull(
        loaded: (partograph, message) => partograph.cervicalDilations,
      );

      final cervicalDilation = cervicalDilations!
          .where(
            (e) => e.id == widget.cervicalDilationEditData.cervicalDilationId,
          )
          .first;

      _valueController.text = cervicalDilation.value.toString();
      // ignore: unnecessary_null_comparison
      _dateTimeController.text = cervicalDilation != null
          ? DateFormat('HH:mm:ss').format(cervicalDilation.hour)
          : '';

      // ignore: unnecessary_null_comparison
      _selectedTime = cervicalDilation != null
          ? TimeOfDay.fromDateTime(cervicalDilation.hour)
          : null;
      _remOrRam = cervicalDilation.remOrRam;
    }
  }

  @override
  void dispose() {
    _valueController.dispose();
    _dateTimeController.dispose();
    super.dispose();
  }

  void _updateCervicalDilation() {
    if (_formKey.currentState?.validate() ?? false) {
      final bloc = context.read<PartographBloc>();
      final selectedDateTime = DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        _selectedTime?.hour ?? DateTime.now().hour,
        _selectedTime?.minute ?? DateTime.now().minute,
      );

      final event = UpdateCervicalDilation(
        id: widget.cervicalDilationEditData.cervicalDilationId!,
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
      appBar: AppBar(title: const Text('Editar Dilatación Cervical')),
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
          child: _buildForm(context),
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildValueField(),
            const SizedBox(height: 20),
            _buildTimeField(context),
            _buildSwitch(),
            const SizedBox(height: 20),
            FilledButton.icon(
              onPressed: _updateCervicalDilation,
              icon: const Icon(Icons.save_alt),
              label: const Text('Actualizar'),
            ),
          ],
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
