// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trello_label_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrelloLabelModel _$TrelloLabelModelFromJson(Map<String, dynamic> json) =>
    TrelloLabelModel(
      id: json['id'] as String,
      idBoard: json['idBoard'] as String,
      name: json['name'] as String,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$TrelloLabelModelToJson(TrelloLabelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idBoard': instance.idBoard,
      'name': instance.name,
      'color': instance.color,
    };
