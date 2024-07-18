import 'package:birthflow_movil/src/domain/worktime/worktime.dart';
import 'package:birthflow_movil/src/ui/widgets/worktime/worktime_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreatePartographScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CreatePartographState();
}

class _CreatePartographState extends State<CreatePartographScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  late TextEditingController _nameTextController;
  late TextEditingController _recordNumberTextController;
  late TextEditingController _dateTextController;
  final WorkTime _workTime = WorkTime.init();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _nameTextController = TextEditingController(text: '');
    _recordNumberTextController = TextEditingController(text: '');
    _dateTextController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        final willPopScope = await showWarning(context);
        return willPopScope ?? false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Nuevo Partograma'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const <Widget>[
              Tab(
                text: 'Datos enerales',
              ),
              Tab(
                text: 'Construccion de la curva de alerta',
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      controller: _nameTextController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nombre',
                        hintText: 'Ingrese el nombre',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      controller: _recordNumberTextController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Expediente',
                        hintText: 'Ingrese el numero de expediente',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      controller: _dateTextController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Tiempo',
                      ),
                      readOnly: true,
                      onTap: () async {
                        final DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(
                            2000,
                          ),
                          lastDate: DateTime(2101),
                        );

                        if (pickedDate != null) {
                          final String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate);

                          setState(() {
                            _dateTextController.text = formattedDate;
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: Column(
                children: [
                  WorkTimeTableWidget(
                    currentWorkTime: _workTime,
                  ),
                  FilledButton(
                    onPressed: () async {},
                    child: const Text('Guardar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Desea volver? '),
          content:
              const Text('Desea cancelar la creacion del nuevo partograma?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                Navigator.pop(context, true);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
}
