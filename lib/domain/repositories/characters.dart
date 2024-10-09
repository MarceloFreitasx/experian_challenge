import '../entities/entities.dart';
import '../params/params.dart';

abstract class CharactersRepository {
  Future<CharacterEntity> getCharacter(int id);
  Future<List<CharacterEntity>> getCharactersList(OptionsParams options);
}
