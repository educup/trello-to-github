part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent {
  const ThemeEvent();
}

class ChangeThemeEvent extends ThemeEvent {
  const ChangeThemeEvent({required this.mode});

  final ThemeMode mode;
}
