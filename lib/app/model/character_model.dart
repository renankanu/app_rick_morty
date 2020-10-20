import 'package:json_annotation/json_annotation.dart';

part 'character_model.g.dart';

@JsonSerializable()
class CharacterModel {
  InfoModel info;
  List<ResultsModel> results;

  CharacterModel({this.info, this.results});

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);
  Map<String, dynamic> toJson() => _$CharacterModelToJson(this);
}

@JsonSerializable()
class InfoModel {
  int count;
  int pages;
  String next;
  String prev;

  InfoModel({this.count, this.pages, this.next, this.prev});

  factory InfoModel.fromJson(Map<String, dynamic> json) =>
      _$InfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$InfoModelToJson(this);
}

@JsonSerializable()
class ResultsModel {
  int id;
  String name;
  String status;
  String species;
  String type;
  String gender;
  OriginModel origin;
  OriginModel location;
  String image;
  List<String> episode;
  String url;
  String created;

  ResultsModel(
      {this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.origin,
      this.location,
      this.image,
      this.episode,
      this.url,
      this.created});

  factory ResultsModel.fromJson(Map<String, dynamic> json) =>
      _$ResultsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ResultsModelToJson(this);
}

@JsonSerializable()
class OriginModel {
  String name;
  String url;

  OriginModel({this.name, this.url});

  factory OriginModel.fromJson(Map<String, dynamic> json) =>
      _$OriginModelFromJson(json);
  Map<String, dynamic> toJson() => _$OriginModelToJson(this);
}
