import 'package:birthflow_movil/src/domain/partograph/entities/partograph.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/views/contraction_frecuency/contraction_frecuency_list_screen.dart';
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
      name: 'Ejemplo',
      recordName: 'Registro X',
      date: DateTime.now(),
      observation: 'Observación',
      workTime: '4h',
      cervicalDilations: [],
      medicalSurveillanceTable: [],
      presentationPositionVarieties: [],
      fetalHeartRates: [],
      contractionFrequencies: [], // lista vacía
    );

    when(() => mockBloc.state).thenReturn(Loaded(partograph: partograph, message: ''));
    when(() => mockBloc.stream).thenAnswer((_) => Stream.value(Loaded(partograph: partograph, message: '')));
  });

  Widget createTestWidget() {
    return MaterialApp(
      home: BlocProvider<PartographBloc>.value(
        value: mockBloc,
        child: ContractionFrequencyListScreen(partographId: 'p1'),
      ),
    );
  }

  testWidgets('CFL1: Renderiza AppBar y botón flotante en ContractionFrequencyListScreen', (tester) async {
    await tester.pumpWidget(createTestWidget());
    await tester.pumpAndSettle();

    expect(find.text('Frecuencias Contracciones'), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}
