import 'package:birthflow_movil/src/domain/worktime/entities/membranas.dart';
import 'package:birthflow_movil/src/domain/worktime/entities/paridad.dart';
import 'package:birthflow_movil/src/domain/worktime/entities/posicion.dart';
import 'package:birthflow_movil/src/domain/worktime/worktime.dart';
import 'package:birthflow_movil/src/ui/widgets/worktime/button_table.dart';
import 'package:flutter/material.dart';

class WorkTimeTableWidget extends StatefulWidget {
  final WorkTime currentWorkTime;

  const WorkTimeTableWidget({super.key, required this.currentWorkTime});

  @override
  State<WorkTimeTableWidget> createState() => _WorkTimeTableState();
}

class _WorkTimeTableState extends State<WorkTimeTableWidget> {
  @override
  Widget build(BuildContext context) {
    final decorator = BoxDecoration(border: Border.all(color: Colors.grey));

    return Table(
      columnWidths: const {
        0: FlexColumnWidth(0.38),
        1: FlexColumnWidth(1.3),
      },
      children: [
        TableRow(
          children: [
            //Tabla Izquierda
            Table(
              children: [
                TableRow(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 26),
                      padding: const EdgeInsets.only(bottom: 2),
                      child: const Text('Posicion'),
                    ),
                  ],
                ),
                TableRow(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 26),
                      padding: const EdgeInsets.only(bottom: 2),
                      child: const Text('Paridad'),
                    ),
                  ],
                ),
                TableRow(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 26),
                      padding: const EdgeInsets.only(bottom: 2),
                      child: const Text('Membranas'),
                    ),
                  ],
                ),
              ],
            ),
            Table(
              border: const TableBorder(
                top: BorderSide(
                  color: Colors.grey,
                ),
              ),
              children: [
                TableRow(
                  children: [
                    Table(
                      columnWidths: const {
                        0: FlexColumnWidth(1.1),
                        1: FlexColumnWidth(4.9),
                      },
                      children: [
                        TableRow(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                              ),
                              right: BorderSide(
                                color: Colors.grey,
                              ),
                              left: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              child: ButtonTableWidget(
                                callback: () => setState(() {
                                  widget.currentWorkTime.posicion =
                                      const Posicion.vertical();
                                  widget.currentWorkTime.paridad =
                                      const Paridad.init();
                                }),
                                textData: 'Vert',
                                conditionValue:
                                    widget.currentWorkTime.posicion.isVertical,
                              ),
                            ),
                            ButtonTableWidget(
                              callback: () => setState(() {
                                widget.currentWorkTime.posicion =
                                    const Posicion.horizontal();
                              }),
                              textData: 'Horizontal',
                              conditionValue:
                                  widget.currentWorkTime.posicion.isHorizontal,
                            ),
                          ],
                        ),
                        TableRow(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                              ),
                              right: BorderSide(
                                color: Colors.grey,
                              ),
                              left: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              child: ButtonTableWidget(
                                callback: () => setState(() {
                                  if (widget
                                      .currentWorkTime.posicion.isVertical) {
                                    widget.currentWorkTime.paridad =
                                        const Paridad.todas();
                                    widget.currentWorkTime.membranas =
                                        const Membranas.init();
                                  }
                                }),
                                textData: 'Todas',
                                conditionValue: widget
                                        .currentWorkTime.paridad.isTodas &&
                                    widget.currentWorkTime.posicion.isVertical,
                              ),
                            ),
                            Table(
                              border: const TableBorder(
                                verticalInside: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              children: [
                                TableRow(
                                  children: [
                                    ButtonTableWidget(
                                      callback: () => setState(() {
                                        if (widget.currentWorkTime.posicion
                                            .isHorizontal) {
                                          widget.currentWorkTime.posicion =
                                              const Posicion.horizontal();
                                          widget.currentWorkTime.paridad =
                                              const Paridad.multiparas();
                                          widget.currentWorkTime.membranas =
                                              const Membranas.init();
                                        }
                                      }),
                                      textData: 'Multiparas',
                                      conditionValue: widget.currentWorkTime
                                              .paridad.isMultiparas &&
                                          widget.currentWorkTime.posicion
                                              .isHorizontal,
                                    ),
                                    ButtonTableWidget(
                                      callback: () => setState(() {
                                        if (widget.currentWorkTime.posicion
                                            .isHorizontal) {
                                          widget.currentWorkTime.paridad =
                                              const Paridad.nuliparas();
                                          widget.currentWorkTime.membranas =
                                              const Membranas.init();
                                        }
                                      }),
                                      textData: 'Nuliparas',
                                      conditionValue: widget.currentWorkTime
                                              .paridad.isNuliparas &&
                                          widget.currentWorkTime.posicion
                                              .isHorizontal,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        TableRow(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                              ),
                              right: BorderSide(
                                color: Colors.grey,
                              ),
                              left: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              child: ButtonTableWidget(
                                callback: () => setState(() {
                                  if (widget.currentWorkTime.paridad.isTodas) {
                                    widget.currentWorkTime.membranas =
                                        const Membranas.integras();
                                  }
                                }),
                                textData: 'Integra',
                                conditionValue: widget
                                        .currentWorkTime.paridad.isTodas &&
                                    widget
                                        .currentWorkTime.posicion.isVertical &&
                                    widget.currentWorkTime.membranas.isIntegras,
                              ),
                            ),
                            Table(
                              border: const TableBorder(
                                verticalInside: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              children: [
                                TableRow(
                                  children: [
                                    ButtonTableWidget(
                                      callback: () => setState(() {
                                        if (widget.currentWorkTime.paridad
                                            .isMultiparas) {
                                          widget.currentWorkTime.membranas =
                                              const Membranas.integras();
                                        }
                                      }),
                                      textData: 'Integras',
                                      conditionValue: widget.currentWorkTime
                                              .paridad.isMultiparas &&
                                          widget.currentWorkTime.posicion
                                              .isHorizontal &&
                                          widget.currentWorkTime.membranas
                                              .isIntegras,
                                    ),
                                    ButtonTableWidget(
                                      callback: () => setState(() {
                                        if (widget.currentWorkTime.paridad
                                            .isMultiparas) {
                                          widget.currentWorkTime.membranas =
                                              const Membranas.rotas();
                                        }
                                      }),
                                      textData: 'Rotas',
                                      conditionValue: widget.currentWorkTime
                                              .paridad.isMultiparas &&
                                          widget.currentWorkTime.posicion
                                              .isHorizontal &&
                                          widget.currentWorkTime.membranas
                                              .isRotas,
                                    ),
                                    ButtonTableWidget(
                                      callback: () => setState(() {
                                        if (widget.currentWorkTime.paridad
                                            .isNuliparas) {
                                          widget.currentWorkTime.membranas =
                                              const Membranas.integras();
                                        }
                                      }),
                                      textData: 'Integras',
                                      conditionValue: widget.currentWorkTime
                                              .paridad.isNuliparas &&
                                          widget.currentWorkTime.posicion
                                              .isHorizontal &&
                                          widget.currentWorkTime.membranas
                                              .isIntegras,
                                    ),
                                    ButtonTableWidget(
                                      callback: () => setState(() {
                                        if (widget.currentWorkTime.paridad
                                            .isNuliparas) {
                                          widget.currentWorkTime.membranas =
                                              const Membranas.rotas();
                                        }
                                      }),
                                      textData: 'Rotas',
                                      conditionValue: widget.currentWorkTime
                                              .paridad.isNuliparas &&
                                          widget.currentWorkTime.posicion
                                              .isHorizontal &&
                                          widget.currentWorkTime.membranas
                                              .isRotas,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Table(
                      columnWidths: const {
                        0: FlexColumnWidth(),
                        1: FlexColumnWidth(),
                        2: FlexColumnWidth(),
                        3: FlexColumnWidth(),
                        4: FlexColumnWidth(),
                      },
                      children: [
                        spaceTableRow(),
                        TableRow(
                          decoration: decorator,
                          children: [
                            ItemWidget(
                              currentState: widget.currentWorkTime.vti,
                              text: '0:15',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hmi,
                              text: '0:15',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hmr,
                              text: '0:05',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hni,
                              text: '0:30',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hnr,
                              text: '0:20',
                            ),
                          ],
                        ),
                        spaceTableRow(),
                        TableRow(
                          decoration: decorator,
                          children: [
                            ItemWidget(
                              currentState: widget.currentWorkTime.vti,
                              text: '0:25',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hmi,
                              text: '0:25',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hmr,
                              text: '0:10',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hni,
                              text: '0:35',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hnr,
                              text: '0:35',
                            ),
                          ],
                        ),
                        spaceTableRow(),
                        TableRow(
                          decoration: decorator,
                          children: [
                            ItemWidget(
                              currentState: widget.currentWorkTime.vti,
                              text: '0:35',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hmi,
                              text: '0:40',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hmr,
                              text: '0:25',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hni,
                              text: '0:40',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hnr,
                              text: '0:50',
                            ),
                          ],
                        ),
                        spaceTableRow(),
                        TableRow(
                          decoration: decorator,
                          children: [
                            ItemWidget(
                              currentState: widget.currentWorkTime.vti,
                              text: '1:00',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hmi,
                              text: '0:55',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hmr,
                              text: '0:35',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hni,
                              text: '1:00',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hnr,
                              text: '1:05',
                            ),
                          ],
                        ),
                        spaceTableRow(),
                        TableRow(
                          decoration: decorator,
                          children: [
                            ItemWidget(
                              currentState: widget.currentWorkTime.vti,
                              text: '1:15',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hmi,
                              text: '1:25',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hmr,
                              text: '1:00',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hni,
                              text: '1:30',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hnr,
                              text: '1:25',
                            ),
                          ],
                        ),
                        spaceTableRow(),
                        TableRow(
                          decoration: decorator,
                          children: [
                            ItemWidget(
                              currentState: widget.currentWorkTime.vti,
                              text: '2:10',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hmi,
                              text: '2:30',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hmr,
                              text: '2:30',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hni,
                              text: '3:15',
                            ),
                            ItemWidget(
                              currentState: widget.currentWorkTime.hnr,
                              text: '2:30',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  TableRow spaceTableRow() {
    return const TableRow(
      children: [
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class ItemWidget extends StatelessWidget {
  final bool currentState;
  final String text;

  const ItemWidget({super.key, required this.currentState, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          (currentState == true) ? Theme.of(context).colorScheme.primary : null,
      child: Text(
        style: (currentState == true)
            ? TextStyle(color: Theme.of(context).colorScheme.onPrimary)
            : null,
        textAlign: TextAlign.center,
        text,
      ),
    );
  }
}
