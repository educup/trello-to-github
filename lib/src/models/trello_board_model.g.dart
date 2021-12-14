// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trello_board_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrelloBoardModel _$TrelloBoardModelFromJson(Map<String, dynamic> json) =>
    TrelloBoardModel(
      id: json['id'] as String,
      name: json['name'] as String,
      cards: (json['cards'] as List<dynamic>)
          .map((e) => TrelloCardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      labels: (json['labels'] as List<dynamic>)
          .map((e) => TrelloLabelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lists: (json['lists'] as List<dynamic>)
          .map((e) => TrelloListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      members: (json['members'] as List<dynamic>)
          .map((e) => TrelloMemberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      checklists: (json['checklists'] as List<dynamic>)
          .map((e) => TrelloChecklistModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TrelloBoardModelToJson(TrelloBoardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cards': instance.cards.map((e) => e.toJson()).toList(),
      'labels': instance.labels.map((e) => e.toJson()).toList(),
      'lists': instance.lists.map((e) => e.toJson()).toList(),
      'members': instance.members.map((e) => e.toJson()).toList(),
      'checklists': instance.checklists.map((e) => e.toJson()).toList(),
    };
