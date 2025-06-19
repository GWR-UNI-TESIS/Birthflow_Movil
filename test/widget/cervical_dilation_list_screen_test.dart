import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/views/cervical_dilation/cervical_dilation_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPartographBloc extends Mock implements PartographBloc {}

void main() {
  late PartographBloc mockBloc;

  setUp(() {
    mockBloc = MockPartographBloc();

    final partograph = Partograph(
      partographId: 'p1',
      name: 'Partograma de prueba',
      recordName: 'Registro 001',
      date: DateTime.parse('2024-05-01T08:00:00Z'),
      observation: 'Observación de ejemplo',
      workTime: '2h 30min',
      cervicalDilations: [],
      medicalSurveillanceTable: [],
      presentationPositionVarieties: [],
      fetalHeartRates: [],
      contractionFrequencies: [],
    );

    when(() => mockBloc.state).thenReturn(Loaded(partograph: partograph, message: ''));
    when(() => mockBloc.stream).thenAnswer((_) => Stream.value(Loaded(partograph: partograph, message: '')));
  });

  Widget createTestWidget() {
    return MaterialApp(
      home: BlocProvider<PartographBloc>.value(
        value: mockBloc,
        child: const CervicalDilationListScreen(partographId: 'p1'),
      ),
    );
  }

  testWidgets('CDL1: Renderiza AppBar y botón flotante', (tester) async {
    await tester.pumpWidget(createTestWidget());
    await tester.pumpAndSettle();

    expect(find.text('Dilataciones Cervicales'), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}
