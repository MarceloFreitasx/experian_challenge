import 'entities.dart';

class CharacterEntity {
  int? id;
  String? name;
  String? description;
  ThumbnailEntity? thumbnail;

  CharacterEntity({
    this.id,
    this.name,
    this.description,
    this.thumbnail,
  });
}
