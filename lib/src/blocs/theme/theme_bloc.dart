import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:trello_to_github/src/repositories/theme_repository.dart';

part 'theme_event.dart';
part 'theme_state.dart';

@injectable
class ThemeBloc extends Bloc<ChangeThemeEvent, ThemeState> {
  ThemeBloc(this.themeRepository)
      : super(
          ThemeState(
            mode: themeRepository.getThemeMode(),
            light: ThemeData.light(),
            dark: ThemeData.dark(),
          ),
        ) {
    on<ChangeThemeEvent>((event, emit) {
      themeRepository.setThemeMode(event.mode);
      emit(state.copyWith(mode: event.mode));
    });
  }

  final ThemeRepository themeRepository;
}
