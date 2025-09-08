import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/views/contraction_frecuency/contraction_frequency_create_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPartographBloc extends Mock implements PartographBloc {}

void main() {
  late PartographBloc mockBloc;

  setUp(() {
    mockBloc = MockPartographBloc();
    when(() => mockBloc.state).thenReturn(const Initial());
    when(() => mockBloc.stream).thenAnswer((_) => Stream.value(const Initial()));
  });

  Widget createTestWidget() {
    return MaterialApp(
      home: BlocProvider<PartographBloc>.value(
        value: mockBloc,
        child: const ContractionFrequencyCreateScreen(partographId: 'p1'),
      ),
    );
  }

  testWidgets('CFC1: Renderiza título, campo y botón en ContractionFrequencyCreateScreen', (tester) async {
    await tester.pumpWidget(createTestWidget());
    await tester.pumpAndSettle();

    expect(find.text('Crear Frecuencia de Contracciones'), findsOneWidget);
    expect(find.widgetWithText(TextFormField, 'Frecuencia de Contracciones'), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, 'Guardar'), findsOneWidget);
  });
}
