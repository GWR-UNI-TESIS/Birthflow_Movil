import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatefulWidget {
  final String label;
  final List<String> items;
  final String currentValue;
  final ValueChanged<String> onChanged;

  const CustomDropdownMenu({
    super.key,
    required this.label,
    required this.items,
    required this.onChanged,
    required this.currentValue,
  });

  @override
  State<CustomDropdownMenu> createState() => _CustomDropdownMenuState();
}

class _CustomDropdownMenuState extends State<CustomDropdownMenu> {
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.currentValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: dropdownValue,
      requestFocusOnTap: false,
      label: Text(widget.label),
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
        widget.onChanged(value!);
      },
      dropdownMenuEntries:
          widget.items.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
