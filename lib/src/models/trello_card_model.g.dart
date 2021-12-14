// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trello_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrelloCardModel _$TrelloCardModelFromJson(Map<String, dynamic> json) =>
    TrelloCardModel(
      id: json['id'] as String,
      closed: json['closed'] as bool,
      desc: json['desc'] as String,
      idLabels:
          (json['idLabels'] as List<dynamic>).map((e) => e as String).toList(),
      idList: json['idList'] as String,
      name: json['name'] as String,
      isTemplate: json['isTemplate'] as bool,
      idChecklists: (json['idChecklists'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      idMembers:
          (json['idMembers'] as List<dynamic>).map((e) => e as String).toList(),
      attachments: json['attachments'] as List<dynamic>,
    );

Map<String, dynamic> _$TrelloCardModelToJson(TrelloCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'closed': instance.closed,
      'desc': instance.desc,
      'idLabels': instance.idLabels,
      'idList': instance.idList,
      'name': instance.name,
      'isTemplate': instance.isTemplate,
      'idChecklists': instance.idChecklists,
      'idMembers': instance.idMembers,
      'attachments': instance.attachments,
    };
