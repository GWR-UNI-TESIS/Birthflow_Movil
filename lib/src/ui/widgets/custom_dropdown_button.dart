import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  const CustomDropdownButton(
      {super.key,
      required this.list,
      required this.labelText,
      required this.onValueChanged});

  final List<String> list;
  final String labelText;
  final ValueChanged<String> onValueChanged;
  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = widget.list.first;
    return DropdownButtonFormField<String>(
      value: dropdownValue,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: widget.labelText,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
        widget.onValueChanged(dropdownValue);
      },
      isExpanded: true,
      items: widget.list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
