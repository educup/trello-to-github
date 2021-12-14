// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trello_member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrelloMemberModel _$TrelloMemberModelFromJson(Map<String, dynamic> json) =>
    TrelloMemberModel(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$TrelloMemberModelToJson(TrelloMemberModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'username': instance.username,
    };
