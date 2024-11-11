import 'package:flutter/material.dart';

enum OptionType {
  minute("'"),
  second("''");

  final String value;
  const OptionType(this.value);
}

class FormElementWidget extends StatefulWidget {
  final String label;
  final double? width;
  final String? initialValue;
  final ValueChanged<String>? onChanged;

  const FormElementWidget({
    super.key,
    required this.label,
    this.width,
    this.initialValue,
    this.onChanged,
  });

  @override
  State<FormElementWidget> createState() => _FormElementWidgetState();
}

class _FormElementWidgetState extends State<FormElementWidget> {
  final TextEditingController _textController = TextEditingController();
  late ValueNotifier<OptionType> selectedOption;
  late ValueNotifier<String> _compositeValue;

  @override
  void initState() {
    super.initState();

    // Configura los valores iniciales
    final initialParts = widget.initialValue?.split('x') ?? [''];
    final initialStringValue = initialParts[0];
    final initialOption = initialParts.length == 2
        ? OptionType.values.firstWhere(
            (e) => e.value == initialParts[1],
            orElse: () => OptionType.minute,
          )
        : OptionType.minute;

    _textController.text = initialStringValue;
    selectedOption = ValueNotifier<OptionType>(initialOption);
    _compositeValue =
        ValueNotifier<String>('${initialStringValue}x${initialOption.value}');

    _textController.addListener(_updateCompositeValue);
    selectedOption.addListener(_updateCompositeValue);
  }

  void _updateCompositeValue() {
    final newValue = '${_textController.text}x${selectedOption.value.value}';
    _compositeValue.value = newValue;
    widget.onChanged?.call(newValue);
  }

  @override
  void dispose() {
    _textController.dispose();
    selectedOption.dispose();
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
              Expanded(child: _buildTextInputField()),
              const SizedBox(width: 10),
              const Text('X'),
              const SizedBox(width: 10),
              Expanded(flex: 2, child: _buildDropdownButton()),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextInputField() {
    return TextFormField(
      controller: _textController,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor, ingrese un dato';
        }
        return null;
      },
    );
  }

  Widget _buildDropdownButton() {
    return ValueListenableBuilder<OptionType>(
      valueListenable: selectedOption,
      builder: (context, value, _) {
        return DropdownButtonFormField<OptionType>(
          value: value,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
          onChanged: (newValue) {
            if (newValue != null) {
              selectedOption.value = newValue;
            }
          },
          items: OptionType.values.map((option) {
            return DropdownMenuItem<OptionType>(
              value: option,
              child: Text(option == OptionType.minute ? 'minuto' : 'segundo'),
            );
          }).toList(),
        );
      },
    );
  }
}
