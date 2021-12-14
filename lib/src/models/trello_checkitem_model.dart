import 'package:json_annotation/json_annotation.dart';

part 'trello_checkitem_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TrelloCheckItemModel {
  const TrelloCheckItemModel({
    required this.state,
    required this.id,
    required this.name,
  });

  final String state;
  final String id;
  final String name;

  TrelloCheckItemModel copyWith({
    String? state,
    String? id,
    String? name,
  }) =>
      TrelloCheckItemModel(
        state: state ?? this.state,
        id: id ?? this.id,
        name: name ?? this.name,
      );

  static TrelloCheckItemModel fromJson(Map<String, dynamic> json) =>
      _$TrelloCheckItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrelloCheckItemModelToJson(this);
}
