import 'package:birthflow_movil/src/domain/auth/entities/user.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/partograph/entities/partograph_list.dart';
import 'package:birthflow_movil/src/providers/catalog_cubit.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/states/authentication_state.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/states_events/partographs_state.dart';
import 'package:birthflow_movil/src/ui/home/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPartographsBloc extends Mock implements PartographsBloc {}

class MockAuthenticationBloc extends Mock implements AuthenticationBloc {}

void main() {
  late PartographsBloc mockPartographsBloc;
  late AuthenticationBloc mockAuthBloc;

  setUp(() {
    mockPartographsBloc = MockPartographsBloc();
    mockAuthBloc = MockAuthenticationBloc();

    when(() => mockPartographsBloc.stream).thenAnswer(
      (_) => const Stream<PartographsState>.empty(),
    );
    when(() => mockAuthBloc.stream).thenAnswer(
      (_) => const Stream<AuthenticationState>.empty(),
    );
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
  });

  Widget createWidgetUnderTest(PartographsState state) {
    when(() => mockPartographsBloc.state).thenReturn(state);

    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<PartographsBloc>.value(value: mockPartographsBloc),
          BlocProvider<AuthenticationBloc>.value(value: mockAuthBloc),
          BlocProvider<CatalogCubit>(
            create: (_) => CatalogCubit(Catalog(
                hodgePlanesCatalog: [],
                positionCatalog: [],
                workTimeItemsCatalog: [],
                workTimeCatalog: [],
                filterCatalog: [],
                activityCatalog: [],
                hourFilterCatalog: [],
                permissionTypeCatalog: [])), // o un mock
          ),
        ],
        child: HomeScreen(),
      ),
    );
  }

  testWidgets('H1: Renderiza título y un partograma en estado Loaded',
      (tester) async {
    final partograms = [
      PartographList(
          userId: 'AIT42FR12YU2NFADOT12',
          partographId: '1',
          name: 'Partograma A',
          recordName: 'EXP001',
          date: DateTime.now(),
          createdAt: DateTime.now(),
          updateAt: DateTime.now(),
          set: true,
          silenced: false,
          accessType: 1,
          isAchived: false,
          favorite: false,
          createdBy: 'test-user',
          observation: '',
          stateId: 1)
    ];

    await tester
        .pumpWidget(createWidgetUnderTest(Loaded(partograms, 'Cargado')));

    expect(find.text('Partogramas'), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget); // FAB
    expect(find.textContaining('Partograma A'), findsOneWidget);
  });

  testWidgets('H2: Renderiza mensaje de lista vacía', (tester) async {
    await tester.pumpWidget(createWidgetUnderTest(const Empty()));

    expect(find.text('No hay datos'), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
  });

  testWidgets('H3: Renderiza mensaje de error', (tester) async {
    await tester
        .pumpWidget(createWidgetUnderTest(const Error('Error de conexión')));

    expect(find.text('Error de conexión'), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
  });

  testWidgets('H4: FAB de nuevo partograma está presente', (tester) async {
    await tester.pumpWidget(createWidgetUnderTest(const Empty()));

    final fab = find.byTooltip('Nuevo partograma');
    expect(fab, findsOneWidget);
  });
}
