import 'dart:async';
import 'dart:developer';

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:trello_to_github/src/app.dart';
import 'package:trello_to_github/src/dependencies.dart';

Future<void> main() async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      Beamer.setPathUrlStrategy();
      await Hive.initFlutter();
      await configureDependencies();
      BlocOverrides.runZoned(
        () => runApp(App()),
        blocObserver: GetIt.I(),
      );
    },
    (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
    },
  );
}
