import '../../domain/entities/entities.dart';
import 'models.dart';

class CharacterModel {
  int? id;
  String? name;
  String? description;
  ThumbnailModel? thumbnail;

  CharacterModel({
    this.id,
    this.name,
    this.description,
    this.thumbnail,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) => CharacterModel(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        thumbnail: json['thumbnail'] != null ? ThumbnailModel.fromJson(json['thumbnail']) : null,
      );

  CharacterEntity toEntity() => CharacterEntity(
        id: id,
        name: name,
        description: description,
        thumbnail: thumbnail?.toEntity(),
      );
}
