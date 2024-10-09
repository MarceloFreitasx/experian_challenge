import 'package:experian_challenge/data/models/models.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Map<String, dynamic> json;
  late ThumbnailModel model;

  setUp(() {
    json = {
      "path": faker.image.loremPicsum(imageFormat: ImageFormat.jpg),
      "extension": "jpg",
    };
  });

  group('ThumbnailModel', () {
    test('fromJson should create a valid ThumbnailModel from a JSON map', () {
      model = ThumbnailModel.fromJson(json);

      expect(model.path, json["path"]);
      expect(model.extension, json["extension"]);
    });

    test('fromJson should handle empty values', () {
      final json = {
        "path": "",
        "extension": "",
      };

      final model = ThumbnailModel.fromJson(json);

      expect(model.path, "");
      expect(model.extension, "");
    });

    test('fromJson should handle null values', () {
      final json = {
        "path": null,
        "extension": null,
      };

      final model = ThumbnailModel.fromJson(json);

      expect(model.path, null);
      expect(model.extension, null);
    });

    test('fromJson should handle missing fields', () {
      final json = {
        "path": faker.image.loremPicsum(imageFormat: ImageFormat.jpg),
      }; // Missing fields

      final model = ThumbnailModel.fromJson(json);

      expect(model.path, json["path"]);
      expect(model.extension, null); // Should be null if missing
    });
  });
}
