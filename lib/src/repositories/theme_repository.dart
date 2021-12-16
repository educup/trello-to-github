import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:trello_to_github/src/utils/failure.dart';

@injectable
class ThemeRepository {
  const ThemeRepository(@Named('theme') this.box);

  final Box<int> box;

  ThemeMode getThemeMode() {
    switch (box.get('mode')) {
      case 1:
        return ThemeMode.light;
      case 2:
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  Future<Either<Failure, Unit>> setThemeMode(ThemeMode themeMode) async {
    await box.put('mode', themeMode.index);
    return const Right(unit);
  }
}
