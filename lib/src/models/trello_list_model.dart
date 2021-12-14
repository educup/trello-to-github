import 'package:json_annotation/json_annotation.dart';

part 'trello_list_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TrelloListModel {
  const TrelloListModel({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  TrelloListModel copyWith({
    String? id,
    String? name,
  }) =>
      TrelloListModel(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  static TrelloListModel fromJson(Map<String, dynamic> json) =>
      _$TrelloListModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrelloListModelToJson(this);
}
