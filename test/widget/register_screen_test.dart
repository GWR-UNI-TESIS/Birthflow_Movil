import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/events/authentication_event.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/states/authentication_state.dart';
import 'package:birthflow_movil/src/ui/auth/views/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthenticationBloc extends Mock implements AuthenticationBloc {}

void main() {
  late AuthenticationBloc mockBloc;

  setUp(() {
    mockBloc = MockAuthenticationBloc();
    when(() => mockBloc.state).thenReturn(const Unauthenticated());
    when(() => mockBloc.stream).thenAnswer(
      (_) => Stream<AuthenticationState>.value(const Unauthenticated()),
    );
  });

  Widget createTestWidget() {
    return MaterialApp(
      home: BlocProvider<AuthenticationBloc>.value(
        value: mockBloc,
        child: const RegisterScreen(),
      ),
    );
  }

  testWidgets('Renderiza los campos de registro y botón', (tester) async {
    await tester.pumpWidget(createTestWidget());

    expect(find.text('Nombres'), findsOneWidget);
    expect(find.text('Apellidos'), findsOneWidget);
    expect(find.text('Nombre de Usuario'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Celular'), findsOneWidget);
    expect(find.text('Enviar Solicitud de Registro'), findsOneWidget);
  });

  testWidgets('Muestra errores si los campos están vacíos', (tester) async {
    await tester.pumpWidget(createTestWidget());

    await tester.tap(find.text('Enviar Solicitud de Registro'));
    await tester.pump();

    expect(find.textContaining('Por favor ingrese'), findsNWidgets(4));
    expect(find.text('Por favor ingrese un email'), findsOneWidget);
  });

  testWidgets('Muestra error si el email es inválido', (tester) async {
    await tester.pumpWidget(createTestWidget());

    await tester.enterText(find.byType(TextFormField).at(3), 'correo-invalido');

    await tester.tap(find.text('Enviar Solicitud de Registro'));
    await tester.pump();

    expect(find.text('Ingrese un email válido'), findsOneWidget);
  });

  testWidgets('Envía evento Register si todos los campos son válidos',
      (tester) async {
    await tester.pumpWidget(createTestWidget());

    await tester.enterText(find.byType(TextFormField).at(0), 'Juan');
    await tester.enterText(find.byType(TextFormField).at(1), 'Pérez');
    await tester.enterText(find.byType(TextFormField).at(2), 'juan123');
    await tester.enterText(find.byType(TextFormField).at(3), 'juan@test.com');
    await tester.enterText(find.byType(TextFormField).at(4), '88888888');

    await tester.tap(find.text('Enviar Solicitud de Registro'));
    await tester.pump();

    verify(() => mockBloc.add(
          const Register(
            id: 0,
            nombres: 'Juan',
            apellidos: 'Pérez',
            nombreUsuario: 'juan123',
            email: 'juan@test.com',
            phoneNumber: '88888888',
          ),
        )).called(1);
  });
}
