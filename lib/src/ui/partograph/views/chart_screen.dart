// ignore_for_file: sized_box_shrink_expand, library_prefixes
import 'package:birthflow_movil/src/core/chart/main.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/hodge_plane.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/position.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/medical_surveillance_table.dart';
import 'package:birthflow_movil/src/providers/catalog_cubit.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/events/chart_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/chart/states/chart_state.dart'
    as chartStates;
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_event.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/views/medical_surveillance/widgets/custom_dropdown.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/arterial_pressure_widget.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/date_time_picker_widget.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/expandable_fab.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/form_element_widget.dart';
import 'package:birthflow_movil/src/ui/partograph/widget/medical_surveillance_widget.dart';
import 'package:birthflow_movil/src/ui/widgets/custom_dropdown_button.dart';
import 'package:birthflow_movil/src/ui/widgets/dropdown.dart';
import 'package:birthflow_movil/src/ui/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final catalog = context.watch<CatalogCubit>();

    return BlocProvider(
      create: (context) => ChartBloc(catalog, const chartStates.Initial()),
      child: BlocConsumer<PartographBloc, PartographState>(
        listener: (context, state) {
          if (state is Loaded) {
            final partograph = state.partograph;
            context.read<ChartBloc>().add(OnRefresh(partograph: partograph));
          }
        },
        builder: (context, state) {
          final isLoading = state is Loading;
          return _ChartScreen(isLoading);
        },
      ),
    );
  }
}

class _ChartScreen extends StatefulWidget {
  final bool isLoading;
  const _ChartScreen(this.isLoading);
  @override
  State<StatefulWidget> createState() => _ChartState();
}

class _ChartState extends State<_ChartScreen> {
  int _scrollFab = 0;

  final PageController controller = PageController();

  bool _isOnRefreshAdded = false; // Para evitar duplicar el evento

  void _changedScrollFab(int page) {
    setState(() {
      _scrollFab = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final medicalSurveillance =
        context.watch<PartographBloc>().state.whenOrNull(
              loaded: (partograph, message, isDeleteEvent) =>
                  partograph.medicalSurveillanceTable,
            );

    final List<Widget> fabs = [
      ExpandableFab(
        distance: 70.0,
        children: [
          Tooltip(
            message: 'Agregar Dilatacion Cervical',
            child: ActionButton(
              onPressed: () => _showCreateCervicalDilation(context),
              icon: const Icon(Icons.add),
            ),
          ),
          Tooltip(
            message: 'Agregar Plano Hodge Cervical',
            child: ActionButton(
              onPressed: () => _showPresentationPosition(context),
              icon: const Icon(Icons.add_box),
            ),
          ),
        ],
      ),
      FloatingActionButton.extended(
        onPressed: () => _showCreateItemTable(context),
        label: const Text(
          'Agregar a la tabla',
        ),
        icon: const Icon(Icons.add),
      ),
    ];

    return Builder(
      builder: (context) {
        final partographBloc = BlocProvider.of<PartographBloc>(context);
        final chartBloc = BlocProvider.of<ChartBloc>(context);

        if (partographBloc.state is Loaded && !_isOnRefreshAdded) {
          final partograph = (partographBloc.state as Loaded).partograph;
          chartBloc.add(OnRefresh(partograph: partograph));
          _isOnRefreshAdded = true; // Asegurarse de que se añade solo una vez
        }

        return Scaffold(
          appBar: AppBar(
            elevation: 2,
            title: Text(
              (partographBloc.state is Loaded)
                  ? (partographBloc.state as Loaded).partograph.name
                  : '',
            ),
          ),
          body: LoadingOverlay(
            isLoading: widget.isLoading,
            child: SafeArea(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final bool isTablet = constraints.maxWidth >= 900;
                  return Center(
                    child: SizedBox(
                      height: double.infinity,
                      width: double.infinity,
                      child: isTablet
                          ? _buildPageView(context, medicalSurveillance)
                          : RotatedBox(
                              quarterTurns: 1,
                              child:
                                  _buildPageView(context, medicalSurveillance),
                            ),
                    ),
                  );
                },
              ),
            ),
          ),
          floatingActionButton: fabs[_scrollFab],
        );
      },
    );
  }

