import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArterialPressureWidget extends StatefulWidget {
  final String label;
  final double? width;
  final String? initValue;
  
  const ArterialPressureWidget({
    super.key,
    required this.label,
    this.width,
    this.initValue,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ArterialPressureState createState() => _ArterialPressureState();

  String get value => _ArterialPressureState()._value ?? '';
}

class _ArterialPressureState extends State<ArterialPressureWidget> {
  String _firstValue = '';
  String _secondValue = '';
  String? _value;

  @override
  void initState() {
    super.initState();
    if (widget.initValue != null) {
      final parts = widget.initValue!.split('/');
      if (parts.length == 2) {
        _firstValue = parts[0];
        _secondValue = parts[1];
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
            children: [
              Expanded(
                child: TextFormField(
                  initialValue: _firstValue,
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
                    setState(() {
                      _firstValue = value;
                      _updateValue();
                    });
                  },
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text('/', style: TextStyle(fontSize: 20)),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextFormField(
                  initialValue: _secondValue,
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
                    setState(() {
                      _secondValue = value;
                      _updateValue();
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _updateValue() {
    _value = '$_firstValue/$_secondValue';
  }
}
