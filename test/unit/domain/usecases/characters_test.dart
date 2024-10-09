import 'package:experian_challenge/domain/entities/entities.dart';
import 'package:experian_challenge/domain/usecases/usecases.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks.dart';

void main() {
  group('GetCharactersListUseCase', () {
    late GetCharactersListUseCase sut;

    setUp(() {
      sut = MockCharactersListUseCase();
    });

    test('should return a list of characters entity', () async {
      when(() => sut.execute(limit: 2)).thenAnswer(
        (_) async => [
          CharacterEntity(id: faker.randomGenerator.integer(1000000), name: faker.company.name()),
          CharacterEntity(id: faker.randomGenerator.integer(1000000), name: faker.company.name()),
        ],
      );

      final entity = await sut.execute(limit: 2);

      expect(entity, isA<List<CharacterEntity>>());
      expect(entity.length, 2);
    });

    test('should throw an exception when usecase throws an exception', () async {
      when(() => sut.execute(limit: 2)).thenThrow(Exception('Error fetching characters'));

      expect(() => sut.execute(limit: 2), throwsException);
    });
  });
}
