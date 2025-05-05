import 'package:birthflow_movil/src/ui/configuration/screens/configuration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/states/authentication_state.dart';
import 'package:birthflow_movil/src/domain/auth/entities/user.dart';

class MockAuthenticationBloc extends Mock implements AuthenticationBloc {}

void main() {
  late AuthenticationBloc mockAuthBloc;

  setUp(() {
    mockAuthBloc = MockAuthenticationBloc();
    when(() => mockAuthBloc.state).thenReturn(
       Authenticated(
        response: User(
          id: 'test-user',
          email: 'email@gmail.com',
          userName: 'Test',
          name: 'test',
          secondName: 'test',
          phoneNumber: 83811815,
        ),
        message: 'OK',
        isPasswordTemporal: false,
      ),
    );
    when(() => mockAuthBloc.stream).thenAnswer(
      (_) => Stream<AuthenticationState>.value(
         Authenticated(
          response: User(
          id: 'test-user',
          email: 'email@gmail.com',
          userName: 'Test',
          name: 'test',
          secondName: 'test',
          phoneNumber: 83811815,
        ),
          message: 'OK',
          isPasswordTemporal: false,
        ),
      ),
    );
  });

  testWidgets('Renderiza correctamente los elementos clave en ConfigurationScreen', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<AuthenticationBloc>.value(
          value: mockAuthBloc,
          child: ConfigurationScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Configuración'), findsOneWidget);
    expect(find.text('Cambio de Contraseña'), findsOneWidget);
    expect(find.text('Recibir notificaciones en este dispositivo'), findsOneWidget);
  });
}
