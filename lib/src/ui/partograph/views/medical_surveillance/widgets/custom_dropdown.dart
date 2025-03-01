import 'package:birthflow_movil/src/ui/widgets/custom_dropdown_button.dart';
import 'package:flutter/material.dart';

class UnifiedDropdownWidget extends StatefulWidget {
  final List<String> locationValues; // Valores para "Dolor Localización"
  final List<String> intensityValues; // Valores para "Dolor Intensidad"
  final void Function(String unifiedValue)
      onValueChanged; // Callback con valor unificado

  final String? initialValue;

  const UnifiedDropdownWidget({
    super.key,
    required this.locationValues,
    required this.intensityValues,
    required this.onValueChanged,
    this.initialValue,
  });

  @override
  State<UnifiedDropdownWidget> createState() => _UnifiedDropdownWidgetState();
}

class _UnifiedDropdownWidgetState extends State<UnifiedDropdownWidget> {
  String? selectedLocation; // Para "Dolor Localización"
  String? selectedIntensity; // Para "Dolor Intensidad"

  @override
  void initState() {
    super.initState();

    final values = widget.initialValue?.split('-');

    // Asignar valores iniciales al estado
    if(values != null && values.length > 1){
    selectedLocation = values[0].trim();
    selectedIntensity = values[1].trim();
    }else {
      selectedLocation = widget.locationValues.first;
      selectedIntensity= widget.intensityValues.first;
    }
    // Llamar al callback con los valores iniciales, si ambos están definidos
    if (selectedLocation != null && selectedIntensity != null) {
      _onDropdownChange();
    }
  }

  void _onDropdownChange() {
    if (selectedLocation != null && selectedIntensity != null) {
      final unifiedValue = '$selectedLocation - $selectedIntensity';
      widget.onValueChanged(unifiedValue);
    }
  }

  Widget _buildDropdown({
    required String labelText,
    required List<String> items,
    required String? initialValue,
    required ValueChanged<String?> onChanged,
  }) {
    return CustomDropdownButton(
      list: items,
      labelText: labelText,
      initialValue: initialValue,
      onValueChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildDropdown(
            labelText: 'Dolor Localización',
            items: widget.locationValues,
            initialValue: selectedLocation,
            onChanged: (value) {
              setState(() {
                selectedLocation = value;
                _onDropdownChange();
              });
            },
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildDropdown(
            labelText: 'Dolor Intensidad',
            items: widget.intensityValues,
            initialValue: selectedIntensity,
            onChanged: (value) {
              setState(() {
                selectedIntensity = value;
                _onDropdownChange();
              });
            },
          ),
        ),
      ],
    );
  }
}
