import '../entities/entities.dart';

abstract class CharactersRepository {
  Future<CharacterEntity> getCharacter(int id);
  Future<List<CharacterEntity>> getCharactersList({int? limit, int? offset});
}
