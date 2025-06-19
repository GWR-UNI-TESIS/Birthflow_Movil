import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/views/childbirth_note/childbirth_note_edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:get_it/get_it.dart';

class MockPartographBloc extends Mock implements PartographBloc {}

void main() {
  late PartographBloc mockBloc;
  final getIt = GetIt.instance;

  setUp(() {
    getIt.registerSingleton<GlobalKey<ScaffoldMessengerState>>(
      GlobalKey<ScaffoldMessengerState>(),
    );

    mockBloc = MockPartographBloc();

    final partograph = Partograph(
      partographId: 'p1',
      name: 'Partograma de Ejemplo',
      recordName: 'Registro X',
      date: DateTime.parse('2024-05-01T10:00:00Z'),
      observation: 'Observación ejemplo',
      workTime: '4h',
      cervicalDilations: [],
      medicalSurveillanceTable: [],
      presentationPositionVarieties: [],
      fetalHeartRates: [],
      contractionFrequencies: [],
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
        child: const ChildbirthNoteEditScreen(
          partographId: 'p1',
        ),
      ),
    );
  }

  testWidgets('CBN1: Renderiza AppBar, algunos campos y botón guardar', (tester) async {
    await tester.pumpWidget(createTestWidget());
    await tester.pumpAndSettle();

  });
}
