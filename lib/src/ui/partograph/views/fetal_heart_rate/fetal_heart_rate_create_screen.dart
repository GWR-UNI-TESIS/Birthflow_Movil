import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/date_time_picker_widget.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/form_element_widget.dart';
import 'package:birthflow_movil/src/ui/widgets/loading_overlay.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class FetalHeartRateCreateScreen extends StatefulWidget {
  final String partographId;

  const FetalHeartRateCreateScreen({super.key, required this.partographId});

  @override
  _FetalHeartRateCreateScreenState createState() =>
      _FetalHeartRateCreateScreenState();
}

class _FetalHeartRateCreateScreenState extends State<FetalHeartRateCreateScreen>
    with SnackbarMixin {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _dateTimeController = TextEditingController();

  String? _fetalHeartRateValue;



  @override
  void dispose() {
    _dateTimeController.dispose();
    super.dispose();
  }

  void _saveFetalHeartRate() {
    if (_formKey.currentState?.validate() ?? false) {
      final bloc = context.read<PartographBloc>();
      final selectedDateTime =
          DateFormat('dd/MM/yyyy HH:mm').parse(_dateTimeController.text);

      final event = CreateFetalHeartRate(
        partographId: widget.partographId,
        value: _fetalHeartRateValue!,
        time: selectedDateTime,
      );

      bloc.add(event);
    }
  }

 

  @override
  Widget build(BuildContext context) {
    final isLoading = context.watch<PartographBloc>().state is Loading;
    return Scaffold(
      appBar: AppBar(title: const Text('Crear Frecuencia Cardiaca Fetal')),
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  FormElementWidget(
                    label: 'Frecuencia cardiaca fetal',
                    initialValue: _fetalHeartRateValue,
                    onChanged: (value) => _fetalHeartRateValue = value,
                  ),
                  const SizedBox(height: 20),
                  DateTimePickerField(
                    dateTimeController: _dateTimeController,
                  ),
                  const SizedBox(height: 20),
                  FilledButton(
                    onPressed: _saveFetalHeartRate,
                    child: const Text('Guardar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
