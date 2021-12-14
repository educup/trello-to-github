import 'package:json_annotation/json_annotation.dart';
import 'package:trello_to_github/src/models/trello_card_model.dart';
import 'package:trello_to_github/src/models/trello_checklist_model.dart';
import 'package:trello_to_github/src/models/trello_label_model.dart';
import 'package:trello_to_github/src/models/trello_list_model.dart';
import 'package:trello_to_github/src/models/trello_member_model.dart';

part 'trello_board_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TrelloBoardModel {
  const TrelloBoardModel({
    required this.id,
    required this.name,
    required this.cards,
    required this.labels,
    required this.lists,
    required this.members,
    required this.checklists,
  });

  final String id;
  final String name;
  final List<TrelloCardModel> cards;
  final List<TrelloLabelModel> labels;
  final List<TrelloListModel> lists;
  final List<TrelloMemberModel> members;
  final List<TrelloChecklistModel> checklists;

  TrelloBoardModel copyWith({
    String? id,
    String? name,
    List<TrelloCardModel>? cards,
    List<TrelloLabelModel>? labels,
    List<TrelloListModel>? lists,
    List<TrelloMemberModel>? members,
    List<TrelloChecklistModel>? checklists,
  }) =>
      TrelloBoardModel(
        id: id ?? this.id,
        name: name ?? this.name,
        cards: cards ?? this.cards,
        labels: labels ?? this.labels,
        lists: lists ?? this.lists,
        members: members ?? this.members,
        checklists: checklists ?? this.checklists,
      );

  static TrelloBoardModel fromJson(Map<String, dynamic> json) =>
      _$TrelloBoardModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrelloBoardModelToJson(this);
}
