import '../../domain/entities/entities.dart';

class ThumbnailModel {
  String? path;
  String? extension;

  ThumbnailModel({this.path, this.extension});

  factory ThumbnailModel.fromJson(Map<String, dynamic> json) => ThumbnailModel(
        path: json['path'],
        extension: json['extension'],
      );

  ThumbnailEntity toEntity() => ThumbnailEntity(
        path: path,
        extension: extension,
      );
}
