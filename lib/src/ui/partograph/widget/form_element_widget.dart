import 'package:flutter/material.dart';

enum _Optionstype {
  minute("'"),
  seconds("''");

  final String value;
  const _Optionstype(this.value);
}

// ignore: must_be_immutable
class FormElementWidget extends StatefulWidget {
  final String label;
  final double? width;
  final String? initValue;
  
  const FormElementWidget({
    super.key,
    required this.label,
    this.width,
    this.initValue,
  });

  @override
  // ignore: library_private_types_in_public_api
  _FormElementState createState() => _FormElementState();

  String get value => _FormElementState()._value ?? '';
}

class _FormElementState extends State<FormElementWidget> {
  _Optionstype selectedValue = _Optionstype.minute;
  String _stringValue = '';
  String? _value;

  @override
  void initState() {
    super.initState();
    if (widget.initValue != null) {
      final parts = widget.initValue!.split('x');
      if (parts.length == 2) {
        _stringValue = parts[0];
        final option = _Optionstype.values.firstWhere(
          (e) => e.value == parts[1],
          orElse: () => _Optionstype.minute, // Default en caso de error
        );
        selectedValue = option;
      }
    }
    _value = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: Column(
        children: [
          Container(
            alignment: AlignmentDirectional.centerStart,
            padding: const EdgeInsets.only(bottom: 5, left: 2),
            child: Text(
              widget.label,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Espacio entre la 'x' y el TextField
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Porfavor ingresar un dato';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    _stringValue = value;
                    _updateValue();
                  },
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text('X'),
              const SizedBox(
                width: 10,
              ),
              // Espacio entre el TextField y el DropdownButton
              Expanded(
                flex: 2,
                child: DropdownButtonFormField<_Optionstype>(
                  value: selectedValue,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (newValue) {
                    setState(() {
                      selectedValue = newValue!;
                      _updateValue();
                    });
                  },
                  items: _Optionstype.values.map((value) {
                    return DropdownMenuItem<_Optionstype>(
                      value: value,
                      child: Text(
                        value == _Optionstype.minute ? 'minuto' : 'segundo',
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _updateValue() {
    _value = '${_stringValue}x${selectedValue.value}';
  }
}
