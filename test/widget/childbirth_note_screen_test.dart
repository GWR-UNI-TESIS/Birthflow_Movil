import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/views/childbirth_note/childbirth_note_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockPartographBloc extends Mock implements PartographBloc {}

void main() {
  late PartographBloc mockBloc;

  setUp(() {
    mockBloc = MockPartographBloc();

    final partograph = Partograph(
      partographId: 'p1',
      name: 'Ejemplo',
      recordName: 'Registro X',
      date: DateTime.now(),
      observation: 'Observación',
      workTime: '3h',
      cervicalDilations: [],
      medicalSurveillanceTable: [],
      presentationPositionVarieties: [],
      fetalHeartRates: [],
      contractionFrequencies: [],
      childbirthNote: null, // Simula que no hay nota
      partographState: null,
      curves: null,
    );

    when(() => mockBloc.state).thenReturn(Loaded(partograph: partograph, message: ''));
    when(() => mockBloc.stream).thenAnswer((_) => Stream.value(Loaded(partograph: partograph, message: '')));
  });

  Widget createTestWidget() {
    return MaterialApp(
      home: BlocProvider<PartographBloc>.value(
        value: mockBloc,
        child: ChildbirthNoteViewScreen(partographId: '123',),
      ),
    );
  }

  testWidgets('CBV1: Muestra texto y botón si no hay nota de parto', (tester) async {
    await tester.pumpWidget(createTestWidget());
    await tester.pumpAndSettle();

    expect(find.text('No se encontró una nota de parto.'), findsOneWidget);
    expect(find.text('Crear Nota de Parto'), findsOneWidget);
  });
}
