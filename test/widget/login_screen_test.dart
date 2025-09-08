import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/events/authentication_event.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/states/authentication_state.dart';
import 'package:birthflow_movil/src/ui/auth/views/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthenticationBloc extends Mock implements AuthenticationBloc {}

void main() {
  late AuthenticationBloc mockAuthBloc;

  setUp(() {
    mockAuthBloc = MockAuthenticationBloc();

    when(() => mockAuthBloc.state).thenReturn(const Unauthenticated());
    when(() => mockAuthBloc.stream).thenAnswer(
      (_) => Stream<AuthenticationState>.value(const Unauthenticated()),
    );
  });
  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: BlocProvider<AuthenticationBloc>.value(
        value: mockAuthBloc,
        child: const LoginScreen(),
      ),
    );
  }

  testWidgets('Muestra campos de usuario y contraseña y botón', (tester) async {
    await tester.pumpWidget(createWidgetUnderTest());

    expect(find.byKey(const Key('username_field')), findsOneWidget);
    expect(find.byKey(const Key('password_field')), findsOneWidget);
    expect(find.byKey(const Key('login_button')), findsOneWidget);
  });

  testWidgets('Valida campos vacíos al presionar continuar', (tester) async {
    await tester.pumpWidget(createWidgetUnderTest());

    await tester.tap(find.byKey(const Key('login_button')));
    await tester.pump(); // Permite que se muestren los errores

    expect(find.text('Ingrese un usuario'), findsOneWidget);
    expect(find.text('Ingrese una contraseña'), findsOneWidget);
  });

  testWidgets('Envía evento LoggedIn al bloc con datos válidos',
      (tester) async {
    await tester.pumpWidget(createWidgetUnderTest());

    await tester.enterText(find.byKey(const Key('username_field')), 'usuario');
    await tester.enterText(find.byKey(const Key('password_field')), 'clave123');

    await tester.tap(find.byKey(const Key('login_button')));
    await tester.pump();

    verify(() => mockAuthBloc.add(
          const LoggedIn(username: 'usuario', password: 'clave123'),
        )).called(1);
  });

  testWidgets('Puede mostrar la contraseña al presionar icono de visibilidad',
      (tester) async {
    await tester.pumpWidget(createWidgetUnderTest());

    final passwordField = find.byKey(const Key('password_field'));
    expect(passwordField, findsOneWidget);

    // Busca el icono de "ojo cerrado"
    final iconButton = find.byIcon(Icons.visibility);
    expect(iconButton, findsOneWidget);

    await tester.tap(iconButton);
    await tester.pump();

    // Ahora debería mostrarse el icono de "ojo abierto"
    expect(find.byIcon(Icons.visibility_off), findsOneWidget);
  });
}
