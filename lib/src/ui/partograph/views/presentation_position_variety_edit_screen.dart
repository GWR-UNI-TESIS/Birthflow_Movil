import 'package:birthflow_movil/src/domain/partograph/entities/presentation_position_variety.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/dropdown_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PresentationPositionVarietyEditScreen extends StatefulWidget {
  final PresentationPositionVariety? model;

  // Constructor que acepta el modelo opcional
  const PresentationPositionVarietyEditScreen({this.model});

  @override
  State<StatefulWidget> createState() => PresentationPositionVarietyEditState();
}

class PresentationPositionVarietyEditState
    extends State<PresentationPositionVarietyEditScreen> {
  final TextEditingController timeInput = TextEditingController();
  late Position _position;
  late HodgePlanePosition _hodgePlanePosition;

  final today = DateTime.now();

  @override
  void initState() {
    super.initState();

    if (widget.model != null) {
      // Si el modelo está presente, inicializa los valores
      final model = widget.model!;
      timeInput.text = DateFormat('HH:mm:ss').format(model.time);
      _position = Position.fromString(model.hodgePlane);
      _hodgePlanePosition = HodgePlanePosition.fromString(model.hodgePlane);
    } else {
      // Valores por defecto si no hay modelo
      _position = Position.values.first; // Ajusta según sea necesario
      _hodgePlanePosition =
          HodgePlanePosition.values.first; // Ajusta según sea necesario
    }
  }

  @override
  Widget build(BuildContext context) {
    timeInput.text = DateFormat('HH:mm:ss').format(today);
    HodgePlanePosition _hodgePlanePosition;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Modificando'),
      ),
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.only(top: 10),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  DropdownButtonWidget<HodgePlanePosition>(
                    labelText: 'Posicion',
                    enumValues: HodgePlanePosition.values,
                    onValueChanged: (HodgePlanePosition position) {
                      _hodgePlanePosition = position;
                    },
                  ),
                  DropdownButtonWidget<Position>(
                    labelText: 'Plano',
                    enumValues: Position.values,
                    onValueChanged: (Position plane) {},
                  ),
                  TextField(
                    controller:
                        timeInput, //editing controller of this TextField
                    decoration: const InputDecoration(
                      //icon of text field
                      border: OutlineInputBorder(),
                      labelText: 'Tiempo', //label text of field
                    ),
                    readOnly:
                        true, //set it true, so that user will not able to edit text
                    onTap: () async {
                      final TimeOfDay? pickedTime = await showTimePicker(
                        initialTime: TimeOfDay.now(),
                        context: context,
                      );

                      if (pickedTime != null) {
                        final DateTime dateTime = DateTime(
                          today.year,
                          today.month,
                          today.day,
                          pickedTime.hour,
                          pickedTime.minute,
                          pickedTime.minute,
                        );

                        final String formattedTime =
                            DateFormat('HH:mm:ss').format(dateTime);

                        setState(() {
                          timeInput.text = formattedTime;
                        });
                      }
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
