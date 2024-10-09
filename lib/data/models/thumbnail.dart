class ThumbnailModel {
  String? path;
  String? extension;

  ThumbnailModel({this.path, this.extension});

  factory ThumbnailModel.fromJson(Map<String, dynamic> json) => ThumbnailModel(
        path: json['path'],
        extension: json['extension'],
      );
}
