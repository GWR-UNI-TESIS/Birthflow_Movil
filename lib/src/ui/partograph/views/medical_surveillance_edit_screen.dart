import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/domain/worktime/enums.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/arterial_pressure_widget.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/dropdown_button_widget.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/form_element_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MedicalSurveillanceEditData {
  final MedicalSurveillanceTable? medicalSurveillanceTable;
  final String partographId;

  MedicalSurveillanceEditData({
    required this.medicalSurveillanceTable,
    required this.partographId,
  });
}


class MedicalSurveillanceEditScreen extends StatefulWidget {
  final MedicalSurveillanceEditData? model;

  const MedicalSurveillanceEditScreen({super.key, this.model});

  @override
  State<StatefulWidget> createState() => MedicalSurveillanceEditState();
}

class MedicalSurveillanceEditState
    extends State<MedicalSurveillanceEditScreen> {
  final TextEditingController timeController = TextEditingController();

  late final ArterialPressureWidget arterialPressureWidget;
  late final FormElementWidget maternalPulseWidget;
  late final FormElementWidget fetalHeartRateWidget;
  late final FormElementWidget contractionsDurationWidget;

  late DateTime _dateTime;
  late String frequencyContractions;
  late String painLocation;
  late String painIntensity;

  @override
  void initState() {
    super.initState();

    if (widget.model?.medicalSurveillanceTable != null) {
      // Si el modelo está presente, inicializa los valores
      final model = widget.model!;
      timeController.text = DateFormat('HH:mm:ss').format(model.medicalSurveillanceTable!.time);
      frequencyContractions = model.medicalSurveillanceTable!.frequencyContractions;
      painLocation = model.medicalSurveillanceTable!.pain; // Ajusta según corresponda
      painIntensity = model.medicalSurveillanceTable!.pain; // Ajusta según corresponda

      arterialPressureWidget = ArterialPressureWidget(
        label: model.medicalSurveillanceTable!.arterialPressure,
      );
      maternalPulseWidget = FormElementWidget(
        label: 'Pulso Materno',
        initValue: model.medicalSurveillanceTable!.maternalPulse,
      );
      fetalHeartRateWidget = FormElementWidget(
        label: 'Frecuencia cardiaca fetal',
        initValue: model.medicalSurveillanceTable!.fetalHeartRate,
      );
      contractionsDurationWidget = FormElementWidget(
        label: 'Duracion Contracciones',
        initValue: model.medicalSurveillanceTable!.contractionsDuration,
      );
    } else {
      // Inicializa los widgets con valores por defecto si no hay modelo
      arterialPressureWidget =
          const ArterialPressureWidget(label: 'TensionArterial');
      maternalPulseWidget = const FormElementWidget(
        label: 'Pulso Materno',
        initValue: '',
      );
      fetalHeartRateWidget = const FormElementWidget(
        label: 'Frecuencia cardiaca fetal',
      );
      contractionsDurationWidget = const FormElementWidget(
        label: 'Duracion Contracciones',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller:
                      timeController, //editing controller of this TextField
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Tiempo',
                  ),
                  readOnly:
                      true, //set it true, so that user will not able to edit text
                  onTap: () async {
                    final TimeOfDay? pickedTime = await showTimePicker(
                      initialTime: TimeOfDay.now(),
                      context: context,
                    );

                    if (pickedTime != null) {
                      // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
                      final DateTime now = DateTime.now();

                      _dateTime = DateTime(
                        now.year,
                        now.month,
                        now.day,
                        pickedTime.hour,
                        pickedTime.minute,
                      );

                      final DateTime parsedTime = DateFormat.jm()
                          // ignore: use_build_context_synchronously
                          .parse(pickedTime.format(context));

                      final String formattedTime =
                          DateFormat('HH:mm:ss').format(parsedTime);

                      setState(() {
                        timeController.text =
                            formattedTime; //set the value of text field.
                      });
                    }
                  },
                ),
                arterialPressureWidget,
                maternalPulseWidget,
                fetalHeartRateWidget,
                contractionsDurationWidget,
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Frec. Contracciones',
                  ),
                  maxLength: 3,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Frequency Contraction';
                    }
                    return null;
                  },
                  onChanged: (String? value) {
                    frequencyContractions = value!;
                  },
                ),
                DropdownButtonWidget(
                  labelText: 'Dolor Localizacion',
                  enumValues: PainLocation.values,
                  onValueChanged: (PainLocation value) {
                    painLocation = value.value;
                  },
                ),
                DropdownButtonWidget(
                  labelText: 'Dolor Intensidad',
                  enumValues: PainIntensity.values,
                  onValueChanged: (PainIntensity value) {
                    painIntensity = value.value;
                  },
                ),
                FilledButton(
                  onPressed: () {},
                  child: Text(widget.model != null ? 'Actualizar' : 'Guardar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
