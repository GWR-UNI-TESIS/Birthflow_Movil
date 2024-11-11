import 'package:flutter/material.dart';

class ArterialPressureWidget extends StatefulWidget {
  final String label;
  final double? width;
  final String? initialValue;
  final ValueChanged<String>? onChanged;

  const ArterialPressureWidget({
    super.key,
    required this.label,
    this.width,
    this.initialValue,
    this.onChanged,
  });

  @override
  State<ArterialPressureWidget> createState() => _ArterialPressureWidgetState();
}

class _ArterialPressureWidgetState extends State<ArterialPressureWidget> {
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();
  late ValueNotifier<String> _compositeValue;

  @override
  void initState() {
    super.initState();
    // Configura los valores iniciales, si existen
    if (widget.initialValue != null) {
      final parts = widget.initialValue!.split('/');
      if (parts.length == 2) {
        _firstController.text = parts[0];
        _secondController.text = parts[1];
      }
    }
    _compositeValue = ValueNotifier<String>(_firstController.text + '/' + _secondController.text);

    _firstController.addListener(_updateCompositeValue);
    _secondController.addListener(_updateCompositeValue);
  }

  void _updateCompositeValue() {
    final newValue = '${_firstController.text}/${_secondController.text}';
    _compositeValue.value = newValue;
    widget.onChanged?.call(newValue); // Notifica el cambio de valor al widget padre
  }

  @override
  void dispose() {
    _firstController.dispose();
    _secondController.dispose();
    _compositeValue.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5, left: 2),
            child: Text(
              widget.label,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Row(
            children: [
              Expanded(child: _buildTextField(_firstController, 'Por favor, ingrese un dato')),
              const SizedBox(width: 10),
              const Text('/', style: TextStyle(fontSize: 20)),
              const SizedBox(width: 10),
              Expanded(child: _buildTextField(_secondController, 'Por favor, ingrese un dato')),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String validationMessage) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validationMessage;
        }
        return null;
      },
    );
  }
}
