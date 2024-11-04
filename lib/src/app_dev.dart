import 'package:birthflow_movil/src/config/locator/locator.dart';
import 'package:birthflow_movil/src/config/router/app_router.dart';
import 'package:birthflow_movil/src/domain/catalog/entities/catalog.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/alert_curves_get_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_delete_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/cervical_dilation_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/medical_surveillance_create_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/medical_surveillance_update_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_list_usecase.dart';
import 'package:birthflow_movil/src/domain/partograph/usecases/partograph_get_usecase.dart';
import 'package:birthflow_movil/src/ui/auth/bloc/authentication_bloc.dart';
import 'package:birthflow_movil/src/ui/home/blocs/home/bloc.dart';
import 'package:birthflow_movil/src/ui/partograph/bloc/partograph/bloc.dart';
import 'package:birthflow_movil/src/ui/providers/catalog_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDev extends StatelessWidget {
  final Catalog catalog;

  const AppDev({required this.catalog, super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CatalogCubit(catalog),
        ),
        BlocProvider<AuthenticationBloc>(
          create: (_) => locator<AuthenticationBloc>(),
        ),
        BlocProvider(
          create: (context) => PartographsBloc(
            locator<PartographListGetUseCase>(),
          ),
        ),
        BlocProvider(
          create: (BuildContext context) => PartographBloc(
            locator<PartographGetUsecase>(),
            locator<CervicalDilationCreateUseCase>(),
            locator<CervicalDilationUpdateUseCase>(),
            locator<CervicalDilationDeleteUseCase>(),
            locator<AlertCurvesGetUseCase>(),
            locator<MedicalSurveillanceCreateUsecase>(),
            locator<MedicalSurveillanceUpdateUsecase>(),
          ),
        ),
      ],
      child: MaterialApp(
        home: AppEntry(),
      ),
    );
  }
}

class AppEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthenticationBloc>();
    final AppRouter appRouter = AppRouter(authBloc: authBloc);
    return MaterialApp.router(
      title: 'Birthflow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: appRouter.router,
    );
  }
}
