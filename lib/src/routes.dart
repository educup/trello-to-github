import 'dart:developer';

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:trello_to_github/src/pages/home_page.dart';

extension _BeamStateParams on BeamState {
  // bool contains(int index, String match) {
  //   if (uri.pathSegments.length <= index) {
  //     return false;
  //   }
  //   return uri.pathSegments[index] == match;
  // }

  // bool lenGreaterThan(int len) => uri.pathSegments.length > len;
}

class MainLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => ['/*'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      HomePage.getPage(context),
    ];
  }
}

class Routes {
  static final routerDelegate = BeamerDelegate(
    routeListener: _listener,
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        MainLocation(),
      ],
    ),
  );

  static void _listener(
    RouteInformation routeInformation,
    BeamerDelegate delegate,
  ) {
    log('BeamTo: ${routeInformation.location}');
  }

  static final routeInformationParser = BeamerParser();

  static final backButtonDispatcher = BeamerBackButtonDispatcher(
    delegate: routerDelegate,
    fallbackToBeamBack: false,
  );
}
