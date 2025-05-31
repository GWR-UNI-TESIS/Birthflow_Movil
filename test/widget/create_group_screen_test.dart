import 'package:birthflow_movil/src/ui/groups/bloc/bloc.dart';
import 'package:birthflow_movil/src/ui/groups/bloc/states/groups_state.dart';
import 'package:birthflow_movil/src/ui/groups/create_group_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';


class MockGroupsBloc extends Mock implements GroupsBloc {}

void main() {
  late GroupsBloc mockGroupsBloc;

  setUp(() {
    mockGroupsBloc = MockGroupsBloc();
    when(() => mockGroupsBloc.state).thenReturn(const GroupsState.loaded([]));
    when(() => mockGroupsBloc.stream).thenAnswer((_) => Stream.value(const GroupsState.loaded([])));

  });

  Widget createTestWidget() {
    return MaterialApp(
      home: BlocProvider<GroupsBloc>.value(
        value: mockGroupsBloc,
        child: CreateGroupView(),
      ),
    );
  }

  testWidgets('G1: Renderiza título, campo y botón en CreateGroupView', (tester) async {
    await tester.pumpWidget(createTestWidget());
    await tester.pumpAndSettle();

    expect(find.text('Crear Grupo'), findsOneWidget);
    expect(find.widgetWithText(TextField, 'Nombre del Grupo'), findsOneWidget);
    expect(find.widgetWithText(FilledButton, 'Create'), findsOneWidget);
  });
}
