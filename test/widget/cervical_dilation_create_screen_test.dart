import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/state_events/partograph_state.dart';
import 'package:birthflow_movil/src/ui/partograph/views/cervical_dilation/cervical_dilation_create_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        child: const CervicalDilationCreateScreen(partographId: '123',),
      ),
    );
  }

  testWidgets('CD1: Renderiza AppBar, campo, switch y botón en CervicalDilationCreateScreen', (tester) async {
    await tester.pumpWidget(createTestWidget());
    await tester.pumpAndSettle();

    expect(find.text('Crear Dilatación Cervical'), findsOneWidget);
    expect(find.text('Valor de Dilatación'), findsOneWidget);
    expect(find.text('Ram O Rem'), findsOneWidget);
  });
}
