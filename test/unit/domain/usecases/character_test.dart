import 'package:experian_challenge/domain/entities/entities.dart';
import 'package:experian_challenge/domain/usecases/usecases.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks.dart';

void main() {
  group('GetCharacterUseCase', () {
    late GetCharacterUseCase sut;
    late int id;

    setUp(() {
      id = faker.randomGenerator.integer(1000000);
      sut = MockCharacterUseCase();
    });

    test('should return a character entity', () async {
      when(() => sut.execute(id)).thenAnswer(
        (_) async => CharacterEntity(id: id, name: faker.company.name()),
      );

      final entity = await sut.execute(id);

      expect(entity, isA<CharacterEntity>());
      expect(entity.id, id);
    });

    test('should throw an exception when usecase throws an exception', () async {
      when(() => sut.execute(id)).thenThrow(Exception('Error fetching character'));

      expect(() => sut.execute(id), throwsException);
    });
  });
}
