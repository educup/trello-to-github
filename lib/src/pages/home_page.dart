import 'dart:developer';

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:trello_to_github/src/repositories/trello_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static BeamPage getPage(BuildContext context) {
    return const BeamPage(
      key: ValueKey('home'),
      title: 'Trello to GitHub',
      type: BeamPageType.noTransition,
      child: HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trello to GitHub'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Upload Trello file'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final board = await TrelloRepository().getTrelloBoardFromFile();
          if (board == null) {
            log('No board found');
            return;
          }
          log(board.name);
        },
        tooltip: 'Upload',
        child: const Icon(Icons.upload_file),
      ),
    );
  }
}
