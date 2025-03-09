import 'package:flutter/material.dart';

class DynamicDropdownButton<T> extends StatefulWidget {
  const DynamicDropdownButton({
    super.key,
    required this.list,
    required this.labelText,
    required this.onValueChanged,
    required this.displayField,
    this.initialValue,
  });

  final List<T> list; // Lista genérica
  final String labelText; // Etiqueta para el campo
  final ValueChanged<T> onValueChanged; // Callback con el objeto seleccionado
  final String Function(T) displayField; // Función para mostrar el campo deseado
  final T? initialValue; // Valor inicial opcional

  @override
  State<DynamicDropdownButton<T>> createState() =>
      _DynamicDropdownButtonState<T>();
}

class _DynamicDropdownButtonState<T> extends State<DynamicDropdownButton<T>> {
  late T dropdownValue;

  @override
  void initState() {
    super.initState();
    // Establece el valor inicial
    dropdownValue = widget.initialValue ?? widget.list.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: dropdownValue,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: widget.labelText,
      ),
      onChanged: (T? value) {
        if (value != null) {
          setState(() {
            dropdownValue = value;
          });
          widget.onValueChanged(value); // Retorna el objeto seleccionado
        }
      },
      isExpanded: true,
      items: widget.list.map<DropdownMenuItem<T>>((T item) {
        return DropdownMenuItem<T>(
          value: item,
          child: Text(widget.displayField(item)), // Muestra el campo deseado
        );
      }).toList(),
    );
  }
}
