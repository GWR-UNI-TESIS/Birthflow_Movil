import 'package:flutter/material.dart';

class EditarInfoScreen extends StatefulWidget {
  @override
  _EditarInfoState createState() => _EditarInfoState();
}

class _EditarInfoState extends State<EditarInfoScreen> {
  final _formKey = GlobalKey<FormState>();
  final _newCorreo = TextEditingController();
  final _newNombre = TextEditingController();
  String _currentCorreo = 'correo@ejemplo.com'; // Valor inicial
  String _currentNombre = 'UsuarioEjemplo'; // Valor inicial

  void _updateData() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _currentCorreo = _newCorreo.text;
        _currentNombre = _newNombre.text;
      });

      // Limpiar campos después de actualizar
      _newCorreo.clear();
      _newNombre.clear();

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Datos actualizados exitosamente!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Información'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Mostrar datos actuales
                _InfoRow(label: 'Correo actual:', value: _currentCorreo),
                _InfoRow(label: 'Nombre actual:', value: _currentNombre),

                const SizedBox(height: 30),
                const Text('Nuevos datos:', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 20),

                TextFormField(
                  controller: _newCorreo,
                  decoration: const InputDecoration(
                    labelText: 'Nuevo Correo',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese un correo';
                    }
                    if (!value.contains('@')) {
                      return 'Correo no válido';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),
                TextFormField(
                  controller: _newNombre,
                  decoration: const InputDecoration(
                    labelText: 'Nuevo Nombre de usuario',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese un nombre';
                    }
                    if (value.length < 3) {
                      return 'Mínimo 3 caracteres';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: _updateData,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: Colors.blue[700],
                  ),
                  child: const Text(
                    'Actualizar Datos',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget para mostrar los datos actuales
class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(width: 10),
          Text(value),
        ],
      ),
    );
  }
}
