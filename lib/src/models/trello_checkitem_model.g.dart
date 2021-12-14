// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trello_checkitem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrelloCheckItemModel _$TrelloCheckItemModelFromJson(
        Map<String, dynamic> json) =>
    TrelloCheckItemModel(
      state: json['state'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$TrelloCheckItemModelToJson(
        TrelloCheckItemModel instance) =>
    <String, dynamic>{
      'state': instance.state,
      'id': instance.id,
      'name': instance.name,
    };
