import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:trello_to_github/src/routes.dart';
import 'package:trello_to_github/src/utils/custom_scroll_behavior.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BeamerProvider(
      routerDelegate: Routes.routerDelegate,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        onGenerateTitle: (ctx) => 'Trello to GitHub',
        themeMode: ThemeMode.dark,
        scrollBehavior: CustomScrollBehavior(),
        backButtonDispatcher: Routes.backButtonDispatcher,
        routerDelegate: Routes.routerDelegate,
        routeInformationParser: Routes.routeInformationParser,
        builder: (context, child) => child ?? const SizedBox.shrink(),
      ),
    );
  }
}
