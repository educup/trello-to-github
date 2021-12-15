import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trello_to_github/src/blocs/theme/theme_bloc.dart';
import 'package:trello_to_github/src/i18n/i18n.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static BeamPage getPage(BuildContext context) {
    return BeamPage(
      key: const ValueKey('home'),
      title: Messages.of(context)!.appName,
      type: BeamPageType.noTransition,
      child: const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(
          Messages.of(context)!.appName,
          style: Theme.of(context).textTheme.headline6,
        ),
        iconTheme: Theme.of(context).iconTheme,
        centerTitle: true,
      ),
      drawer: const _Drawer(),
      body: _Body(),
    );
  }
}

class _Drawer extends StatelessWidget {
  const _Drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Text(
                      Messages.of(context)!.appName,
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: BlocBuilder<ThemeBloc, ThemeState>(
                    builder: (context, state) {
                      return IconButton(
                        icon: Icon(
                          state.mode == ThemeMode.light
                              ? Icons.dark_mode_outlined
                              : state.mode == ThemeMode.dark
                                  ? Icons.light_mode_outlined
                                  : Icons.brightness_auto,
                        ),
                        onPressed: () {
                          final i = state.mode.index == 1 ? 2 : 1;
                          context
                              .read<ThemeBloc>()
                              .add(ChangeThemeEvent(mode: ThemeMode.values[i]));
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  _Body({
    Key? key,
  }) : super(key: key);

  final Key queryWidgetKey = const Key('queryWidgetKey');
  final queryController = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        Messages.of(context)!.appName,
      ),
    );
  }
}
