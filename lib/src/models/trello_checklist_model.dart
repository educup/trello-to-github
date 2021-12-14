import 'package:json_annotation/json_annotation.dart';
import 'package:trello_to_github/src/models/trello_checkitem_model.dart';

part 'trello_checklist_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TrelloChecklistModel {
  TrelloChecklistModel({
    required this.id,
    required this.name,
    required this.idCard,
    required this.checkItems,
  });

  final String id;
  final String name;
  final String idCard;
  final List<TrelloCheckItemModel> checkItems;

  TrelloChecklistModel copyWith({
    String? id,
    String? name,
    String? idCard,
    List<TrelloCheckItemModel>? checkItems,
  }) =>
      TrelloChecklistModel(
        id: id ?? this.id,
        name: name ?? this.name,
        idCard: idCard ?? this.idCard,
        checkItems: checkItems ?? this.checkItems,
      );

  static TrelloChecklistModel fromJson(Map<String, dynamic> json) =>
      _$TrelloChecklistModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrelloChecklistModelToJson(this);
}