  Widget _buildPageView(
    BuildContext context,
    List<MedicalSurveillanceTable>? medicalSurveillance,
  ) {
    return PageView(
      scrollDirection: Axis.vertical,
      onPageChanged: _changedScrollFab,
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(5),
          child: _buildChart(context),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: MedicalSurveillanceWidget(list: medicalSurveillance),
        ),
      ],
    );
  }

  Widget _buildChart(BuildContext context) {
    return BlocBuilder<ChartBloc, chartStates.ChartState>(
      builder: (BuildContext context, chartStates.ChartState state) {
        return state.when(
          initial: () => const CircularProgressIndicator(),
          loading: () => const CircularProgressIndicator(),
          loaded: (data, item) => MainChart(
            Data.createSampleData(data),
            item,
          ),
          error: (error) => Center(
            child: Text(
              error,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      },
    );
  }

  //Dialog de Dilataciones cervicales
  Future<DateTime?> _showCreateCervicalDilation(
    BuildContext mainContext,
  ) async {
    final timeController = TextEditingController();
    final cervicalDilationController = TextEditingController();
    bool remOrRam = false;
    final today = DateTime.now();
    timeController.text = DateFormat('HH:mm:ss').format(today);
    final formKey = GlobalKey<FormState>();
    return await showDialog<DateTime?>(
      context: mainContext,
      builder: (BuildContext context) => StatefulBuilder(
        builder: (context, setState) => SimpleDialog(
          title: const Text('Nueva dilatacion cervical'),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: cervicalDilationController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Dilatacion Cervical',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese una dilatacion cervical correcta';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  DateTimePickerField(dateTimeController: timeController),
                  SwitchListTile(
                    title: const Text('Ram O Rem'),
                    value: remOrRam,
                    onChanged: (value) => setState(() => remOrRam = value),
                  ),
                  _buildDialogActions(
                    context,
                    () => _saveCervicalDilation(
                      mainContext,
                      cervicalDilationController,
                      DateFormat('dd/MM/yyyy HH:mm').parse(timeController.text),
                      remOrRam,
                      context,
                      formKey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _saveCervicalDilation(
    BuildContext mainContext,
    TextEditingController valueController,
    DateTime? selectedDateTime,
    bool remOrRam,
    BuildContext dialogContext,
    GlobalKey<FormState> formKey,
  ) {
    if (formKey.currentState!.validate()) {
      final partographBloc = mainContext.read<PartographBloc>();

      final partographId = (partographBloc.state is Loaded)
          ? (partographBloc.state as Loaded).partograph.partographId
          : '';

      final double? dilationValue = double.tryParse(valueController.text);
      final DateTime dilationHour = selectedDateTime!;
      final bool dilationRemOrRam = remOrRam;

      partographBloc.add(
        SaveCervicalDilation(
          partographId: partographId!,
          value: dilationValue!,
          hour: dilationHour,
          remOrRam: dilationRemOrRam,
        ),
      );
      Navigator.pop(dialogContext);
    }
  }

  Future<DateTime?> _showPresentationPosition(
    BuildContext mainContext,
  ) async {
    final timeController = TextEditingController();
    Position? selectedPosition;
    HodgePlane? selectedHodgePlane;
    final today = DateTime.now();
    timeController.text = DateFormat('HH:mm:ss').format(today);
    final formKey = GlobalKey<FormState>();

    final catalog = mainContext.read<CatalogCubit>().state;
    selectedPosition = catalog.positionCatalog.first;
    selectedHodgePlane = catalog.hodgePlanesCatalog.first;

    return await showDialog<DateTime?>(
      context: mainContext,
      builder: (BuildContext context) => StatefulBuilder(
        builder: (context, setState) => SimpleDialog(
          title: const Text('Nueva Presentación (Plano Hodge)'),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  DynamicDropdownButton<Position>(
                    labelText: 'Posición',
                    list: catalog.positionCatalog,
                    onValueChanged: (Position position) {
                      setState(() {
                        selectedPosition = position;
                      });
                    },
                    displayField: (Position position) => position.description,
                    initialValue: selectedPosition,
                  ),
                  const SizedBox(height: 16),
                  DynamicDropdownButton<HodgePlane>(
                    labelText: 'Plano de Hodge',
                    list: catalog.hodgePlanesCatalog,
                    onValueChanged: (HodgePlane hodgePlane) {
                      setState(() {
                        selectedHodgePlane = hodgePlane;
                      });
                    },
                    displayField: (HodgePlane hodgePlane) =>
                        hodgePlane.description,
                    initialValue: selectedHodgePlane,
                  ),
                  const SizedBox(height: 16),
                  DateTimePickerField(dateTimeController: timeController),
                  const SizedBox(height: 20),
                  _buildDialogActions(
                    context,
                    () => _savePresentationPosition(
                      mainContext,
                      selectedHodgePlane,
                      selectedPosition,
                      DateFormat('dd/MM/yyyy HH:mm').parse(timeController.text),
                      context,
                      formKey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _savePresentationPosition(
    BuildContext mainContext,
    HodgePlane? selectedHodgePlane,
    Position? selectedPosition,
    DateTime? selectedDateTime,
    BuildContext dialogContext,
    GlobalKey<FormState> formKey,
  ) {
    if (selectedHodgePlane != null &&
        selectedPosition != null &&
        selectedDateTime != null) {
      final partographBloc = mainContext.read<PartographBloc>();

      final partographId = (partographBloc.state is Loaded)
          ? (partographBloc.state as Loaded).partograph.partographId
          : '';

      partographBloc.add(
        CreatePresentationPositionVariety(
          partographId: partographId!,
          hodgePlane: selectedHodgePlane.id,
          position: selectedPosition.id,
          time: selectedDateTime,
        ),
      );

      Navigator.pop(dialogContext);
    }
  }
  //Dialog de Tabla

  Future<void> _showCreateItemTable(BuildContext mainContext) {
    // Copiamos el estado y la lógica de MedicalSurveillanceDialog
    final formKey = GlobalKey<FormState>();
    final TextEditingController timeController = TextEditingController();

    final ValueNotifier<String> arterialPressureValue = ValueNotifier('');
    final ValueNotifier<String> maternalPulseValue = ValueNotifier('');
    final ValueNotifier<String> fetalHeartRateValue = ValueNotifier('');
    final ValueNotifier<String> contractionsDurationValue = ValueNotifier('');

    String maternalPositionValue = '';
    String frequencyContractions = '';
    String pain = '';

    Widget buildFormContent(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DateTimePickerField(dateTimeController: timeController),
              const SizedBox(height: 20),
              _buildDropdownButton(
                labelText: 'Posición Materna',
                items: const [
                  'Lat. Derecho',
                  'Lat. Izquierdo',
                  'Dorsal',
                  'Semisentada',
                  'Sentada',
                  'Parada o Caminando',
                ],
                initialValue: maternalPositionValue,
                onChanged: (value) => maternalPositionValue = value,
              ),
              const SizedBox(height: 16),
              ArterialPressureWidget(
                label: 'Tensión Arterial',
                initialValue: arterialPressureValue.value,
                onChanged: (value) => arterialPressureValue.value = value,
              ),
              const SizedBox(height: 16),
              FormElementWidget(
                label: 'Pulso Materno',
                initialValue: maternalPulseValue.value,
                onChanged: (value) => maternalPulseValue.value = value,
              ),
              const SizedBox(height: 16),
              FormElementWidget(
                label: 'Frecuencia cardiaca fetal',
                initialValue: fetalHeartRateValue.value,
                onChanged: (value) => fetalHeartRateValue.value = value,
              ),
              const SizedBox(height: 16),
              FormElementWidget(
                label: 'Duración Contracciones',
                initialValue: contractionsDurationValue.value,
                onChanged: (value) => contractionsDurationValue.value = value,
              ),
              const SizedBox(height: 16),
              _buildTextField(
                label: 'Frec. Contracciones',
                maxLength: 2,
                initialValue: frequencyContractions,
                onChanged: (value) => frequencyContractions = value,
              ),
              const SizedBox(height: 16),
              UnifiedDropdownWidget(
                locationValues: const ['Sacro', 'Suprapúbico'],
                intensityValues: const ['Débil', 'Normal', 'Fuerte'],
                initialValue: pain,
                onValueChanged: (value) => pain = value,
              ),
              const SizedBox(height: 20),
              _buildDialogActions(
                context,
                () => _saveItemTable(
                  mainContext,
                  maternalPositionValue,
                  arterialPressureValue.value,
                  maternalPulseValue.value,
                  fetalHeartRateValue.value,
                  contractionsDurationValue.value,
                  frequencyContractions,
                  DateFormat('dd/MM/yyyy HH:mm').parse(timeController.text),
                  pain,
                  context,
                  formKey,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return showDialog<void>(
      context: mainContext,
      builder: (BuildContext context) => StatefulBuilder(
        builder: (context, setState) => SimpleDialog(
          title: const Text('Creacion elemento tabla'),
          children: [
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: buildFormContent(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _saveItemTable(
    BuildContext mainContext,
    String maternalPositionValue,
    String arterialPressureValue,
    String maternalPulseValue,
    String fetalHeartRateValue,
    String contractionsDurationValue,
    String frequencyContractions,
    DateTime selectedDateTime,
    String pain,
    BuildContext dialogContext,
    GlobalKey<FormState> formKey,
  ) {
    if (formKey.currentState!.validate()) {
      final partographBloc = mainContext.read<PartographBloc>();

      final partographId = (partographBloc.state is Loaded)
          ? (partographBloc.state as Loaded).partograph.partographId
          : '';

      final event = CreateMedicalSurveillance(
        partographId: partographId!,
        letter: '',
        maternalPosition: maternalPositionValue,
        arterialPressure: arterialPressureValue,
        maternalPulse: maternalPulseValue,
        fetalHeartRate: fetalHeartRateValue,
        contractionsDuration: contractionsDurationValue,
        frequencyContractions: frequencyContractions,
        pain: pain,
        time: selectedDateTime,
      );

      partographBloc.add(event);
      Navigator.pop(dialogContext);
    }
  }

  Widget _buildDialogActions(
    BuildContext context,
    VoidCallback callback,
  ) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: callback,
            child: const Text('Aceptar'),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownButton({
    required String labelText,
    required List<String> items,
    required ValueChanged<String> onChanged,
    String? initialValue,
  }) {
    return CustomDropdownButton(
      list: items,
      labelText: labelText,
      onValueChanged: onChanged,
      initialValue: initialValue,
    );
  }

  Widget _buildTextField({
    required String label,
    required int maxLength,
    required ValueChanged<String> onChanged,
    String? initialValue,
  }) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
      ),
      initialValue: initialValue,
      maxLength: maxLength,
      validator: (value) =>
          value == null || value.isEmpty ? 'Por favor, ingrese un dato' : null,
      onChanged: onChanged,
    );
  }
}
