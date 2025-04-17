import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/views/childbirth_note/childbirth_note_edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChildbirthNoteViewScreen extends StatelessWidget {
  final String partographId;

  const ChildbirthNoteViewScreen({
    super.key,
    required this.partographId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles de Nota de Parto'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              final bloc = context.read<PartographBloc>();
              final state = bloc.state;

              if (state is Loaded && state.partograph.childbirthNote != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChildbirthNoteEditScreen(
                      partographId: partographId,
                      childbirthNote: state.partograph.childbirthNote,
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
      body: BlocBuilder<PartographBloc, PartographState>(
        builder: (context, state) {
          if (state is Loaded) {
            final note = state.partograph.childbirthNote;
            if (note == null) {
              return Center(
                child: Column(
                  children: [
                    const Text('No se encontró una nota de parto.'),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChildbirthNoteEditScreen(
                              partographId: partographId,
                            ),
                          ),
                        );
                      },
                      label: const Text('Crear Nota de Parto'),
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  children: [
                    _buildDetailRow('Fecha', note.date),
                    _buildDetailRow('Hora', note.hour),
                    _buildDetailRow('Peso', note.peso),
                    _buildDetailRow('Sexo', note.sex),
                    _buildDetailRow('APGAR', note.apgar),
                    _buildDetailRow('Temperatura', note.temperature),
                    _buildDetailRow('Caputto', note.caputto),
                    _buildDetailRow('Circular', note.circular),
                    _buildDetailRow('Líquido Amniótico', note.lamniotico),
                    _buildDetailRow('Micción', note.miccion),
                    _buildDetailRow('Meconio', note.meconio),
                    _buildDetailRow('PA', note.pa),
                    _buildDetailRow('Expulsivo', note.expulsivo),
                    _buildDetailRow('Placenta', note.placenta),
                    _buildDetailRow('Alumbramiento', note.alumbramiento),
                    _buildDetailRow('Huella Plantar', note.huellaPlantar),
                    _buildDetailRow('PC', note.pc),
                    _buildDetailRow('Talla', note.talla),
                    _buildDetailRow('Brazalete', note.brazalete),
                    _buildDetailRow('Huella Digital', note.huellaDig),
                    _buildDetailRow('Descripcion', note.description),
                  ],
                ),
              );
            }
          } else if (state is Error) {
            return Center(child: Text(state.errorMessage));
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget _buildDetailRow(String label, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(value ?? 'Sin datos'),
          ),
        ],
      ),
    );
  }
}
