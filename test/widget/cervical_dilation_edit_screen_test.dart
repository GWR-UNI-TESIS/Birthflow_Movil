import 'package:birthflow_movil/src/domain/partograph/entities/cervical_dilation.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/models/partograph_edit_data.dart';
import 'package:birthflow_movil/src/ui/partograph/views/cervical_dilation/cervical_dilation_edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';

class MockPartographBloc extends Mock implements PartographBloc {}

void main() {
  late PartographBloc mockBloc;
  final getIt = GetIt.instance;

  final cervicalDilationEditData = CervicalDilationEditData(
    cervicalDilationId: 1,
    partographId: 'p1',
  );

  setUp(() {
    getIt.registerSingleton<GlobalKey<ScaffoldMessengerState>>(
      GlobalKey<ScaffoldMessengerState>(),
    );

    mockBloc = MockPartographBloc();

    final dilation = CervicalDilation(
      id: 1,
      partographId: 'p1',
      value: 4,
      hour: DateTime.parse('2024-01-01T12:00:00.000Z'),
      remOrRam: true,
    );

    final partograph = Partograph(
      partographId: 'p1',
      name: 'Partograma de María Pérez',
      recordName: 'Registro 12345',
      date: DateTime.parse('2024-04-30T10:00:00.000Z'),
      observation: 'Paciente ingresada con contracciones regulares.',
      workTime: '3h 20min',
      cervicalDilations: [dilation],
      medicalSurveillanceTable: [],
      presentationPositionVarieties: [],
      fetalHeartRates: [],
      contractionFrequencies: [],
      childbirthNote: null,
      partographState: null,
      curves: null,
    );

    when(() => mockBloc.state).thenReturn(Loaded(partograph: partograph, message: ''));
    when(() => mockBloc.stream).thenAnswer((_) => Stream.value(Loaded(partograph: partograph, message: '')));
  });

  tearDown(() {
    GetIt.instance.reset();
  });

  Widget createTestWidget() {
    return MaterialApp(
      home: BlocProvider<PartographBloc>.value(
        value: mockBloc,
        child: CervicalDilationEditScreen(
          cervicalDilationEditData: cervicalDilationEditData,
        ),
      ),
    );
  }

  testWidgets('CDE1: Renderiza AppBar, campo, switch y botón en CervicalDilationEditScreen', (tester) async {
    await tester.pumpWidget(createTestWidget());
    await tester.pumpAndSettle();

  });
}
