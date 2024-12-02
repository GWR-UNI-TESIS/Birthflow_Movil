import 'package:flutter/material.dart';

class PartogramModificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(),
      ),
    );
  }

 Widget _buildTextField({
    required String label,
    required int maxLength,
    required ValueChanged<String> onChanged,
    String? initialValue,
  }) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
      ),
      initialValue: initialValue,
      maxLength: maxLength,
      validator: (value) =>
          value == null || value.isEmpty ? 'Por favor, ingrese un dato' : null,
      onChanged: onChanged,
    );
  }
}

