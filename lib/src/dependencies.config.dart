// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter/material.dart' as _i6;
import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:trello_to_github/src/blocs/theme/theme_bloc.dart' as _i9;
import 'package:trello_to_github/src/dependencies.dart' as _i10;
import 'package:trello_to_github/src/repositories/theme_repository.dart' as _i8;
import 'package:trello_to_github/src/utils/app_bloc_observer.dart' as _i4;
import 'package:trello_to_github/src/utils/custom_scroll_behavior.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.BlocObserver>(() => _i4.AppBlocObserver());
  await gh.factoryAsync<_i5.Box<int>>(() => registerModule.themeBox,
      instanceName: 'theme', preResolve: true);
  gh.lazySingleton<_i6.ScrollBehavior>(() => _i7.CustomScrollBehavior());
  gh.factory<_i8.ThemeRepository>(
      () => _i8.ThemeRepository(get<_i5.Box<int>>(instanceName: 'theme')));
  gh.factory<_i9.ThemeBloc>(() => _i9.ThemeBloc(get<_i8.ThemeRepository>()));
  return get;
}

class _$RegisterModule extends _i10.RegisterModule {}
