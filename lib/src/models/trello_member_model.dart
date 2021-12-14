import 'package:json_annotation/json_annotation.dart';

part 'trello_member_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TrelloMemberModel {
  const TrelloMemberModel({
    required this.id,
    required this.fullName,
    required this.username,
  });

  final String id;
  final String fullName;
  final String username;

  TrelloMemberModel copyWith({
    String? id,
    String? fullName,
    String? username,
  }) =>
      TrelloMemberModel(
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
        username: username ?? this.username,
      );

  static TrelloMemberModel fromJson(Map<String, dynamic> json) =>
      _$TrelloMemberModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrelloMemberModelToJson(this);
}
