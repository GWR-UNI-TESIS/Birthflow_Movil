import 'package:birthflow_movil/src/domain/partograph/entities/childbirth_note.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/widgets/loading_overlay.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChildbirthNoteEditScreen extends StatefulWidget {
  final String partographId;
  final ChildbirthNote? childbirthNote;

  const ChildbirthNoteEditScreen({
    super.key,
    required this.partographId,
    this.childbirthNote,
  });

  @override
  State<ChildbirthNoteEditScreen> createState() =>
      _ChildbirthNoteEditScreenState();
}

class _ChildbirthNoteEditScreenState extends State<ChildbirthNoteEditScreen>
    with SnackbarMixin {
  final _formKey = GlobalKey<FormState>();

  // Controladores para los campos
  late final TextEditingController _dateController;
  late final TextEditingController _hourController;
  late final TextEditingController _sexController;
  late final TextEditingController _pesoController;
  late final TextEditingController _apgarController;
  late final TextEditingController _temperatureController;
  late final TextEditingController _caputtoController;
  late final TextEditingController _circularController;
  late final TextEditingController _lamnioticoController;
  late final TextEditingController _miccionController;
  late final TextEditingController _meconioController;
  late final TextEditingController _paController;
  late final TextEditingController _expulsivoController;
  late final TextEditingController _placentaController;
  late final TextEditingController _alumbramientoController;
  late final TextEditingController _huellaPlantarController;
  late final TextEditingController _pcController;
  late final TextEditingController _tallaController;
  late final TextEditingController _brazaleteController;
  late final TextEditingController _huellaDigController;

  @override
  void initState() {
    super.initState();

    final note = widget.childbirthNote;
    _dateController = TextEditingController(text: note?.date ?? '');
    _hourController = TextEditingController(text: note?.hour ?? '');
    _sexController = TextEditingController(text: note?.sex ?? '');
    _pesoController = TextEditingController(text: note?.peso ?? '');
    _apgarController = TextEditingController(text: note?.apgar ?? '');
    _temperatureController =
        TextEditingController(text: note?.temperature ?? '');
    _caputtoController = TextEditingController(text: note?.caputto ?? '');
    _circularController = TextEditingController(text: note?.circular ?? '');
    _lamnioticoController = TextEditingController(text: note?.lamniotico ?? '');
    _miccionController = TextEditingController(text: note?.miccion ?? '');
    _meconioController = TextEditingController(text: note?.meconio ?? '');
    _paController = TextEditingController(text: note?.pa ?? '');
    _expulsivoController = TextEditingController(text: note?.expulsivo ?? '');
    _placentaController = TextEditingController(text: note?.placenta ?? '');
    _alumbramientoController =
        TextEditingController(text: note?.alumbramiento ?? '');
    _huellaPlantarController =
        TextEditingController(text: note?.huellaPlantar ?? '');
    _pcController = TextEditingController(text: note?.pc ?? '');
    _tallaController = TextEditingController(text: note?.talla ?? '');
    _brazaleteController = TextEditingController(text: note?.brazalete ?? '');
    _huellaDigController = TextEditingController(text: note?.huellaDig ?? '');
  }

  @override
  void dispose() {
    _hourController.dispose();
    _sexController.dispose();
    _apgarController.dispose();
    _temperatureController.dispose();
    _caputtoController.dispose();
    _circularController.dispose();
    _lamnioticoController.dispose();
    _miccionController.dispose();
    _meconioController.dispose();
    _paController.dispose();
    _expulsivoController.dispose();
    _placentaController.dispose();
    _alumbramientoController.dispose();
    _huellaPlantarController.dispose();
    _pcController.dispose();
    _tallaController.dispose();
    _brazaleteController.dispose();
    _huellaDigController.dispose();
    super.dispose();
  }

  void _saveNote() {
    if (_formKey.currentState?.validate() ?? false) {
      final bloc = context.read<PartographBloc>();

      if (widget.childbirthNote == null) {
        // Crear nueva nota
        bloc.add(
          CreateChildbirthNote(
            partographId: widget.partographId,
            date: _dateController.text,
            hour: _hourController.text,
            sex: _sexController.text,
            peso: _pesoController.text,
            apgar: _apgarController.text,
            temperature: _temperatureController.text,
            caputto: _caputtoController.text,
            circular: _circularController.text,
            lamniotico: _lamnioticoController.text,
            miccion: _miccionController.text,
            meconio: _meconioController.text,
            pa: _paController.text,
            expulsivo: _expulsivoController.text,
            placenta: _placentaController.text,
            alumbramiento: _alumbramientoController.text,
            huellaPlantar: _huellaPlantarController.text,
            pc: _pcController.text,
            talla: _tallaController.text,
            brazalete: _brazaleteController.text,
            huellaDig: _huellaDigController.text,
          ),
        );
      } else {
        // Actualizar nota existente
        bloc.add(
          UpdateChildbirthNote(
            partographId: widget.partographId,
            date: _dateController.text,
            hour: _hourController.text,
            peso: _pesoController.text,
            sex: _sexController.text,
            apgar: _apgarController.text,
            temperature: _temperatureController.text,
            caputto: _caputtoController.text,
            circular: _circularController.text,
            lamniotico: _lamnioticoController.text,
            miccion: _miccionController.text,
            meconio: _meconioController.text,
            pa: _paController.text,
            expulsivo: _expulsivoController.text,
            placenta: _placentaController.text,
            alumbramiento: _alumbramientoController.text,
            huellaPlantar: _huellaPlantarController.text,
            pc: _pcController.text,
            talla: _tallaController.text,
            brazalete: _brazaleteController.text,
            huellaDig: _huellaDigController.text,
          ),
        );
      }

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = context.watch<PartographBloc>().state is Loading;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.childbirthNote == null
              ? 'Crear Nota de Parto'
              : 'Editar Nota de Parto',
        ),
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
        child: LoadingOverlay(
          isLoading: isLoading,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  _buildTextField('Hora', _dateController),
                  _buildTextField('Hora', _hourController),
                  _buildTextField('Sexo', _sexController),
                  _buildTextField('Sexo', _pesoController),
                  _buildTextField('APGAR', _apgarController),
                  _buildTextField('Temperatura', _temperatureController),
                  _buildTextField('Caputto', _caputtoController),
                  _buildTextField('Circular', _circularController),
                  _buildTextField('Líquido Amniótico', _lamnioticoController),
                  _buildTextField('Micción', _miccionController),
                  _buildTextField('Meconio', _meconioController),
                  _buildTextField('PA', _paController),
                  _buildTextField('Expulsivo', _expulsivoController),
                  _buildTextField('Placenta', _placentaController),
                  _buildTextField('Alumbramiento', _alumbramientoController),
                  _buildTextField('Huella Plantar', _huellaPlantarController),
                  _buildTextField('PC', _pcController),
                  _buildTextField('Talla', _tallaController),
                  _buildTextField('Brazalete', _brazaleteController),
                  _buildTextField('Huella Digital', _huellaDigController),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _saveNote,
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

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Por favor ingrese $label';
          }
          return null;
        },
      ),
    );
  }
}
