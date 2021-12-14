import 'package:json_annotation/json_annotation.dart';

part 'trello_card_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TrelloCardModel {
  const TrelloCardModel({
    required this.id,
    required this.closed,
    required this.desc,
    required this.idLabels,
    required this.idList,
    required this.name,
    required this.isTemplate,
    required this.idChecklists,
    required this.idMembers,
    required this.attachments,
  });

  final String id;
  final bool closed;
  final String desc;
  final List<String> idLabels;
  final String idList;
  final String name;
  final bool isTemplate;
  final List<String> idChecklists;
  final List<String> idMembers;
  final List<dynamic> attachments;

  TrelloCardModel copyWith({
    String? id,
    bool? closed,
    String? desc,
    List<String>? idLabels,
    String? idList,
    String? name,
    bool? isTemplate,
    List<String>? idChecklists,
    List<String>? idMembers,
    List<dynamic>? attachments,
  }) =>
      TrelloCardModel(
        id: id ?? this.id,
        closed: closed ?? this.closed,
        desc: desc ?? this.desc,
        idLabels: idLabels ?? this.idLabels,
        idList: idList ?? this.idList,
        name: name ?? this.name,
        isTemplate: isTemplate ?? this.isTemplate,
        idChecklists: idChecklists ?? this.idChecklists,
        idMembers: idMembers ?? this.idMembers,
        attachments: attachments ?? this.attachments,
      );

  static TrelloCardModel fromJson(Map<String, dynamic> json) =>
      _$TrelloCardModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrelloCardModelToJson(this);
}
