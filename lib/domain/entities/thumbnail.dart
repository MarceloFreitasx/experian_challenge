class ThumbnailEntity {
  String? path;
  String? extension;

  ThumbnailEntity({this.path, this.extension});

  String get url => '$path.$extension';
}
