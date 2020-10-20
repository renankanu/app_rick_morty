// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) {
  return CharacterModel(
    info: json['info'] == null
        ? null
        : InfoModel.fromJson(json['info'] as Map<String, dynamic>),
    results: (json['results'] as List)
        ?.map((e) =>
            e == null ? null : ResultsModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CharacterModelToJson(CharacterModel instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };

InfoModel _$InfoModelFromJson(Map<String, dynamic> json) {
  return InfoModel(
    count: json['count'] as int,
    pages: json['pages'] as int,
    next: json['next'] as String,
    prev: json['prev'] as String,
  );
}

Map<String, dynamic> _$InfoModelToJson(InfoModel instance) => <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };

ResultsModel _$ResultsModelFromJson(Map<String, dynamic> json) {
  return ResultsModel(
    id: json['id'] as int,
    name: json['name'] as String,
    status: json['status'] as String,
    species: json['species'] as String,
    type: json['type'] as String,
    gender: json['gender'] as String,
    origin: json['origin'] == null
        ? null
        : OriginModel.fromJson(json['origin'] as Map<String, dynamic>),
    location: json['location'] == null
        ? null
        : OriginModel.fromJson(json['location'] as Map<String, dynamic>),
    image: json['image'] as String,
    episode: (json['episode'] as List)?.map((e) => e as String)?.toList(),
    url: json['url'] as String,
    created: json['created'] as String,
  );
}

Map<String, dynamic> _$ResultsModelToJson(ResultsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'origin': instance.origin,
      'location': instance.location,
      'image': instance.image,
      'episode': instance.episode,
      'url': instance.url,
      'created': instance.created,
    };

OriginModel _$OriginModelFromJson(Map<String, dynamic> json) {
  return OriginModel(
    name: json['name'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$OriginModelToJson(OriginModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
