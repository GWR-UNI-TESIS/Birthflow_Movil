import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/date_time_picker_widget.dart';
import 'package:birthflow_movil/src/ui/widgets/loading_overlay.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CervicalDilationCreateScreen extends StatefulWidget {
  final String partographId;

  const CervicalDilationCreateScreen({super.key, required this.partographId});

  @override
  _CervicalDilationCreateScreenState createState() =>
      _CervicalDilationCreateScreenState();
}

class _CervicalDilationCreateScreenState
    extends State<CervicalDilationCreateScreen> with SnackbarMixin {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _valueController = TextEditingController();
  final TextEditingController _dateTimeController = TextEditingController();

  bool _remOrRam = false;

  @override
  void dispose() {
    _valueController.dispose();
    _dateTimeController.dispose();
    super.dispose();
  }

  void _saveCervicalDilation() {
    if (_formKey.currentState?.validate() ?? false) {
      final bloc = context.read<PartographBloc>();

      final selectedDateTime =
          DateFormat('dd/MM/yyyy HH:mm').parse(_dateTimeController.text);

      final event = SaveCervicalDilation(
        partographId: widget.partographId,
        value: double.parse(_valueController.text),
        hour: selectedDateTime,
        remOrRam: _remOrRam,
      );

      bloc.add(event);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = context.watch<PartographBloc>().state is Loading;
    return Scaffold(
      appBar: AppBar(title: const Text('Crear Dilatación Cervical')),
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
            child: _buildForm(context),
          ),
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
            DateTimePickerField(dateTimeController: _dateTimeController),
            _buildSwitch(),
            const SizedBox(height: 20),
            FilledButton.icon(
              onPressed: _saveCervicalDilation,
              icon: const Icon(Icons.save_alt),
              label: const Text('Guardar'),
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
