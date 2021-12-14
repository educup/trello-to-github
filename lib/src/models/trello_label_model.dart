import 'package:json_annotation/json_annotation.dart';

part 'trello_label_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TrelloLabelModel {
  const TrelloLabelModel({
    required this.id,
    required this.idBoard,
    required this.name,
    required this.color,
  });

  final String id;
  final String idBoard;
  final String name;
  final String color;

  TrelloLabelModel copyWith({
    String? id,
    String? idBoard,
    String? name,
    String? color,
  }) =>
      TrelloLabelModel(
        id: id ?? this.id,
        idBoard: idBoard ?? this.idBoard,
        name: name ?? this.name,
        color: color ?? this.color,
      );

  static TrelloLabelModel fromJson(Map<String, dynamic> json) =>
      _$TrelloLabelModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrelloLabelModelToJson(this);
}
