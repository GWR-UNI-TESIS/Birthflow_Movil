import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/date_time_picker_widget.dart';
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
  DateTime? initialDateTime;
  bool _remOrRam = false;

  @override
  void initState() {
    super.initState();
  }

  void _initializeControllers() {
    final partographBloc = context.watch<PartographBloc>().state;
    if (partographBloc is Loaded) {
      final cervicalDilations = partographBloc.whenOrNull(
        loaded: (partograph, message, isDeleteEvent) =>
            partograph.cervicalDilations,
      );

      final cervicalDilation = cervicalDilations!
          .where(
            (e) => e.id == widget.cervicalDilationEditData.cervicalDilationId,
          )
          .first;

      _valueController.text = cervicalDilation.value.toString();

      initialDateTime = cervicalDilation.hour;
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
      final selectedDateTime =
          DateFormat('dd/MM/yyyy HH:mm').parse(_dateTimeController.text);

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
            DateTimePickerField(
              dateTimeController: _dateTimeController,
              initialDateTime: initialDateTime,
            ),
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
