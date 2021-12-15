import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:trello_to_github/src/dependencies.config.dart';

@InjectableInit(preferRelativeImports: false)
Future<void> configureDependencies() async => $initGetIt(GetIt.I);

@module
abstract class RegisterModule {
  Dio get dio => Dio()
    ..interceptors.add(
      PrettyDioLogger(
        logPrint: (l) => log(l.toString()),
        compact: false,
      ),
    );

  @Named('baseUrl')
  String get baseUrl {
    const defaultApiUrl = 'https://api.mesirve.app/client/v1/';
    return const String.fromEnvironment('ApiUrl', defaultValue: defaultApiUrl);
  }

  @Named('theme')
  @preResolve
  Future<Box<int>> get themeBox => Hive.openBox('theme');
}
