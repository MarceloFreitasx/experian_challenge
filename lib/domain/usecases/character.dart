import '../entities/entities.dart';

abstract class GetCharacterUseCase {
  Future<CharacterEntity> execute(int id);
}
