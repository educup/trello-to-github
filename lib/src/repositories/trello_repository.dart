import 'dart:convert';
import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:trello_to_github/src/models/trello_board_model.dart';

class TrelloRepository {
  Future<TrelloBoardModel?> getTrelloBoardFromFile() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['json'],
      );
      if (result == null) {
        return null;
      }
      final fileBytes = result.files.first.bytes;
      if (fileBytes == null) {
        return null;
      }
      final content = String.fromCharCodes(fileBytes);
      final json = jsonDecode(content);
      if (json is Map<String, dynamic>) {
        return TrelloBoardModel.fromJson(json);
      }
    } catch (e) {
      log('Exception in getTrelloBoardFromFile: $e');
    }
    return null;
  }
}
