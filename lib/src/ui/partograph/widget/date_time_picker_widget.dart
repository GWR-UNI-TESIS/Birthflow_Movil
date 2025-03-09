import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePickerField extends StatefulWidget {
  final TextEditingController dateTimeController;
  final DateTime? initialDateTime;

  const DateTimePickerField({
    super.key,
    required this.dateTimeController,
    this.initialDateTime,
  });

  @override
  _DateTimePickerFieldState createState() => _DateTimePickerFieldState();
}

class _DateTimePickerFieldState extends State<DateTimePickerField> {
  DateTime? _selectedDateTime;
  final DateFormat _dateFormat = DateFormat('dd/MM/yyyy HH:mm');

  @override
  void initState() {
    super.initState();
    if (widget.initialDateTime != null) {
      _selectedDateTime = widget.initialDateTime;
      widget.dateTimeController.text = _dateFormat.format(_selectedDateTime!);
    } else if (widget.dateTimeController.text.isNotEmpty) {
      try {
        _selectedDateTime = _dateFormat.parse(widget.dateTimeController.text);
      } catch (e) {
        // ignore: avoid_print
        print('Error parsing initial date: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectDateTime(context),
      child: AbsorbPointer(
        child: TextFormField(
          controller: widget.dateTimeController,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.calendar_today),
            border: OutlineInputBorder(),
            labelText: 'Fecha y Hora',
            hintText: 'Seleccione fecha y hora',
          ),
          validator: (value) {
            if (_selectedDateTime == null) {
              return 'Por favor seleccione fecha y hora';
            }
            return null;
          },
        ),
      ),
    );
  }

  Future<void> _selectDateTime(BuildContext context) async {
    final DateTime initialDate = _selectedDateTime ?? DateTime.now();

    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      locale: const Locale('es', 'ES'),
    );

    if (pickedDate != null) {
      final TimeOfDay initialTime = TimeOfDay.fromDateTime(initialDate);
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: initialTime,
      );

      if (pickedTime != null) {
        setState(() {
          _selectedDateTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );
          widget.dateTimeController.text = _dateFormat.format(_selectedDateTime!);
        });
      }
    }
  }
}
