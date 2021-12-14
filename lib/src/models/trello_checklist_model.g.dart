// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trello_checklist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrelloChecklistModel _$TrelloChecklistModelFromJson(
        Map<String, dynamic> json) =>
    TrelloChecklistModel(
      id: json['id'] as String,
      name: json['name'] as String,
      idCard: json['idCard'] as String,
      checkItems: (json['checkItems'] as List<dynamic>)
          .map((e) => TrelloCheckItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TrelloChecklistModelToJson(
        TrelloChecklistModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'idCard': instance.idCard,
      'checkItems': instance.checkItems.map((e) => e.toJson()).toList(),
    };
