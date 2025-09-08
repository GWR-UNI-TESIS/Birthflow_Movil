import 'package:birthflow_movil/src/domain/auth/entities/user.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_create_usecase.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/states/authentication_state.dart';
import 'package:birthflow_movil/src/ui/home/blocs/create_partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/create_partograph/state_events/create_partograph_event.dart';
import 'package:birthflow_movil/src/ui/home/blocs/create_partograph/state_events/create_partograph_state.dart';
import 'package:birthflow_movil/src/ui/home/view/create_partograph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';


final locator = GetIt.instance;

class MockCreatePartographBloc extends Mock implements CreatePartographBloc {}

class MockAuthenticationBloc extends Mock implements AuthenticationBloc {}

class MockCreatePartographUseCase extends Mock
    implements CreatePartographUseCase {}

void main() {
  late CreatePartographBloc mockBloc;
  late AuthenticationBloc mockAuthBloc;
  late MockCreatePartographUseCase mockUseCase;

  setUpAll(() {
    registerFallbackValue(Save(
      partogramaId: '',
      name: '',
      recordName: '',
      date: DateTime.now(),
      observation: '',
      worktime: '',
      createBy: '',
    ));
  });

  setUp(() async {
    await locator.reset();

    mockBloc = MockCreatePartographBloc();
    mockAuthBloc = MockAuthenticationBloc();
    mockUseCase = MockCreatePartographUseCase();

    // Registrar el mock del use case en el locator
    locator.registerSingleton<CreatePartographUseCase>(mockUseCase);
    locator.registerLazySingleton<GlobalKey<ScaffoldMessengerState>>(
      () => GlobalKey<ScaffoldMessengerState>(),
    );

    when(() => mockBloc.state).thenReturn(const Initial());
    when(() => mockBloc.stream).thenAnswer((_) => const Stream.empty());

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
        message: 'Bienvenido',
        isPasswordTemporal: false,
      ),
    );

    when(() => mockAuthBloc.stream).thenAnswer((_) => const Stream.empty());
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [Locale('es', 'ES')],
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CreatePartographBloc>.value(value: mockBloc),
          BlocProvider<AuthenticationBloc>.value(value: mockAuthBloc),
        ],
        child: CreatePartographScreen(),
      ),
    );
  }

  testWidgets('C1: Renderiza campos principales y botón Siguiente',
      (tester) async {
    await tester.pumpWidget(createWidgetUnderTest());
    await tester.pumpAndSettle();

    expect(find.text('Nombre'), findsOneWidget);
    expect(find.text('Expediente'), findsOneWidget);
    expect(find.text('Fecha'), findsOneWidget);
    expect(find.text('Siguiente'), findsOneWidget);
  });

  testWidgets('C2: Cambia de pestaña al presionar Siguiente con datos válidos',
      (tester) async {
    await tester.pumpWidget(createWidgetUnderTest());

    await tester.enterText(find.byType(TextFormField).at(0), 'Paciente 1');
    await tester.enterText(find.byType(TextFormField).at(1), 'EXP123');
    await tester.enterText(find.byType(TextFormField).at(2), '2024-05-01');

    await tester.tap(find.text('Siguiente'));
    await tester.pumpAndSettle();
    
    expect(find.widgetWithText(FilledButton, 'Guardar'), findsOneWidget);

    expect(find.text('Construccion de la curva de alerta'), findsOneWidget);
  });

}
