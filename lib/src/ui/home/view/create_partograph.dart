import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_create_usecase.dart';
import 'package:birthflow_movil/src/domain/worktime/worktime.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/create_partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/create_partograph/state_events/create_partograph_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/create_partograph/state_events/create_partograph_state.dart';
import 'package:birthflow_movil/src/ui/home/widget/keep_alive_wrapper.dart';
import 'package:birthflow_movil/src/ui/widgets/loading_overlay.dart';
import 'package:birthflow_movil/src/ui/widgets/snackbars/snackbars_mixin.dart';
import 'package:birthflow_movil/src/ui/widgets/worktime/worktime_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CreatePartographScreen extends StatelessWidget with SnackbarMixin {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CreatePartographBloc>(
          create: (context) => CreatePartographBloc(
            locator<CreatePartographUseCase>(),
          ),
        ),
      ],
      child: BlocListener<CreatePartographBloc, CreatePartographState>(
        listener: (BuildContext context, CreatePartographState state) {
          if (state is IsSaved) {
            showSnackbar(state.message);
            Navigator.pop(context, state.partographId);
          }

          if (state is Error) {
            showErrorSnackbar(state.errorMessage);
          }
        },
        child: _CreatePartographPage(),
      ),
    );
  }
}

class _CreatePartographPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CreatePartographState();
}

class _CreatePartographState extends State<_CreatePartographPage>
    with TickerProviderStateMixin, SnackbarMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _nameTextController.clear();
    _recordNumberTextController.clear();
    _dateTextController.clear();
  }

  void savePartograph(String user) {
    final formState = _formKey.currentState;
    if (formState != null &&
        formState.validate() &&
        _workTime.estado != 'unknown state') {
      context.read<CreatePartographBloc>().add(
            Save(
              partogramaId: '',
              name: _nameTextController.text,
              recordName: _recordNumberTextController.text,
              date: DateTime.parse(_dateTextController.text),
              observation: '',
              worktime: _workTime.estado,
              createBy: user,
            ),
          );
    } else {
      showErrorSnackbar(
        'Ingresar todos los valores - Tabla de construccion de curvas',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthenticationBloc>().state;
    final isLoading = context.watch<CreatePartographBloc>().state is Loading;
    final String user = state.maybeWhen(
      authenticated: (response, message, _) => response.id!,
      orElse: () => '',
    );

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) async {
        if (didPop) {
          return;
        }

        final bool shouldPop = await _showBackDialog() ?? false;
        if (context.mounted && shouldPop) {
          Navigator.pop(context);
        }
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
        body: LoadingOverlay(
          isLoading: isLoading,
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              SingleChildScrollView(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                  child: KeepAliveWrapper(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 16,
                            ),
                            child: TextFormField(
                              controller: _nameTextController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Nombre',
                                hintText: 'Ingrese el nombre',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Porfavor ingrese el nombre';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 16,
                            ),
                            child: TextFormField(
                              controller: _recordNumberTextController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Expediente',
                                hintText: 'Ingrese el numero de expediente',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Porfavor ingrese el expediente';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 16,
                            ),
                            child: TextFormField(
                              controller: _dateTextController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Fecha',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Porfavor ingrese la fecha';
                                }
                                return null;
                              },
                              readOnly: true,
                              onTap: () async {
                                final DateTime? pickedDate =
                                    await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(
                                    2000,
                                  ),
                                  lastDate: DateTime(2101),
                                  locale: const Locale('es', 'ES'),
                                );

                                if (pickedDate != null) {
                                  final String formattedDate =
                                      DateFormat('yyyy-MM-dd')
                                          .format(pickedDate);

                                  setState(() {
                                    _dateTextController.text = formattedDate;
                                  });
                                }
                              },
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width,
                            margin: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 45,
                            ),
                            child: FilledButton(
                              child: const Text('Siguiente'),
                              onPressed: () {
                                _tabController
                                    .animateTo(_tabController.index + 1);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  children: [
                    WorkTimeTableWidget(
                      currentWorkTime: _workTime,
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      margin: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 45,
                      ),
                      child: FilledButton(
                        onPressed: () => savePartograph(user),
                        child: const Text('Guardar'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool?> _showBackDialog() async => await showDialog<bool>(
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
