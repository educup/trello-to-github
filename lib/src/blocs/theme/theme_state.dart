part of 'theme_bloc.dart';

class ThemeState {
  const ThemeState({
    required this.mode,
    required this.light,
    required this.dark,
  });

  final ThemeMode mode;
  final ThemeData light;
  final ThemeData dark;

  ThemeState copyWith({
    ThemeMode? mode,
    ThemeData? light,
    ThemeData? dark,
  }) =>
      ThemeState(
        mode: mode ?? this.mode,
        light: light ?? this.light,
        dark: dark ?? this.dark,
      );
}
