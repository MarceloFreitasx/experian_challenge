import 'package:experian_challenge/data/models/models.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Map<String, dynamic> json;
  late CharacterModel model;

  setUp(() {
    json = {
      "id": faker.randomGenerator.integer(1000000),
      "name": faker.person.name(),
      "description": faker.lorem.sentence(),
      "thumbnail": {
        "path": faker.image.loremPicsum(imageFormat: ImageFormat.jpg),
        "extension": "jpg",
      },
    };
  });

  group('CharacterModel', () {
    test('fromJson should create a valid CharacterModel from a JSON map', () {
      model = CharacterModel.fromJson(json);

      expect(model.id, json["id"]);
      expect(model.name, json["name"]);
      expect(model.description, json["description"]);
    });

    test('toEntity should convert an CharacterModel to an CharacterEntity', () {
      final entity = model.toEntity();

      expect(entity.id, model.id);
      expect(entity.name, model.name);
      expect(entity.description, model.description);
    });

    test('fromJson should handle empty values', () {
      final json = {
        "id": -1,
        "name": "",
        "description": "",
      };

      final model = CharacterModel.fromJson(json);

      expect(model.id, -1);
      expect(model.name, "");
      expect(model.description, "");
    });

    test('fromJson should handle null values', () {
      final json = {
        "id": null,
        "name": null,
        "description": null,
        "thumbnail": null,
      };

      final model = CharacterModel.fromJson(json);

      expect(model.id, null);
      expect(model.name, null);
      expect(model.description, null);
      expect(model.thumbnail, null);
    });

    test('fromJson should handle missing fields', () {
      final json = {
        "id": faker.randomGenerator.integer(1000000),
        "name": faker.person.name(),
      }; // Missing fields

      final model = CharacterModel.fromJson(json);

      expect(model.id, json["id"]);
      expect(model.description, null); // Should be null if missing
    });
  });
}
