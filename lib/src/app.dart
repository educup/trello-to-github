import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:trello_to_github/src/blocs/theme/theme_bloc.dart';
import 'package:trello_to_github/src/i18n/i18n.dart';
import 'package:trello_to_github/src/routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BeamerProvider(
      routerDelegate: Routes.routerDelegate,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ThemeBloc>(create: (_) => GetIt.I()),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              onGenerateTitle: (context) => Messages.of(context)!.appName,
              theme: state.light,
              darkTheme: state.dark,
              themeMode: state.mode,
              localizationsDelegates: Messages.localizationsDelegates,
              supportedLocales: Messages.supportedLocales,
              locale: Messages.supportedLocales.first,
              scrollBehavior: GetIt.I(),
              backButtonDispatcher: Routes.backButtonDispatcher,
              routerDelegate: Routes.routerDelegate,
              routeInformationParser: Routes.routeInformationParser,
              builder: (context, child) => child ?? const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
