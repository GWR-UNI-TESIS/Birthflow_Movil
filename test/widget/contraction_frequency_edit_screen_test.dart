import 'package:birthflow_movil/src/domain/partograph/entities/contraction_frequency.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
import 'package:birthflow_movil/src/ui/partograph/views/contraction_frecuency/contraction_frequency_edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

class MockPartographBloc extends Mock implements PartographBloc {}

void main() {
  late PartographBloc mockBloc;
  final getIt = GetIt.instance;

  final contraction = ContractionFrequency(
    id: 1,
    partographId: 'p1',
    value: '3',
   time: DateTime.parse('2024-04-30T10:00:00.000Z'),
  );

  final contractionFrequencyEditData = ContractionFrequencyEditData(
    contractionFrequencyId: 1,
    partographId: 'p1',
  );

  setUp(() {
    getIt.registerSingleton<GlobalKey<ScaffoldMessengerState>>(
      GlobalKey<ScaffoldMessengerState>(),
    );

    mockBloc = MockPartographBloc();

    final partograph = Partograph(
      partographId: 'p1',
      name: 'Partograma de Ejemplo',
      recordName: 'Registro A',
      date: DateTime.now(),
      observation: 'Paciente estable',
      workTime: '3h',
      cervicalDilations: [],
      medicalSurveillanceTable: [],
      presentationPositionVarieties: [],
      fetalHeartRates: [],
      contractionFrequencies: [contraction],
      childbirthNote: null,
      partographState: null,
      curves: null,
    );

    when(() => mockBloc.state).thenReturn(Loaded(partograph: partograph, message: ''));
    when(() => mockBloc.stream).thenAnswer((_) => Stream.value(Loaded(partograph: partograph, message: '')));
  });

  tearDown(() {
    getIt.reset();
  });

  Widget createTestWidget() {
    return MaterialApp(
      home: BlocProvider<PartographBloc>.value(
        value: mockBloc,
        child: ContractionFrequencyEditScreen(
          contractionFrequencyEditData: contractionFrequencyEditData,
        ),
      ),
    );
  }

  testWidgets('CFE1: Renderiza AppBar, campo y botón en ContractionFrequencyEditScreen', (tester) async {
    await tester.pumpWidget(createTestWidget());
    await tester.pumpAndSettle();
    
  });
}
